<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\NekinfoSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Nekinfos';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="nekinfo-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Nekinfo', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'kpk',
            'kekv',
            'kpol',
            'r1',
            // 'r2',
            // 'r3',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
