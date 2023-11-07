<?php
include 'koneksi.php';

// Memeriksa koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

// Memeriksa apakah formulir login telah dikirim
if (isset($_POST['login'])) {
    // Mendapatkan data dari formulir login
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Mengecek kecocokan data login dengan data di database
    $sql = "SELECT * FROM `users` WHERE email = '$email' AND password = '$password'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // Login berhasil
        echo "Selamat datang, $email! Anda berhasil masuk.";
    } else {
        // Login gagal
        echo "Username atau password salah.";
    }
}

// Memeriksa apakah formulir registrasi telah dikirim
if (isset($_POST['register'])) {
    // Mendapatkan data dari formulir registrasi
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Melakukan pengamanan terhadap data pengguna sebelum menyimpan ke database
    $email = mysqli_real_escape_string($conn, $email);
    $password = mysqli_real_escape_string($conn, $password);

    // Membuat query SQL untuk menyimpan data pengguna ke tabel "users"
    $sql = "INSERT INTO users (email, password) VALUES ('$email', '$password')";

    // Menjalankan query dan memeriksa hasilnya
    if (mysqli_query($conn, $sql)) {
        header("location: home.php"); // Redirect ke halaman tampil_data.php jika berhasil
    } else {
        header("location: login.php"); // Redirect ke halaman form_tambah.php jika gagal
    }
}

$conn->close();
?>

<!DOCTYPE html>
<html>
<head>
    <title>home</title>
    <link rel="stylesheet" type="text/css" href="main.css">
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
                            <img src="img/favicon.png" alt="logo">
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
                    <br>
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
    </header>

    <main>
        <section class="login">
            <div class="teks">
                <h1>Silahkan Login</h1>
            </div>
            <div class="lebel">
                <form action="home.php" method="POST">
                    <label for="email">Email:</label>
                    <input type="text" id="email" name="email" required>
                    <br>
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                    <br>
                    <input type="submit" name="login" value="Sign In">
                </form>
            </div>
        </section>
    </main>

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
</body>
</html>
