<? 
 
  class PluralHelper extends Helper {
    function ize($s, $c) {
      if ($c != 1) {
        return $c . ' ' . Inflector::pluralize($s);
      }
      return $c . ' ' . $s;
    }
  }
  
  ?>