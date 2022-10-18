<?php
require_once './app/models/modelnew.php';
require_once './app/views/new.view.php';
require_once './app/models/modelseccion.php';
require_once './app/helper/authhelper.php';


class NewController {
    private $model_new;
    private $view;
    private $model_seccion;

    public function __construct() {
        $this->model_new = new NewModel();
        $this->view = new NewView();
        $this->model_seccion = new NewModelSeccion();
    }

    public function showNews() {
        session_start();
        $news = $this->model_new->getAllNews();
        $seccion = $this->model_seccion->getAllSeccion();
        $this->view->showNews($news, $seccion);
        
        
    }

    
    function addNew() {
        // TODO: validar entrada de datos

        $titulo = $_POST['titulo'];
        $descripcion = $_POST['descripcion'];
        $cuerpo = $_POST['cuerpo'];
        $seccion = $_POST['seccion'];

       $this->model_new->insertNew($titulo, $descripcion, $cuerpo, $seccion);

        header("Location: " . BASE_URL); 
    }
   
    function deleteNew($id) {
        $this->model_new->deleteNewById($id);
        header("Location: " . BASE_URL);
    }

    function editNew($id) {
        $id = $_POST['id'];
        $tituloEditado = $_POST['titulo'];
        $descripcionEditado = $_POST['descripcion'];
        $cuerpoEditado = $_POST['cuerpo'];
        $seccionEditado = $_POST['seccion'];


        $this->model_new->editNewById($tituloEditado, $descripcionEditado, $cuerpoEditado, $seccionEditado, $id);
        header("Location: " . BASE_URL);
    }

    function showNoticia($id){
        $noticia = $this->model_new->getNoticia($id);
        $this->view->showNoticia($noticia);
    }

    function showSecciones(){
        session_start();
        $secciones = $this->model_new->getSecciones();
        
        $this->view->showSecciones($secciones);
    }

    function showFormEdit($id){
        $secciones = $this->model_new->getSecciones();
        $noticia = $this->model_new->getNoticia($id);
        $this->view->showForm($noticia, $secciones);
        
    }

    function showNoticiaXSeccion($id){
        $noticias = $this->model_new->getNoticiasXSecciones($id);
        
        $this->view->showNoticiaXseccion($noticias);

    }

}
