<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Nekinfo */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="nekinfo-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'kpk')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'kekv')->textInput() ?>

    <?= $form->field($model, 'kpol')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'r1')->textInput() ?>

    <?= $form->field($model, 'r2')->textInput() ?>

    <?= $form->field($model, 'r3')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
