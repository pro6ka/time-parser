<?php


namespace App\Images;


class Images
{
    private $tableName = 'images';
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
