<?php

require "config.php";

class Quiz {
    // Database credentials
    private $host     = HOST;
    private $username = USER;
    private $password = PASS;
    private $database = DATABASE;
    public  $db;

    public function __construct(){
        if(!isset($this->db)){
            // Connect to the database    
            try {
                $this->db = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->database, $this->username, $this->password);
            }catch (PDOException $e){
                $error = $e->getMessage();
                echo $error;
            }
        }
    }

    public function get_questions() {
        $sql = "SELECT * FROM `vraagen` WHERE is_enabled = '1' ";
        $statement = $this->db->prepare($sql);
        $statement->execute();
        return $statement->fetchAll(PDO::FETCH_OBJ);
    }

    public function get_all_options(){
        $sql = "SELECT * FROM `quiz_options` WHERE is_enabled = '1' ";
        $statement = $this->db->prepare($sql);
        $statement->execute();
        return $statement->fetchAll(PDO::FETCH_OBJ);
    }

    public function quiz_options($qid) {
        $sql = "SELECT * FROM `quiz_options` WHERE qid = :id AND is_enabled = '1'";
        $statement = $this->db->prepare($sql);

        $statement->bindValue(":id", $qid);

        $statement->execute();

        return $statement->fetchAll(PDO::FETCH_OBJ);
    } 

    public function answer($qid) {
        $sql = "SELECT * FROM `quiz_answer` WHERE qid = :id ";
        $statement = $this->db->prepare($sql);

        $statement->bindValue(":id", $qid);
        
        $statement->execute();

        return $statement->fetch(PDO::FETCH_OBJ);
    } 
    public function get_all_answers() {
        $sql = "SELECT * FROM `quiz_answer`";
        $statement = $this->db->prepare($sql);
        $statement->execute();
        return $statement->fetchAll(PDO::FETCH_OBJ);
    }
}
