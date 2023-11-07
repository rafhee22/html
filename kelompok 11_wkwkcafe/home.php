<?php
session_start();
?>

<!DOCTYPE html>
<html>
<head>
    <title>home</title>
    <link rel="stylesheet" href="main.css" />
</head>
<body>
<header>
        <div class="second-header">
            <div class="home-btn">
                <span class="home-btn__burger"></span>
            </div>

            <nav class="nav">
                <ul class="home-nav">
                    <li class="home-nav__item">
                        <a href="home.php" class="logo home-nav__link">
                            <?php
                            // Menyertakan gambar menggunakan PHP
                            echo '<img src="img/favicon.png" alt="logo">';
                            ?>
                            <span class="logo-first">WKWK</span>
                            <span class="logo-first">Coffe</span>
                        </a>
                    </li>
                    <li class="home-nav__item">
                        <a href="login.php" class="sign-in home-nav__link">
                          <i class="fa fa-user" aria-hidden="true"></i>
                          Login
                        </a>
                    </li>
                    <br/>
                    <li class="home-nav__item">
                        <a href="home.php" class="home-nav__link">
                          Home
                        </a>
                    </li>
                    <li class="home-nav__item">
                        <a href="#" class="home-nav__item-toggle">Menu</a>
                        <div class="home-nav__item-content">
                            <a href="minuman.php">Kopi</a>
                            <a href="non-kopi.php">Non-Kopi</a>
                            <a href="cemilan.php">Cemilan</a>
                            <a href="makanan.php">Makanan</a>
                        </div>
                    </li>
                    <li class="home-nav__item">
                        <a href="keranjang.php">
                          Keranjang
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
        </div>
    </header>

    <main>
    <section style="padding: 40px">
</section>
        <section class="home">
            <?php
            $imagePath = 'img/home.bg.jpg'; // Path atau jalur gambar
            ?>
            <div class="pic-area" style="background:url('<?php echo $imagePath; ?>') center top no-repeat; background-size: cover;">
                <div class="pic-area-text">
                    <h2>Wellcome to</h2>
                    <h1 class="home__name">
                        <span class="logo-first">WKWK</span>
                        <span class="logo-last">Coffe</span>
                    </h1>
                    <p>Tempat di mana aroma kopi harum bertemu dengan gelak tawa yang tak terhentikan.</p>
                    <p>Sajikan senyum dan cerita Anda di sini, sambil menyeruput secangkir kopi</p>
                    <p>Temukan kebahagiaan sederhana dalam setiap tegukan di wkwk Cafe </p>
                </div>
            </div>

          <div class="main-area">
            <div class="box-text">
              <h1>Promo</h1>
              <p>🌟 Diskon 20%: Nikmati Kopi Americano Kami dengan Harga Spesial! 🌟</p>
              <p>Dapatkan diskon 20% untuk setiap pembelian Kopi Americano kami dengan minimal belanja Rp. 50.000!</p>
              <p>Rasakan sentuhan keasaman yang seimbang dan kelembutan yang menghanyutkan dalam setiap tegukan</p> 
              <p>Promo terbatas, jadi kunjungi kedai kopi kami sekarang dan nikmati kelezatan kopi Americano dengan harga yang lebih terjangkau</p>
              <p class="promo">*Promo berlaku untuk dine-in dan take-away. Syarat dan ketentuan berlaku.</p>
              <p> </p>
              <p> </p>
            </div>
            <div class="section-area">
            <div class="section-A">
                    <div class="box-img">
                        <?php
                        $imagePath = 'img/diskon.png'; // Path atau jalur gambar
                        echo '<img src="' . $imagePath . '" alt="Who We Are" />';
                        ?>
                    </div>
                </div>
            </div>
            <div class="box-text">
              <h1>Promo</h1>
              <p>🌟 Promo Menu Baru! Rasakan Kelezatan Vietnam Drip di Bulan Juni! 🌟</p>
              <p>Varian baru di bulan Juni!</p>
              <p>Nikmati kombinasi kopi khas Vietnam dengan teknik pengecapan khusus yang mempertahankan kelezatan biji kopi</p>
              <p>Rasakan sensasi unik Vietnam Drip yang autentik di kedai kami</p>
              <p>Promo terbatas, jadi jangan lewatkan!</p>
            </div>

            <div class="section-area">
              <div class="section-B">
                    <div class="box-img">
                        <?php
                        $imagePath = 'img/new produk 1.png'; // Path atau jalur gambar
                        echo '<img src="' . $imagePath . '" alt="Who We Are" />';
                        ?>
                    </div>
              </div>
            </div>

            <div class="box-text">
              <h1>Promo</h1>
              <p>🌟 Diskon 35% untuk Sarapan! Senin-Jumat, Jam 6-10 Pagi! 🌟</p>
              <p>Nikmati sarapan hemat dengan diskon 35%</p>
              <p>Setiap hari Senin hingga Jumat antara jam 6 pagi hingga 10 pagi</p>
              <p>Pilih hidangan favorit Anda dan mulailah hari dengan semangat tinggi tanpa merogoh kocek terlalu dalam!</p>
              <p>*Promo berlaku dari Senin hingga Jumat, jam 6-10 pagi. Syarat dan ketentuan berlaku</p>
            </div>

            <div class="section-area">
              <div class="section-C">
              <div class="box-img">
                        <?php
                        $imagePath = 'img/sarapan.png'; // Path atau jalur gambar
                        echo '<img src="' . $imagePath . '" alt="Who We Are" />';
                        ?>
                    </div>
              </div>
            </div>
            
          </div>
        </section>
    </main>
    <footer>
      <div class="copyright">&copy; copyright by Aowkwk team</div>
    </footer>
</body>
</html>
