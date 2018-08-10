<?php
//use yii\grid\GridView; 

use yii\helpers\Html;
use kartik\grid\GridView;
//use kartik\builder\Form;
use kartik\builder\TabularForm;
use yii\helpers\Url;
use yii\helpers\ArrayHelper;
use app\models\Fcode;
//use yii\widgets\ActiveForm;


$createUrl = Url::to(['itable/add-new']);

$form = \kartik\form\ActiveForm::begin(['action'=>['itable/update']]);
echo TabularForm::widget([
    'form' => $form,
    'dataProvider' => $dataProvider,
    'checkboxColumn'=>false,
    'actionColumn'=>['updateOptions' => ['style' => 'display:none'],'viewOptions' => ['style' => 'display:none']],
    'attributes' => [
        'id' => ['type' => TabularForm::INPUT_STATIC],
        'kmb' => ['type' => TabularForm::INPUT_TEXT, 'label' =>'код бюджета'],
        'fcode' => ['type' => TabularForm::INPUT_DROPDOWN_LIST, 
            'items'=>ArrayHelper::map(Fcode::find()->asArray()->all(), 'fcode', 'name'),
            'label' =>'КПК',
            'columnOptions'=>['width'=>'185px']],
        'kekv' => ['type' => TabularForm::INPUT_TEXT, 'label' =>'КЕКВ'],
        'm1' => ['type' => TabularForm::INPUT_TEXT],
        'm2' => ['type' => TabularForm::INPUT_TEXT],
        'm3' => ['type' => TabularForm::INPUT_TEXT],
        'm4' => ['type' => TabularForm::INPUT_TEXT],
        'm5' => ['type' => TabularForm::INPUT_TEXT],
        'm6' => ['type' => TabularForm::INPUT_TEXT],
           
    ],
    
    'gridSettings' => [
        'condensed' => true,
        'floatHeader' => true,
        'panel' => [
            'heading' => '<h3 class="panel-title"><i class="glyphicon glyphicon-book"></i> Планы</h3>',
            'condensed'=>true,
            'type' => GridView::TYPE_PRIMARY,
            'after'=> 
                Html::a(
                    '<i class="glyphicon glyphicon-plus"></i> Add New', 
                    $createUrl, 
                    ['class'=>'btn btn-success']
                ) . '&nbsp;' . 
                Html::submitButton(
                    '<i class="glyphicon glyphicon-floppy-disk"></i> Сохранить', 
                    ['class'=>'btn btn-primary']
                )
        ]
    ]     
]); 
\kartik\form\ActiveForm::end(); 
