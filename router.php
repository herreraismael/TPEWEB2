<?php
require_once './app/controllers/new.controller.php';
require_once './app/controllers/authcontroller.php';
require_once './app/controllers/seccioncontroller.php';

define('BASE_URL', '//' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/');

$action = 'home';
if (!empty($_GET['action'])) {
    $action = $_GET['action'];
}

$params = explode('/', $action);

$newController = new NewController();
$seccionController = new SeccionController();


switch ($params[0]) {
    case 'home':
        $newController->showNews();
        break;
    case 'login':
        $authController = new AuthController();
        $authController->showFormLogin();
        break;
    case 'validate':
        $authController = new AuthController();
        $authController->validateUser();
        break;
    case 'logout':
        $authController = new AuthController();
        $authController->logout();
        break;
    case 'noticia':
        $newController->showNoticia($params[1]);
        break;
    case 'add':
        $newController->addNew();
        break;
    case 'delete_new':
        $id = $params[1];
        $newController->deleteNew($id);
        break;
    case 'secciones':
        $newController->showSecciones();
        break;
    case 'edit':
        $id = $params[1];
        $newController->editNew($id);
        break;
    case 'edit_form':
        $id = $params[1];
        $newController->showFormEdit($id);
        break;
    case 'seccion':
        $id = $params[1];
        $newController->showNoticiaXSeccion($id);
        break;
    case 'delete_seccion':
        $id = $params[1];
        $seccionController->deleteSeccionByid_c($id);
        break;
    case 'editForm_seccion':
        $id = $params[1];
        $seccionController->showFormularioEditSeccion_c($id);
        break;
    case 'addSeccion':
        $seccionController->addSeccion_c();
        break;
    case 'editSeccion':
        $id = $params[1];
        $seccionController->edit_c($id);
        break;
    default:
        echo ('404 Page not found');
        break;
}
