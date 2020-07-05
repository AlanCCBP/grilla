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

  $aQuery = 'INSERT INTO grillinfo (x_axis, y_axis, color_class) VALUES ' . implode(',', $grill) . ';';
  $conn->getConnection()->query($aQuery);

}

function getAllSquares() {

  $conn = new GrillDB();

  /*
    Obtenemos todos los datos de la grilla, ordenados, ya que nos va a servir
    para procesarlos más fácilmente luego en el foreach.
    En este caso, está ordenado DESCendentemente para que el (0,0) nos quede
    abajo a la izquierda, y el (31,31) arriba a la derecha, en la tabla que
    estaremos generando, sino me mareo jaja.
  */

  $aQuery = 'SELECT x_axis, y_axis, color_class FROM grillinfo ORDER BY y_axis DESC;';
  $rows = $conn->getConnection()->query($aQuery);
  $results = array();

  while($aRow = $rows->fetch_assoc()) {
    $results[] = $aRow;
  }

  return $results;
}
?>
