<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;



  $form = ActiveForm::begin();

  foreach ($settings as $index => $setting) {
      echo $form->field($setting, "[$index]value")->label($setting->name);
  }

  ActiveForm::end();
 

