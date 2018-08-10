<?php

namespace app\controllers;

use Yii;
use yii\base\Model;
use yii\web\Controller;
use app\models\Plan;
//use yii\grid\GridView;
//use yii\data\ActiveDataProvider;


class TblController extends Controller
{
    
    public function actionIndex()
    {
                    
        $dataProvider =  Plan::find()->indexBy('id')->all();
        return $this->render('itable', ['dataProvider' => $dataProvider]);   
    
    }
    
    public function actionUpdate()
    {
        $settings = Plan::find()->indexBy('id')->all();
        
        
        $count = 0;
        if (Model::loadMultiple($settings, Yii::$app->request->post()) && Model::validateMultiple($settings)) {
            foreach ($settings as $setting) {
                
                if ($setting->save(false)){
                    $count++;
                };
            }
            Yii::$app->session->setFlash('success', "Processed {$count} records successfully.");
            return $this->redirect(['tbl/index']);
            
        }

      //  return $this->render('itable', ['dataProvider' => $settings]);
    }
    
}
?>