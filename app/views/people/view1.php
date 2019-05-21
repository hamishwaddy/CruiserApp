<?php include(APPROOT . "/views/includes/header.php"); ?>

<?php

    echo '<h1>'.$data['title'].'</h1>';

    echo `<br><br>`; //Only need this to create an empty line.

$output = "";

foreach($data['allPages'] as $page) {
  $output .= '<h2>'.$page['PAGENAME'].' '.$page['HEADINGDESCRIPTION'].' '.$page['TEXTDESCRIPTION'].'</h2>';
}

echo $output;
?>

<?php include(APPROOT . "/views/includes/footer.php"); ?>
