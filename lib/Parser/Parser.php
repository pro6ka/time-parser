<?php


namespace App\Parser;

use App\Urls\Urls;
use \GuzzleHttp\Client;
use GuzzleHttp\Psr7;
use GuzzleHttp\Exception\RequestException;

class Parser
{
    private $host = '';
    private $url = '';
    private $urls;

    public function __construct($post, \App\DB\DB $db)
    {
        if (isset($post['url']) && strlen($post['url'])) {
            $url = htmlspecialchars(strip_tags(trim($post['url'])));
            if (!filter_var($url, FILTER_VALIDATE_URL)) {
                echo 'No valid url value';
                return;
            }
            preg_match('~^http(s)?:\/\/([^\/]+)~', $url, $hostMatch);
            $this->host = $hostMatch[0];
            $this->url = $url;
            $this->httpClient = new Client();
            $this->urls = new Urls($db);
        }
    }

    public function parse()
    {
        if ($this->url) {
            try {
                $response = $this->httpClient->request('GET', $this->url);
            } catch (RequestException $e) {
                echo Psr7\str($e->getRequest());
            }
            if ($response->getStatusCode() == 200) {
                $content = $response->getBody()->getContents();
                $insertId = $this->urls->add(
                    array('url' => $this->url, 'date' => date('Y-m-d H:i:s')),
                    $this->urls->getTableName()
                );
            }
            if ($insertId) {
                $images = $this->checkResponse(
                    $this->getAssets($content, 'img', 'src')
                );
                if ($images) {
                    $this->urls->addAssets($insertId, $this->urls->images->getTableName(), $images);
                }

                $scripts = $this->checkResponse(
                    $this->getAssets($content, 'script', 'src')
                );
                if ($scripts) {
                    $this->urls->addAssets($insertId, $this->urls->scripts->getTableName(), $scripts);
                }

                $links = $this->checkResponse(
                    $this->getLinks($content, 'a', 'href')
                );
                if ($links) {
                    $this->urls->addAssets($insertId, $this->urls->links->getTableName(), $links);
                }

                $styles = $this->checkResponse(
                    $this->getStyles($content, 'link', 'href')
                );
                if ($styles) {
                    $this->urls->addAssets($insertId, $this->urls->styles->getTableName(), $styles);
                }
            }
        } else {
            echo 'Empty url value';
            return;
        }
    }

    /**
     * @param array $assets
     * @return array
     */
    private function checkResponse($assets)
    {
        $result = array();
        foreach ($assets as $asset) {
            $client = new Client();
            if (preg_match('~^\/{2}~', $asset)) {
                $url = preg_replace('~^\/{2}~', '', $asset);
            } elseif (preg_match('~^\/{1}~', $asset)) {
                $url = $this->host . $asset;
            } elseif (preg_match('~^http~', $asset)) {
                $url = $asset;
            } else {
                $url = $this->url . $asset;
            }
            $time_begin = microtime(true);
            try {
                $response = $this->httpClient->request('GET', $url);
            } catch (RequestException $e) {
                $finish_time = microtime(true) - $time_begin;
                $result[] = array(
                    'time' => $finish_time,
                    'src' => $asset,
                    'response' => $e->getCode() . ' ' . $e->getResponse()->getReasonPhrase(),
                );
                continue;
            }
            $finish_time = microtime(true) - $time_begin;
            $result[] = array(
                'time' => $finish_time,
                'src' => $asset,
                'response' => $response->getStatusCode() . ' ' . $response->getReasonPhrase(),
            );
        }
        return $result;
    }

    /**
     * @param string $content
     * @param string $tag
     * @param string $attr
     * @return array
     */
    private function getLinks($content, $tag, $attr)
    {
        $links = array();
        $linkAssets = $this->getAssets($content, $tag, $attr);
        foreach ($linkAssets as $asset) {
            if (preg_match('~^http(s)?:\/\/~', $asset)) {
                $links[] = preg_replace('~' . $this->host . '~', '', $asset);
            }
        }
        return $links;
    }

    /**
     * @param string $content
     * @param string $tag
     * @param string $attr
     * @return array
     */
    private function getStyles($content, $tag, $attr)
    {
        $styles = array();
        $linkAssets = $this->getAssets($content, $tag, $attr);
        foreach ($linkAssets as $asset) {
            if (preg_match('~\.css~', $asset)) {
                $styles[] = $asset;
            }
        }
        return $styles;
    }

    /**
     * @param string $content
     * @param string $tag
     * @param string $attr
     * @return array|mixed
     */
    private function getAssets($content, $tag, $attr)
    {
        $assets = array();
        $pattern = '~<' . $tag . '(.*)' . $attr . '="([^"]+)"~';
        if (preg_match_all($pattern, $content, $matchAssets)) {
            $assets = $matchAssets[2];
        }
        return $assets;
    }
}
