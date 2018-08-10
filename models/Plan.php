<?php
namespace app\models;

use Yii;
use yii\base\Model;
use yii\db\ActiveRecord;

use yii\helpers\ArrayHelper;

class Plan extends ActiveRecord
{
    const STATUS_INACTIVE = 0;
    const STATUS_ACTIVE = 1;
    
    
    /**
     * @return string �������� �������, �������������� � ���� ActiveRecord-�������.
     */
    public static function plan()
    {
        return '{{customer}}';
    }
    
    public function rules()
    {
        return [
            
            [['kmb', 'fcode', 'kekv', 'user_id'], 'required'],
            [['m1','m2', 'm3','m4','m5','m6'],'default','value'=>0],
            
        ];
    }
    
}


