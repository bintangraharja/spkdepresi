<!DOCTYPE html>
<html>
<head>
<title>Tentang - Sistem Pakar</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 20px;
  padding: 0 10px;
  
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.6);
  margin: 8px;
  background-color: #77D970;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}




@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
</style>
</head>
<body>

<h2 style="text-align:center; font-size:48px" >Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="gambar/bintang.png" alt="Bintang" style="width:100%">
      <div class="container">
        <h2>Bintang Raharja</h2>
        <strong>Leader</strong>
        <br/>
        <li>Mengatur jalannya projek</li>
        <li>Memastikan pengerjaan sesuai timeplan</li>
      <br/>
      <br/>
      </div>
      <h2 style="text-align:center; font-size:30px">00000037686</h2>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="gambar/elfajar.jpg" alt="Elfajar" style="width:100%">
      <div class="container">
        <h2>Elfajar Bintang Samudera</h2>
        <strong >Frontend Developer</strong>
        <br/>
        <li>Membuat desain sistem</li>
        <li>Mengumpulkan data yang diperlukan</li>
        <br/>
        <br/>
      </div>
      <h2 style="text-align:center; font-size:30px">00000037235</h2>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="gambar/Ferry_Lay.png" alt="Ferry" style="width:100%">
      <div class="container">
        <h2>Ferry Lay</h2>
        <strong>Backend Developer</strong>
        <br/>
        <li>Mengolah data dengan algoritma untuk memecahkan <br/>
        masalah</li>
        <li>mengoptimalkan sistem yang kompleks </li>
        <br/>
      </div>
      <h2 style="text-align:center; font-size:30px">00000037514</h2>
    </div>
  </div>
</div>

</body>
</html>
