<?php
if ($module == ""){
include "modul/welcome.php";
}elseif ($module == "tentang"){
include "modul/tentang.php";
}elseif ($module == "diagnosa"){
include "modul/diagnosa/diagnosa.php";
}elseif ($module == "penyakit"){
include "modul/penyakit/penyakit.php";
}elseif ($module == "gejala"){
include "modul/gejala/gejala.php";
}elseif ($module == "keterangan"){
include "modul/keterangan.php";
}
?>