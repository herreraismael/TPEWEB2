<?php
require_once './libs/smarty-4.2.1/libs/Smarty.class.php';
require_once './app/helper/authhelper.php';

class NewView {
    private $smarty;

    public function __construct() {
        $this->smarty = new Smarty(); 
    }

    function showNews($news, $secciones) {

        $this->smarty->assign('noticias', $news);
        $this->smarty->assign('secciones', $secciones);
        $this->smarty->display('body.tpl');
    }

    function showNoticia($noticia){

         $this->smarty->assign('noticia', $noticia);

         $this->smarty->display('view_noticia.tpl');
    }

    function showSecciones($secciones){
        $this->smarty->assign('secciones', $secciones);
       
        $this->smarty->display('secciones.tpl');
    }

    function showForm($noticia, $secciones){
        $this->smarty->assign('noticia', $noticia);
        $this->smarty->assign('secciones', $secciones);
        $this->smarty->display('edit.tpl');
        
    }

    function showNoticiaXseccion($noticias){
        $this->smarty->assign('noticias', $noticias);
        $this->smarty->display('noticiaXseccion.tpl');
    }
}