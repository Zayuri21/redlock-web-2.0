<?php
$host = 'db'; // hostname yang digunakan server database
$db_name = 'redlock-web-2.0'; // nama database yang ingin dihubungkan
$username = 'root'; // username digunakan ketika ingin mengakses database
$password = 'root'; // password digunakan ketika ingin mengakses database

$conn = new PDO("mysql:host=$host;dbname=$db_name", $username, $password);
// membuat koneksi ke database dengan mengspesifikasi host, nama, username, password
// PDO = PHP Data Objects

$stmt = $conn->prepare("SELECT COUNT(*) FROM users");
// $stmt = store, $conn->prepare = Membuat query SQL yang baru
// SELECT COUNT(*) FROM users = menghitung banyak barisan pada tabel 'users'

$stmt->execute(); // menjalankan query

$result = $stmt->fetch(); // hasil dair query, seperti return value
$total_users = $result[0];

echo "Total number of users: $total_users";
?>
