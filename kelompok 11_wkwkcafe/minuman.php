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
        <section class="minuman">
        
        <?php
        include('koneksi.php');
        $sql = "SELECT * FROM kopi";
        $query = mysqli_query($conn, $sql);
        while ($data = mysqli_fetch_array($query)) {
          $productId = $data['id_kopi']; // Get the product ID
        ?>
        <form method="POST" action="index_login_proses.php">
                        <div class="box">
                        <div class="img-container">
                          <img src="img/<?php echo $data['gambar']; ?>" alt="makanan" />
                          <div class="box__btns">
                            <button type="submit" class="box__btn four__cart__button">add to card</button>
                          </div>
                        </div>
                        <h2><?php echo $data['nama']; ?></h2>
                        <h3><?php echo $data['harga']; ?></h3>
                        <h4>jumlah</h4>
                        <input type="number" name="quantity" class="form-number text-center" min="1" style="width: 50px; margin-right: -4px;" value="1">
                      </div>
                        <input type="hidden" name="productid" value="<?= $data['id_kopi']; ?>">
                        <input type="hidden" name="price" value="<?= $data['harga']; ?>">
        </form>
        <?php }?>

    
          
        </section>
    </main>
</body>
<footer>
            <div class="icons">
              <a href="#!">
                <i class="fab fa-twitter"></i>
              </a>
              <a href="#!">
                <i class="fab fa-facebook"></i>
              </a>
              <a href="#!">
                <i class="fab fa-instagram"></i>
              </a>
              <a href="#!">
                <i class="fab fa-snapchat-square"></i>
              </a>
            </div>
            <div class="copyright">&copy; copyright by Aowkwk team</div>
          </footer>
</html>
