<?php


namespace App\Styles;


class Styles
{
    private $tableName = 'styles';
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
