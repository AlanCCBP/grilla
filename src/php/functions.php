<?php

require_once ('connection.php');

function createGrill($xCount, $yCount, $defaultColor) {

  $conn = new GrillDB();
  $grill = array();

  for($x = 0; $x < $xCount; $x++) {
    for($y = 0; $y < $yCount; $y++) {
      $grill[] = '(' . $x . ',' . $y . ',"' . $defaultColor . '")';
    }
  }

  // Insertar
  $aQuery = 'INSERT INTO grillinfo (x_axis, y_axis, color_class) VALUES ' . implode(',', $grill) . ';';

  // Actualizar
  //$aQuery = 'UPDATE grillinfo SET color_class = "color-green" WHERE x_axis = 4 AND y_axis = 2';

  // Traer / Seleccionar
  //$aQuery = 'SELECT color_class FROM grillinfo WHERE x_axis = 4 AND y_axis = 2';

  // Eliminar
  //$aQuery = 'DELETE FROM grillinfo WHERE x_axis = 4 AND y_axis = 2';

  $conn->getConnection()->query($aQuery);

}
?>
