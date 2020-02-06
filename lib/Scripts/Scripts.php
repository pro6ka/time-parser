<?php


namespace App\Scripts;


class Scripts
{
    private $tableName = 'scripts';
    private $foreignKey = 'url';

    /**
     * @return string
     */
    public function getForeignKey(): string
    {
        return $this->foreignKey;
    }

    /**
     * @return string
     */
    public function getTableName(): string
    {
        return $this->tableName;
    }
}
