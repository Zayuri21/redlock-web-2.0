<?php
// Membuat sambungan ke database
$host = "redlock-db";
$username = "root";
$password = "root";
$dbname = "redlock";
    
$connection = new mysqli($host, $username, $password, $dbname) ;
	$result = $connection->query("SELECT * FROM users");

if (mysqli_num_rows($result) > 0) {
	// Menampilkan header dari tabel
	echo "<table border = '1'>";
	echo "<tr>
		<th>ID</th>
		<th>Nama</th>
		<th>Alamat</th>
		<th>Jabatan</th>
	</tr>";
	
	// Menampilkan isi dari tabel
	while($row = mysqli_fetch_assoc($result)) {
		echo "<tr>
			<td>".$row["ID"]."</td>
			<td>".$row["Nama"]."</td>
			<td>".$row["Alamat"]."</td>
			<td>".$row["Jabatan"]."</td>
		</tr>";
	}
	
	// Menampilkan footer dari tabel
	echo "</table>";
}
?>