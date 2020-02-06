<?php


namespace App\Links;


class Links
{
    private $tableName = 'links';
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
