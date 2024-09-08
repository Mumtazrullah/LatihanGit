<?php
// Koneksi ke database
$servername = "localhost";
$username = "root";  // Ganti dengan username MySQL kamu
$password = "";  // Ganti dengan password MySQL kamu
$dbname = "bukuperpus";  // Ganti dengan nama database yang sesuai

// Membuat koneksi
$conn = new mysqli($servername, $username, $password, $dbname);

// Cek koneksi
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Ambil data dari form
$name = $_POST['name'];
$email = $_POST['email'];

// Menyimpan data ke database
$sql = "INSERT INTO contacts (name, email) VALUES ('$name', '$email')";

if ($conn->query($sql) === TRUE) {
    // Jika berhasil, redirect kembali ke contact.html dengan parameter sukses
    header("Location: contact.html?status=success");
    exit();
} else {
    // Jika gagal, tampilkan pesan error
    echo "Error: " . $sql . "<br>" . $conn->error;
}

// Menutup koneksi
$conn->close();
?>
