<?php
require_once './app/models/modelseccion.php';
require_once './app/helper/authhelper.php';
require_once './app/views/viewseccion.php';


class SeccionController {
    private $model_seccion;
    private $view_seccion;

    public function __construct() {

        $this->model_seccion = new NewModelSeccion();
        $this->view_seccion = new viewSeccion();
    }
    
    public function deleteSeccionByid_c($id){
        $this->model_seccion->deleteSeccionById_m($id);
        header("Location: " . BASE_URL . "secciones"); 
    }

    public function addSeccion_c(){
        $nombre = $_POST['nombre'];
       
        $this->model_seccion->insert_seccion_m($nombre);

        header("Location: " . BASE_URL . "secciones"); 
    }

    public function showFormularioEditSeccion_c($id){
        $seccion = $this->model_seccion->getSeccionById_m($id);
        $this->view_seccion->showFormSeccion_v($seccion);
    }

    public function edit_c($id){
        $id = $_POST['id'];
        $nombreEdit = $_POST['nombre'];

        $this->model_seccion->editSeccionById_m($nombreEdit, $id);
        header("Location: " . BASE_URL . "secciones");
    }
}