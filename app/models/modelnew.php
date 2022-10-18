<?php

class NewModel {

    private $db;

    public function __construct() {
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db-news;charset=utf8', 'root', '');
    }

    
    public function getAllNews() {
        $query = $this->db->prepare("SELECT * FROM news_db");
        $query->execute();

  
        $news = $query->fetchAll(PDO::FETCH_OBJ); 
        
        return $news;
    }

  
    public function insertNew($titulo, $descripcion, $cuerpo, $seccion) {
        $query = $this->db->prepare("INSERT INTO news_db (titulo, descripcion, cuerpo, seccion) VALUES (?, ?, ?, ?)");
        $query->execute([$titulo, $descripcion, $cuerpo, $seccion]);

        return $this->db->lastInsertId();
    }


    function deleteNewById($id) {
        $query = $this->db->prepare('DELETE FROM news_db WHERE id = ?');
        $query->execute([$id]);
    }

    

    public function getNoticia($id){
        $query = $this->db->prepare('SELECT * FROM news_db WHERE id = ?');
        $query->execute([$id]);
        $noticia = $query->fetch(PDO::FETCH_OBJ);
        return $noticia;
    }

    public function getSecciones(){
        $query = $this->db->prepare('SELECT * FROM seccion_db');
        $query->execute();
        $secciones = $query->fetchAll(PDO::FETCH_OBJ);
        return $secciones;
    }

    public function editNewById($titulo, $descripcion, $cuerpo, $seccion, $id) {
        $query = $this->db->prepare('UPDATE news_db SET titulo=?, descripcion=?, cuerpo=?, seccion=? WHERE id =?');
        $query->execute([$titulo, $descripcion, $cuerpo, $seccion, $id]);
        
    }
 public function getNoticiasXSecciones($id) { 
        $query = $this->db->prepare('SELECT * FROM news_db WHERE seccion=?');
        $query->execute([$id]);
        $noticias = $query->fetchAll(PDO::FETCH_OBJ);
        return $noticias;
    }
   

 }