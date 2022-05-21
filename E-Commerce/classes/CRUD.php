<?php 

include 'Database.php';

class CRUD {
    private $mysqli;

    public function __construct() {
        $db = Database::getInstance();
        $this->mysqli = $db->getConnection();
    }

    public function create($table, $data) {
        $sql = "INSERT INTO `" .$table ."` SET ";

        if(count($data)) {
            $counter = 1;

            foreach($data as $column => $value) {
                if($counter < count($data))
                    $sql .= '`'.$column.'` = "'.$value.'", ';
                else  
                    $sql .= '`'.$column.'` = "'.$value.'"';

                $counter++;
            }
        }

        if($this->mysqli->query($sql))
            return true;
        else 
            return false;
    }

    public function read($table, $conditions = [], $limit = null) {
        $sql = "SELECT * FROM `" .$table ."`";
        $where = '';
        $results = [];

        if(count($conditions)) {
            $where .= 'WHERE';
            foreach($conditions as $column => $value) {
                $where .= '`'.$column.'` = "'.$value.'"';
            }

            $sql .= $where;
        }

        if(!is_null($limit)) {
            $sql .= ' LIMIT ' . $limit;
        }

        if($query = $this->mysqli->query($sql)) {
            if($query->num_rows > 0) {
                while($row = $query->fetch_assoc()) {
                    $results[] = $row;
                }
            } 

            return $results;
        } else { 
            return $this->mysqli->error;
        }
    }

    public function update($table, $data, $conditions = []) {
        $sql = "UPDATE `" .$table ."` SET ";
        $where = '';

        if(count($data)) {
            $counter = 1;

            foreach($data as $column => $value) {
                if($counter < count($data))
                    $sql .= '`'.$column.'` = "'.$value.'", ';
                else  
                    $sql .= '`'.$column.'` = "'.$value.'"';

                $counter++;
            }
        }

        if(count($conditions)) {
            $where .= ' WHERE ';
            foreach($conditions as $column => $value) {
                $where .= '`'.$column.'` = "'.$value.'"';
            }

            $sql .= $where;
        }

        // return $sql;

        if($this->mysqli->query($sql))
            return true;
        else 
            return false;
    }

    public function delete($table, $conditions = []) {
        $sql = "DELETE FROM `" .$table ."` ";
        $where = '';

        if(count($conditions)) {
            $where .= 'WHERE';
            foreach($conditions as $column => $value) {
                $where .= '`'.$column.'` = "'.$value.'"';
            }

            $sql .= $where;
        }

        if($this->mysqli->query($sql))
            return true;
        else 
            return false;
    }
}