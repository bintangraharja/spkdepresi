<title>Analisa - Sistem Pakar</title>
<?php
switch ($_GET['act']) {

  default:
    if ($_POST['submit']) {
      $arcolor = array('#ffffff', '#47f063', '#7ccf55', '#FDCD01', '#FD9A01', '#FB6700', '#FFFC00', '#FDCD01', '#FD9A01', '#FB6700');
      date_default_timezone_set("Asia/Jakarta");
      $inptanggal = date('Y-m-d H:i:s');

      $arbobot = array('0', '1', '0.8', '-0.2', '-0.6', '-1');
      $argejala = array();

      for ($i = 0; $i < count($_POST['kondisi']); $i++) {
        $arkondisi = explode("_", $_POST['kondisi'][$i]);
        if (strlen($_POST['kondisi'][$i]) > 1) {
          $argejala += array($arkondisi[0] => $arkondisi[1]);
        }
      }

      $sqlkondisi = mysqli_query($conn, "SELECT * FROM kondisi order by id+0");
      while ($rkondisi = mysqli_fetch_array($sqlkondisi)) {
        $arkondisitext[$rkondisi['id']] = $rkondisi['kondisi'];
      }

      $sqlpkt = mysqli_query($conn, "SELECT * FROM penyakit order by kode_penyakit+0");
      while ($rpkt = mysqli_fetch_array($sqlpkt)) {
        $arpkt[$rpkt['kode_penyakit']] = $rpkt['nama_penyakit'];
        $ardpkt[$rpkt['kode_penyakit']] = $rpkt['det_penyakit'];
        $arspkt[$rpkt['kode_penyakit']] = $rpkt['srn_penyakit'];
        $argpkt[$rpkt['kode_penyakit']] = $rpkt['gambar'];
      }


// -------- perhitungan certainty factor (CF) ---------
$k = 0;
// --------------------- START ------------------------
      $sqlpenyakit = mysqli_query($conn, "SELECT * FROM penyakit order by kode_penyakit");
      $arpenyakit = array();
      while ($rpenyakit = mysqli_fetch_array($sqlpenyakit)) {
        $cf = 0;
        $sqlgejala = mysqli_query($conn, "SELECT * FROM basis_pengetahuan where kode_penyakit=$rpenyakit[kode_penyakit] ORDER BY kode_gejala");
        $cflama = 0;
        $j = 0;
        // print_r($k++);
        while ($rgejala = mysqli_fetch_assoc($sqlgejala)) {
          
          // echo (" ");
          // print_r($rgejala);
          // echo ("<br>");
          for ($i = 0; $i < count($_POST['kondisi']); $i++) {
            $arkondisi = explode("_", $_POST['kondisi'][$i]);
            $gejala = $arkondisi[0];
//            if($arbobot[$arkondisi[1]] > -1){
                if ($rgejala['kode_gejala'] == $gejala) {
                    
                        //$cf = (($rgejala['mb'] - $rgejala['md'])) * 0.2;
                        $cf = (($rgejala['mb'] - $rgejala['md'])) * $arbobot[$arkondisi[1]];
                      if($cf > 0){
                      // if(($cflama >= 0) && $cf )
                      if($j == 0){
                          $cflama += $cf;
                      }
                      // else{
  //                    //   $cflama = $cflama + $cf * (1-$cflama);
  //                    // }
  //                    // $cf = ($rgejala['mb'] - $rgejala['md']) * $arbobot[$arkondisi[1]];
  //                    else
                          if (($cf >= 0) && ($cf * $cflama >= 0)) {
                          $cflama = $cflama + ($cf * (1 - $cflama));
                          // print_r("(ini if 1 )");
                      }
                      else if ($cf * $cflama < 0) {
                          $cflama = ($cflama + $cf) / (1 - Min(abs($cflama), abs($cf)));
                          // print_r("(ini if 2 )");
                      }
                      else if (($cf < 0) && ($cf * $cflama >= 0)) {
                          $cflama = $cflama + ($cf * (1 + $cflama));
                          // print_r("(ini if 3 )");
                      }
                      $j++;
                    }
                }
//            }
          }
//          $j = 0;
// if($k == 4){
//   print_r($cflama);
//   echo("    ");
//   print_r($cf);
//   echo("    ");
//   print_r($rgejala['mb']);
//   echo("    ");
//   print_r($rgejala['md']);
//   echo("<br>");
// }

        }
        // print_r($cflama);
        // echo("<br>");
        if ($cflama >= 0) {
          $arpenyakit += array($rpenyakit["kode_penyakit"] => number_format($cflama, 4));
        }
        
      }
//      if($arpenyakit[1] < 0 && $arpenyakit[2] < 0 && $arpenyakit[1] < 0 && $arpenyakit[4] < 0  ){
//          $arpenyakit[1] += 1;
//          $arpenyakit[2] += 1;
//          $arpenyakit[3] += 1;
//          $arpenyakit[4] += 1;
//      }


      arsort($arpenyakit);

      $inpgejala = serialize($argejala);
      $inppenyakit = serialize($arpenyakit);
      // exit();

      



      $np1 = 0;
      foreach ($arpenyakit as $key1 => $value1) {
        $np1++;
        $idpkt1[$np1] = $key1;
        $vlpkt1[$np1] = $value1;

      }
// --------------------- END -------------------------

      echo "<div class='content'>
	<h2 class='text text-primary'>Hasil Kriteria &nbsp;&nbsp; </h2>
	          <hr><table class='table table-bordered table-striped diagnosa'> 
          <th width=8%>No</th>
          <th width=10%>Kode</th>
          <th>Keluhan</th>
          <th width=20%>Pilihan</th>
          </tr>";
      $ig = 0;
      foreach ($argejala as $key => $value) {
        $kondisi = $value;
        $ig++;
        $gejala = $key;
        $sql4 = mysqli_query($conn, "SELECT * FROM gejala where kode_gejala = '$key'");
        $r4 = mysqli_fetch_array($sql4);
        echo '<tr><td>' . $ig . '</td>';
        echo '<td>G' . str_pad($r4["kode_gejala"], 3, '0', STR_PAD_LEFT) . '</td>';
        echo '<td><span class="hasil text text-primary">' . $r4["nama_gejala"] . "</span></td>";
        echo '<td><span class="kondisipilih" style="color:' . $arcolor[$kondisi] . '">' . $arkondisitext[$kondisi] . "</span></td></tr>";
      }
      $np = 0;
      foreach ($arpenyakit as $key => $value) {
        $np++;
        $idpkt[$np] = $key;
        $nmpkt[$np] = $arpkt[$key];
        $vlpkt[$np] = $value;


      }

      if ($argpkt[$idpkt[1]]) {
        $gambar = 'gambar/penyakit/' . $argpkt[$idpkt[1]];
      } else {
        $gambar = 'gambar/noimage.png';
      }
      echo "</table><div class='well well-small'><img class='card-img-top img-bordered-sm' style='float:right; margin-left:15px;' src='" . $gambar . "' height=200><h3>Hasil Analisa</h3>";
      echo "<div class='callout callout-default'>Penyakit yang teridentifikasi adalah <b><h3 class='text text-success'>" . $nmpkt[1] . "</b> / " . abs(round($vlpkt[1], 2)*100) . " % (" . abs($vlpkt[1]) . ")<br></h3>";
      echo "</h4></div></div>
          <div class='box box-success box-solid'><div class='box-header with-border'><h3 class='box-title'>Saran</h3></div><div class='box-body'><h4>";
      echo $arspkt[$idpkt[1]];
      echo "</div></div>
		  </div>";
    } else {
      echo "
	 <h2 class='text text-primary'>Analisa Penyakit Depresi</h2>  <hr>
	 <div class='alert alert-warning'>
                <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>
                <h4><i class='icon fa fa-exclamation-triangle'></i>Perhatian !</h4>
                Silahkan memilih kriteria sesuai dengan penyakit yang ingin dicari, jika sudah tekan tombol proses (<i class='fa fa-search-plus'></i>)  di bawah untuk melihat hasil.
              </div>
		<form name=text_form method=POST action='diagnosa' >
           <table class='table table-bordered table-striped konsultasi'><tbody class='pilihkondisi'>
           <tr><th>No</th><th>Kode</th><th>Keluhan</th><th width='20%'>Pilih Kondisi</th></tr>";

      $sql3 = mysqli_query($conn, "SELECT * FROM gejala order by kode_gejala");
      $i = 0;
      while ($r3 = mysqli_fetch_array($sql3)) {
        $i++;
        echo "<tr><td class=opsi>$i</td>";
        echo "<td class=opsi>G" . str_pad($r3["kode_gejala"], 3, '0', STR_PAD_LEFT) . "</td>";
        echo "<td class=gejala>$r3[nama_gejala]</td>";
        echo '<td class="opsi"><select name="kondisi[]" id="sl' . $i . '" class="opsikondisi"/><option data-id="0" value="0">Pilih jika sesuai</option>';
        $s = "select * from kondisi order by id";
        $q = mysqli_query($conn, $s) or die($s);
        while ($rw = mysqli_fetch_array($q)) {
          ?>
          <option data-id="<?php echo $rw['id']; ?>" value="<?php echo $r3['kode_gejala'] . '_' . $rw['id']; ?>"><?php echo $rw['kondisi']; ?></option>
          <?php
        }
        echo '</select></td>';
        ?>
        <script type="text/javascript">
          $(document).ready(function () {
            var arcolor = new Array('#ffffff', '#47f063', '#7ccf55', '#FDCD01', '#FD9A01', '#FB6700', '#FFFC00', '#FDCD01', '#FD9A01', '#FB6700');
            setColor();
            $('.pilihkondisi').on('change', 'tr td select#sl<?php echo $i; ?>', function () {
              setColor();
            });
            function setColor()
            {
              var selectedItem = $('tr td select#sl<?php echo $i; ?> :selected');
              var color = arcolor[selectedItem.data("id")];
              $('tr td select#sl<?php echo $i; ?>.opsikondisi').css('background-color', color);
            }
          });
        </script>
        <?php
        echo "</tr>";
      }
      echo "
		  <input class='float' type=submit data-toggle='tooltip' data-placement='top' title='Klik disini untuk melihat hasil diagnosa' name=submit value='&#xf00e;' style='font-family:Arial, FontAwesome'>
          </tbody></table></form>";
    }
    break;
}
?>
