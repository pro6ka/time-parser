<?php


namespace App\DB;

use PDO;

/**
 * Class DB
 * @package App\DB
 */
class DB
{
    private $host = '';
    private $db = '';
    private $user = '';
    private $pass = '';
    private $opts = [
        PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        PDO::ATTR_EMULATE_PREPARES   => false,
    ];
    private $charset = 'utf8';
    private static $instance = null;
    /** @var PDO null  */
    private $pdo = null;
    private $where = '';

    private function __construct()
    {
    }

    public static function connection($host, $db, $user, $pass, $opts = [], $charset = 'utf8')
    {
        if (! self::getInstance()->pdo) {
            self::getInstance()->pdo = self::getInstance()
                ->setConnection($host, $db, $user, $pass, $opts, $charset);
        }
        return self::getInstance();

    }

    private function setConnection($host, $db, $user, $pass, $opts, $charset = 'utf8')
    {
        $options = $opts ? $opts : $this->opts;
        $dsn = "mysql:host=$host;dbname=$db;charset=$charset";
        return new PDO($dsn, $user, $pass, $options);
    }

    /**
     * @return DB|null
     */
    public static function getInstance() {
        if (! self::$instance) {
            self::$instance = new self();
        }
        return self::$instance;
    }

    public function getRows($table, $select)
    {
        $sqlPrepared = $this->buildQuery($table, $select);
        $this->stmt = $this->pdo->prepare($sqlPrepared);
        return $this;
    }

    public function join($type, $table, $foreign, $extForeign, $select = array())
    {
        /** @var \PDOStatement $stmt */
        $stmt = $this->stmt;
        $joinSelect = '';
        if (is_array($select)) {
            $joinSelect = $this->prepareSelect($select, $table);
        }
        preg_match('~SELECT\s(.*)\sFROM~', $stmt->queryString, $matchSelect);
        $newSelect = $matchSelect[1] . ', ' . $joinSelect;
        $queryString = preg_replace(
            '~SELECT\s(.*)\sFROM~',
            'SELECT ' . $newSelect . ' FROM',
            $stmt->queryString
        );
        $query = $queryString . ' '
            . strtoupper($type) . ' JOIN ' . $table
            . ' ON ' . $table . '.' . $foreign . '=' . $extForeign;
//        $this->where = $this->prepareWhere($query, $table, $foreign, $extForeign);
        $this->stmt = $this->pdo->prepare($query);
        return $this;
    }

    public function setFilter($filter)
    {
        $query = $this->stmt->queryString;
        $where = '';
        foreach ($filter as $filterKey => $filterItem) {
            $where .= $filterKey . '=:' . $filterKey;
        }
        $query .= ' WHERE ' . $where;
        $this->stmt = $this->pdo->prepare($query);
        return $query;
    }

    public function select($filter)
    {
        if (! $filter) {
            $query = $this->stmt->queryString . $this->where;
            $query .= ' ORDER BY urls.id DESC';
            return $this->pdo->query($query);
        } else {
            $query = $this->setFilter($filter);
            /** @var \PDOStatement $stmt */
            $stmt = $this->stmt;
            $result = $stmt->execute($filter);
            if ($result) {
                return $stmt;
            }
        }
    }

    public function add($table, $data)
    {
        $sql = "INSERT INTO $table SET " . $this->pdoSet($data);
        $stm = $this->pdo->prepare($sql);
        $result = $stm->execute($data);
        if ($result) {
            return $this->pdo->lastInsertId();
        } else {
            echo $stm->errorInfo();
            return false;
        }
    }

    private function pdoSet($data)
    {
        $set = '';
        foreach ($data as $key => $field) {
            if (isset($data[$key])) {
                $set .= '`' . str_replace('`', '``', $key) . '`' . "=:$key, ";
            }
        }
        return substr($set, 0, -2);
    }

    private function prepareWhere($queryString, $table, $foreign, $extForeign)
    {
        if ($this->where) {
            $this->where .= ' AND ' . $table . '.' . $foreign . '=' . $extForeign;
        } else {
            $this->where = ' WHERE ';
            $this->where .= $table . '.' . $foreign . '=' . $extForeign;
        }
        return $this->where;

    }

    private function prepareSelect($select, $table)
    {
        if (is_array($select)) {
            $selectItems = '';
            foreach ($select as $selectItem) {
                $selectItems .= $table . '.' . $selectItem . ' AS ' . $table . '_' . $selectItem . ', ';
            }
            return preg_replace('~,\s$~', '', $selectItems);
        } else {
            return '*';
        }

    }

    private function buildQuery($table, $select)
    {
        $toSelect = $this->prepareSelect($select, $table);
        return "SELECT $toSelect FROM $table";
    }

    /**
     * @return string
     */
    public function getHost()
    {
        return $this->host;
    }

    /**
     * @param string $host
     */
    public function setHost($host)
    {
        $this->host = $host;
    }
    /**
     * @return string
     */
    public function getDb()
    {
        return $this->db;
    }

    /**
     * @param string $db
     */
    public function setDb($db)
    {
        $this->db = $db;
    }

    /**
     * @return string
     */
    public function getUser()
    {
        return $this->user;
    }

    /**
     * @param string $user
     */
    public function setUser($user)
    {
        $this->user = $user;
    }

    /**
     * @return string
     */
    public function getPass()
    {
        return $this->pass;
    }

    /**
     * @param string $pass
     */
    public function setPass($pass)
    {
        $this->pass = $pass;
    }

    /**
     * @return string
     */
    public function getCharset()
    {
        return $this->charset;
    }

    /**
     * @param string $charset
     */
    public function setCharset($charset)
    {
        $this->charset = $charset;
    }

    private function __clone() {}
    private function __wakeup() {}
}
