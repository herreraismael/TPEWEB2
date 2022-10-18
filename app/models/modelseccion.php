<?php

class NewModelSeccion {

    private $db;

    public function __construct() {
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db-news;charset=utf8', 'root', '');
    }

    public function getAllSeccion(){
        $query = $this->db->prepare("SELECT * FROM seccion_db");
        $query->execute();

  
        $secciones = $query->fetchAll(PDO::FETCH_OBJ); 
        
        return $secciones;
    }

    public function deleteSeccionById_m($id){
        $query = $this->db->prepare('DELETE FROM seccion_db WHERE id = ?');
        $query->execute([$id]);
    }

    public function insert_seccion_m($nombre){
        $query = $this->db->prepare("INSERT INTO seccion_db (nombre) VALUES (?)");
        $query->execute([$nombre]);

        return $this->db->lastInsertId();
    }

    public function getSeccionById_m($id){
        $query = $this->db->prepare('SELECT * FROM seccion_db WHERE id = ?');
        $query->execute([$id]);
        $seccion = $query->fetch(PDO::FETCH_OBJ);
        return $seccion;
    }

    public function editSeccionById_m($nombreEdit, $id){
        
        $query = $this->db->prepare('UPDATE seccion_db SET nombre=? WHERE id =?');
        $query->execute([$nombreEdit, $id]);
        
    }
    

}
