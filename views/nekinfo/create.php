<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Nekinfo */

$this->title = 'Create Nekinfo';
$this->params['breadcrumbs'][] = ['label' => 'Nekinfos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="nekinfo-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
