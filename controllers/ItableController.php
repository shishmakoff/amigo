<?php

namespace app\controllers;

use Yii;
use yii\base\Model;
use app\models\Post;
use yii\web\Controller;
use app\models\Plan;
//use yii\grid\GridView;
use kartik\grid\GridView; 
use yii\data\ActiveDataProvider;


class ItableController extends Controller
{
    
    public function actionIndex()
    {
        $dataProvider = new ActiveDataProvider([
            'query' => Plan::find()->indexBy('id'),
            
        ]);
        return $this->render('gridTable', ['dataProvider' => $dataProvider]);   
    
    }
    
    
    public function actionAddNew()
    {
            
        $dataProvider = new  Plan;
        $dataProvider->kmb = '0400000000';
        $dataProvider->fcode = '0110';
        $dataProvider->kekv = '2111';
        $dataProvider->user_id =  Yii::$app->user->id;
        $dataProvider->save();
        
        return $this->redirect(['itable/index']);   
    
    }
    
    
    public function actionUpdate()
    {
        
       // print_r (Yii::$app->request->post());
        $settings = Plan::find()->indexBy('id')->all();

        //$set = Plan::findOne(20);
        //var_dump(yii::$app->user->can('РедСвой',['post'=>$set]));

        if (Model::loadMultiple($settings, Yii::$app->request->post()) && Model::validateMultiple($settings)) {
            foreach ($settings as $setting) {
                //echo $setting->fcode,"<br>";
                if (Yii::$app->user->can('РедСвой',['post'=>$setting])) {
                    $setting->save(false);
                }
                
            }
            
            return $this->redirect(['itable/index']);
            
        }
        
    }
    
    
    public function actionDelete()
    {
        
        $id = Yii::$app->request->get('id');
        $record = Plan::findOne($id);
    
        
        if ($record !==null) {
            $record->delete(false);
            }
            
        return $this->redirect(['itable/index']);
            
        
        
    }
       
}
?>