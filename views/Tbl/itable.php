<?php
use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

 echo Yii::$app->session->getFlash('success');

$form = ActiveForm::begin(['action'=>['tbl/update']]);

foreach ($dataProvider as $index => $setting) {
    //echo $form->field($setting, "id")->label("id");
    echo $form->field($setting, "[$index]kmb")->label("Код бюджета");
    echo $form->field($setting, "[$index]fcode")->label("КПК");
    echo $form->field($setting, "[$index]kekv")->label("КЕКВ");
    echo $form->field($setting, "[$index]m1")->label("1");
}
echo Html::submitButton('Сохранить', ['class' => 'btn btn-primary']);

ActiveForm::end();