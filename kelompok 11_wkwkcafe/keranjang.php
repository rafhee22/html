<?php
session_start();
?>

<!DOCTYPE html>
<html>
<head>
    <title>minuman</title>
    <?php
    // Menyertakan file CSS eksternal menggunakan PHP
    echo '<link rel="stylesheet" type="text/css" href="main.css">';
    ?>
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

  <section>
    <div class="kategori">
      <h2>MAKANAN</h2>
      <div class="keranjang">
      <?php
            include('koneksi.php');
            $sql = "SELECT a.keranjangid, a.total_harga, a.productid, a.quantity, c.nama, c.gambar, c.harga 
            FROM keranjang a INNER JOIN makanan c 
            ON a.productid=c.id_makanan ";
            $query    = mysqli_query($conn, $sql);
            $jumlah1 = 0;
            $totalharga1 = 0;
            while ($data = mysqli_fetch_array($query)) {
            ?>        
                        <div class="box">
                        <div class="img-container">
                          <img src="img/<?php echo $data['gambar']; ?>" alt="makanan" />
                        </div>
                        <h2><?php echo $data['nama']; ?></h2>
                        <h5>Rp<?= number_format($data['harga'], 0, "", ".") ?> x <?= $data['quantity'] ?></h5>
                        <h5>Rp<?= number_format($data['total_harga'], 0, "", ".") ?></h5>
                        <form method="POST" action="hapus.php">
                            <input type="hidden" name="idhapus" value=<?= $data['keranjangid'] ?>>
                            <button type="submit" >hapus</button>
                        </form>
                        
                      </div>
        <?php 
     $jumlah1++;
     $totalharga1 = $totalharga1 + $data['total_harga'];
     }?>   
        </section>
      </div>
    </div>

    <div class="kategori">
      <h2>CEMILAN</h2>
      <div class="keranjang">
        <?php
            include('koneksi.php');
            $sql = "SELECT a.keranjangid, a.total_harga, a.productid, a.quantity, c.nama, c.gambar, c.harga 
            FROM keranjang a INNER JOIN cemilan c 
            ON a.productid=c.id_cemilan ";
            $query    = mysqli_query($conn, $sql);
            $jumlah2 = 0;
            $totalharga2 = 0;
            while ($data = mysqli_fetch_array($query)) {
            ?>        
                        <div class="box">
                        <div class="img-container">
                          <img src="img/<?php echo $data['gambar']; ?>" alt="cemilan" />
                        </div>
                        <h2><?php echo $data['nama']; ?></h2>
                        <h5>Rp<?= number_format($data['harga'], 0, "", ".") ?> x <?= $data['quantity'] ?></h5>
                        <h5>Rp<?= number_format($data['total_harga'], 0, "", ".") ?></h5>
                        <form method="POST" action="hapus.php">
                            <input type="hidden" name="idhapus" value=<?= $data['keranjangid'] ?>>
                            <button type="submit" >hapus</button>
                        </form>
                        
                      </div>
        <?php 
     $jumlah2++;
     $totalharga2 = $totalharga2 + $data['total_harga'];
     }?>   
      </div>
    </div>

    <div class="kategori">
      <h2>KOPI</h2>
      <div class="keranjang">
      <?php
            include('koneksi.php');
            $sql = "SELECT a.keranjangid, a.total_harga, a.productid, a.quantity, c.nama, c.gambar, c.harga 
            FROM keranjang a INNER JOIN kopi c 
            ON a.productid=c.id_kopi ";
            $query    = mysqli_query($conn, $sql);
            $jumlah3 = 0;
            $totalharga3 = 0;
            while ($data = mysqli_fetch_array($query)) {
            ?>        
                        <div class="box">
                        <div class="img-container">
                          <img src="img/<?php echo $data['gambar']; ?>" alt="kopi" />
                        </div>
                        <h2><?php echo $data['nama']; ?></h2>
                        <h5>Rp<?= number_format($data['harga'], 0, "", ".") ?> x <?= $data['quantity'] ?></h5>
                        <h5>Rp<?= number_format($data['total_harga'], 0, "", ".") ?></h5>
                        <form method="POST" action="hapus.php">
                            <input type="hidden" name="idhapus" value=<?= $data['keranjangid'] ?>>
                            <button type="submit" >hapus</button>
                        </form>
                        
                      </div>
        <?php 
     $jumlah3++;
     $totalharga3 = $totalharga3 + $data['total_harga'];
     }?>
      </div>
    </div>

    <div class="kategori">
      <h2>NON-KOPI</h2>
      <div class="keranjang">
      <?php
            include('koneksi.php');
            $sql = "SELECT a.keranjangid, a.total_harga, a.productid, a.quantity, c.nama, c.gambar, c.harga 
            FROM keranjang a INNER JOIN nonkopi c 
            ON a.productid=c.id_non_kopi ";
            $query    = mysqli_query($conn, $sql);
            $jumlah4 = 0;
            $totalharga4 = 0;
            while ($data = mysqli_fetch_array($query)) {
            ?>        
                        <div class="box">
                        <div class="img-container">
                          <img src="img/<?php echo $data['gambar']; ?>" alt="kopi" />
                        </div>
                        <h2><?php echo $data['nama']; ?></h2>
                        <h5>Rp<?= number_format($data['harga'], 0, "", ".") ?> x <?= $data['quantity'] ?></h5>
                        <h5>Rp<?= number_format($data['total_harga'], 0, "", ".") ?></h5>
                        <form method="POST" action="hapus.php">
                            <input type="hidden" name="idhapus" value=<?= $data['keranjangid'] ?>>
                            <button type="submit" >hapus</button>
                        </form>
                        
                      </div>
        <?php 
     $jumlah4++;
     $totalharga4 = $totalharga4 + $data['total_harga'];
     }?>
      </div>
    </div>

  </section>
  
  <div class="kategori">
    <?php
    $jumlah = $jumlah1 + $jumlah2 + $jumlah3 + $jumlah4;
    $totalharga = $totalharga1 + $totalharga2 + $totalharga3 + $totalharga4;
    ?>

    <section class="total">
        <h1>Ringkasan Belanja</h1>
        <h3>Total Harga (<?= $jumlah ?> barang) = <?= number_format($totalharga, 0, "", ".") ?></h3>
        <a href="pemabyaran.php"><button>Checkout</button></a>
    </section>
</div>
    </main>
</body>
<footer>
            <div class="copyright">&copy; copyright by Aowkwkteam</div>
          </footer>
</html>



