<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Nekinfo;

/**
 * NekinfoSearch represents the model behind the search form about `app\models\Nekinfo`.
 */
class NekinfoSearch extends Nekinfo
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'kekv'], 'integer'],
            [['kpk', 'kpol'], 'safe'],
            [['r1', 'r2', 'r3'], 'number'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Nekinfo::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'kekv' => $this->kekv,
            'r1' => $this->r1,
            'r2' => $this->r2,
            'r3' => $this->r3,
        ]);

        $query->andFilterWhere(['like', 'kpk', $this->kpk])
            ->andFilterWhere(['like', 'kpol', $this->kpol]);

        return $dataProvider;
    }
}
