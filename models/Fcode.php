<?php
namespace app\models;

use Yii;
use yii\base\Model;
use yii\db\ActiveRecord;


class Fcode extends ActiveRecord
{
    const STATUS_INACTIVE = 0;
    const STATUS_ACTIVE = 1;
    
    
    /**
     * @return string название таблицы, сопоставленной с этим ActiveRecord-классом.
     */
    public static function fcode()
    {
        return '{{customer}}';
    }
    
    public function rules()
    {
        return [
            
            [['fcode', 'name', 'itog'], 'required'],
            
            
        ];
    }
    
}


