<?php
$module = $_GET['module'];
?>
<li><a <?php if ($module == "") echo 'class="active"'; ?> href="./"><i class="fa fa-home"></i> <span>Beranda</span></a><li>
  <div class="container"></div>

    <li><a <?php if ($module == "diagnosa") echo 'class="active"'; ?> href="diagnosa"><i class="fa fa-search-plus"></i> <span>Identifikasi</span></a><li>
      <div class="container"></div>
    
    <li><a <?php if ($module == "keterangan") echo 'class="active"'; ?> href="keterangan"><i class="fa fa-commenting-o"></i> <span>Jenis Depresi</span></a><li>
      <div class="container"></div>
<li><a <?php if ($module == "tentang") echo 'class="active"'; ?> href="tentang"><i class="fa fa-info-circle"></i> <span>Tentang</span></a><li>
  <div class="container"></div>