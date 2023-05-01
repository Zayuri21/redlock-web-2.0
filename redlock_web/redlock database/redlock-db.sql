CREATE DATABASE redlock;
USE redlock;

CREATE TABLE IF NOT EXISTS users (
    ID INT PRIMARY KEY,
    Nama VARCHAR(255) NOT NULL,
    Alamat VARCHAR(255) NOT NULL,
    Jabatan VARCHAR(255) NOT NULL
);

INSERT INTO users (ID, Nama, Alamat, Jabatan) VALUES
(1, 'Kiza', 'Jl. Kelengkeng No. 321, Jakarta', 'Manager'),
(2, 'Kuku', 'Jl. Tanjung Barat No. 696, Jakarta', 'Supervisor'),
(3, 'Kurna', 'Jl. Kelapa Utara No. 800, Jakarta', 'Staff');