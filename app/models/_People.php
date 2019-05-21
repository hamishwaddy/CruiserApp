<?php

    class _People {

        private $db;

        public function __construct() {
        $this->db = new Database;
        }

        public function title() {
            return "View 1 title loaded from a model";
        }

        public function getAllPages() {
            $this->db->query('SELECT * FROM tbl_page');
            return $this->db->resultSet();
          }
    }
?>