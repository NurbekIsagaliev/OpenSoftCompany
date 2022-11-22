<?php

$data = ['tr', 'abc', 'bca', 'rt', 'rtr', 'op', 'cba', 'po', 'acacb'];
function annagram($word, $word1)
{ $arr = str_split($word);
  $arr1 = str_split($word1);
if (implode('',array_unique(array_merge($arr,$arr1))) == implode('',array_unique($arr)) &&
implode('',array_unique(array_merge($arr1,$arr))) == implode('',array_unique($arr1))) {
    return true;
  } else {
    return false;  }}

function maping($data)
{ $expected = [[]];
for ($i = 0; $i < count($data); $i++) {
    foreach ($data as $item) {
      if (annagram($data[$i], $item) == true) {

        $expected[$item][] = $data[$i];}}}

  array_shift($expected);

  

  
  $output = [];

  foreach ($expected as $ex) {
    if (!in_array($ex, $output)) {
      
      $output[] = $ex;
    }
  }
return $output;
}

print_r(maping($data));

