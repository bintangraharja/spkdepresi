<title>Beranda - Sistem Pakar Depresi</title>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body, html {
  height: 100%;
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.hero-image {
  background-image: linear-gradient(rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.2)), url("modul/buku.png");
  height: 80%;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
  filter: blur(2.5px);
  -webkit-filter: blur(2.5px);
  
}

.hero-text {
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
  color: white;
  font-weight: bold;
  border: 3px solid #f1f1f1;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 2;
  width: 80%;
  padding: 20px;
  text-align: center;
}

.hero-text button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 14px 35px;
  color: black;
  background-color: #A2D2FF;
  text-align: center;
  cursor: pointer;
  margin: 50px 0px 0px 0px;
  border-radius: 25px;
  font-size: 20px;
}

.hero-text button:hover {
  background-color: #2FDD92;
  color: white;
}
.hero-text button a {
  
  color: black;
}
</style>
</head>
<body>

<div class="hero-image"></div>
  <div class="hero-text">
    <h1 style="font-size:60px">Depresi pada remaja</h1>
    <br/>
    <p style="font-size:20px">Check your depression</p>
    <button ><a <?php if ($module == "diagnosa") ; ?> href="diagnosa">
    Get Started</button>
  </div>




</body>
</html>
            