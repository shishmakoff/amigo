<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "isi_tabl".
 *
 * @property integer $id
 * @property string $pole
 */
class IsiTabl extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'isi_tabl';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['pole'], 'required'],
            [['pole'], 'string'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'pole' => 'Pole',
        ];
    }
}
