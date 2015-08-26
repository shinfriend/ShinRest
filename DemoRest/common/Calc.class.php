<?php

class Calc {
  public static function checkDivisionAnswer($q1, $q2, $answer) {
    $good = "○";
    $bad  = "×";

    if (empty($answer)) {
      return $bad;
    }
    $q1 = (int)$q1;
    $q2 = (int)$q2;

    $sho   = floor($q1 / $q2);
    $amari = $q1 % $q2;

    $kaito = explode("・・・", $answer);

    //余りが解答に含まれない場合  
    if (count($kaito) == 1) {
      if($amari != 0 ) {
        return $bad;
      } else {
        if ($kaito[0] == $sho) {
          return $good;
        } else {
          return $bad;
        } 
      }
    //余りが解答に含まれる場合  
    } else if (count($kaito) == 2) {
      if ($kaito[0] == $sho && $kaito[1] == $amari) {
        return $good;
      } else {
        return $bad;
      }
    }    
  }
}

?>
