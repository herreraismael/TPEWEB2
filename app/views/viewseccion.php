<?php
require_once './libs/smarty-4.2.1/libs/Smarty.class.php';

class viewSeccion {
    private $smarty;

    public function __construct() {
        $this->smarty = new Smarty();
    }

    public function showFormSeccion_v($seccion){
        $this->smarty->assign('seccion', $seccion);
        $this->smarty->display('editSeccion.tpl');
    }

}
   
