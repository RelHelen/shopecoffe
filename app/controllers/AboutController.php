<?php

namespace app\controllers;

use ishop\Cache;

class AboutController extends AppController {

    public function indexAction(){
        // echo __METHOD__;
       //  debug( __METHOD__,true);
       // debug($this->route);
       // debug($this->controller);         
       
        $this->setMeta('Cтраница о нас', 'Cтраница о нас', 'Cтраница о нас');
       // $this->set(compact('brands', 'hits','sale'));
    }

}