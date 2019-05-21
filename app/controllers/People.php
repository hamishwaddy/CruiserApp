<?php

include(APPROOT . '/helper/helperfunctions.php');

class People extends Controller {

    public function __construct() {
        $this->people = $this->model('_People');
    }

    public function index() {

        $title = $this->people->title();
        $allPages = $this->people->getAllPages();
      
        $data = [
          'title' => $title,
          'allPages' => $allPages
        ];
      
        return $this->view('people/view1', $data);
      }


}


?>