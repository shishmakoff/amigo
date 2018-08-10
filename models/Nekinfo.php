<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "nekinfo".
 *
 * @property integer $id
 * @property string $kpk
 * @property integer $kekv
 * @property string $kpol
 * @property double $r1
 * @property double $r2
 * @property double $r3
 */
class Nekinfo extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'nekinfo';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['kpk', 'kekv', 'kpol', 'r1', 'r2', 'r3'], 'required'],
            [['kekv'], 'integer'],
            [['r1', 'r2', 'r3'], 'number'],
            [['kpk', 'kpol'], 'string', 'max' => 10],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'kpk' => 'Kpk',
            'kekv' => 'Kekv',
            'kpol' => 'Kpol',
            'r1' => 'R1',
            'r2' => 'R2',
            'r3' => 'R3',
        ];
    }
}
