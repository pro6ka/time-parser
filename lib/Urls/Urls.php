<?php


namespace App\Urls;

use PDO;
use App\DB\DB;
use App\Images\Images;
use App\Scripts\Scripts;
use App\Styles\Styles;
use App\Links\Links;

class Urls
{
    private $db = null;
    private $tableName = 'urls';

    public function __construct(\App\DB\DB $db)
    {
        $this->db = $db;
        $this->images = new Images();
        $this->scripts = new Scripts();
        $this->styles = new Styles();
        $this->links = new Links();
    }

    public function add($data, $table)
    {
        return $this->db->add($table, $data);
    }

    public function addAssets($foreignId, $table, $assets)
    {
        foreach ($assets as $asset) {
            $asset['url'] = $foreignId;
            $this->db->add($table, $asset);
        }
    }

    /**
     * @param $filter
     * @return false|\PDOStatement
     */
    public function getRows($filter)
    {
        $select = array('id', 'url', 'date');
        return $this->db
            ->getRows($this->tableName, $select)
            ->join(
                '',
                $this->images->getTableName(),
                $this->images->getForeignKey(),
                $this->tableName . '.id',
                array('id', 'url', 'src', 'time', 'response')
            )
            ->join(
                '',
                $this->scripts->getTableName(),
                $this->scripts->getForeignKey(),
                $this->tableName . '.id',
                array('id', 'url', 'src', 'time', 'response')
            )->join(
                '',
                $this->styles->getTableName(),
                $this->styles->getForeignKey(),
                $this->tableName . '.id',
                array('id', 'url', 'src', 'time', 'response')
            )->join(
                '',
                $this->links->getTableName(),
                $this->links->getForeignKey(),
                $this->tableName . '.id',
                array('id', 'url', 'src', 'time', 'response')
            )
            ->select($filter);
    }

    /**
     * @return string
     */
    public function getTableName(): string
    {
        return $this->tableName;
    }
}
