<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\NekinfoSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="nekinfo-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'kpk') ?>

    <?= $form->field($model, 'kekv') ?>

    <?= $form->field($model, 'kpol') ?>

    <?= $form->field($model, 'r1') ?>

    <?php // echo $form->field($model, 'r2') ?>

    <?php // echo $form->field($model, 'r3') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
