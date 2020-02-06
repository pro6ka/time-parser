<?php


namespace App;

use App\DB\DB;
use Dotenv\Dotenv;
use App\Parser\Parser;
use PDO;
use PDOStatement;

/**
 * Class AppClass
 * @package App
 */
class AppClass
{
    /** @var PDO $db */
    private $db;
    /** @var Urls\Urls urls */
    private $urls;
    /** @var Parser */
    private $parser;

    /**
     * start function
     */
    public function load()
    {
        $dotenv = Dotenv::createImmutable('../');
        $dotenv->load();
        $this->db = DB::connection(
            getenv('DB_SERVER'),
            getenv('DB_NAME'),
            getenv('DB_LOGIN'),
            getenv('DB_PASS')
        );
        $this->urls = new Urls\Urls($this->db);
        $this->parser = new Parser($_POST, $this->db);
    }

    /**
     * return rows of content
     * @param array $filter
     * @return array
     */
    public function getTable($filter = array())
    {
        $rows = array();
        $urlsId = array();
        $imagesId = array();
        $scriptsId = array();
        $stylesId = array();
        $linksId = array();
        $i = 0;
        foreach ($this->urls->getRows($filter)->fetchAll() as $row) {
            if (! in_array($row['urls_id'], $urlsId)) {
                $rows[$row['urls_id']] = array(
                    'url' => $row['urls_url'],
                    'date' => $row['urls_date'],
                    'images' => array($this->setImages($row),),
                    'scripts' => array($this->setScripts($row),),
                    'styles' => array($this->setStyles($row),),
                );
                $urlsId[] = $row['urls_id'];
                $imagesId[] = $row['images_id'];
                $scriptsId[] = $row['scripts_id'];
                $stylesId[] = $row['styles_id'];
                $linksId[] = $row['links_id'];
            } else {
                if (! in_array($row['images_id'], $imagesId)) {
                    $rows[$row['urls_id']]['images'][] = array(
                        'id' => $row['images_id'],
                        'src' => $row['images_src'],
                        'time' => $row['images_time'],
                        'status' => $row['images_response'],
                    );
                    $imagesId[] = $row['images_id'];
                }
                if (! in_array($row['links_id'], $linksId)) {
                    $rows[$row['urls_id']]['links'][] = array(
                        'id' => $row['links_id'],
                        'src' => $row['links_src'],
                        'time' => $row['links_time'],
                        'status' => $row['links_response'],
                    );
                    $linksId[] = $row['links_id'];
                }
                if (! in_array($row['scripts_id'], $scriptsId)) {
                    $rows[$row['urls_id']]['scripts'][] = array(
                        'id' => $row['scripts_id'],
                        'src' => $row['scripts_src'],
                        'time' => $row['scripts_time'],
                        'status' => $row['scripts_response'],
                    );
                    $scriptsId[] = $row['scripts_id'];
                }
                if (! in_array($row['styles_id'], $stylesId)) {
                    $rows[$row['urls_id']]['styles'][] = array(
                        'id' => $row['styles_id'],
                        'src' => $row['styles_src'],
                        'time' => $row['styles_time'],
                        'status' => $row['styles_response'],
                    );
                    $stylesId[] = $row['styles_id'];
                }
            }
            $i++;
        }
        return $rows;
    }

    private function setStyles($row)
    {
        $result = array(
            'id' => $row['styles_id'],
            'src' => $row['styles_src'],
            'time' => $row['styles_time'],
            'status' => $row['styles_response'],
        );
        return $result;
    }

    private function setScripts($row)
    {
        $result = array(
            'id' => $row['scripts_id'],
            'src' => $row['scripts_src'],
            'time' => $row['scripts_time'],
            'status' => $row['scripts_response'],
        );
        return $result;
    }

    private function setImages($row)
    {
        $result = array(
            'id' => $row['images_id'],
            'src' => $row['images_src'],
            'time' => $row['images_time'],
            'status' => $row['images_response'],
        );
        return $result;
    }

    /*
     * return is request post
     */
    public function isPost()
    {
        return count($_POST) ? true : false;
    }

    /**
     * @param $data
     * @return mixed
     */
    public function __get($data)
    {
        return $this->$data;
    }

    /**
     * @return null|PDO
     */
    public function getDb()
    {
        return $this->db;
    }
}
