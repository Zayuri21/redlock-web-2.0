FROM php:8.1-apache 
#Menggunakan base image php:8.1-apache sebagai image dasar

COPY src/ /var/www/html/
#Menyalin semua file dan direktori dari direktori "src/" di dalam build context ke dalam direktori "/var/www/html/" di dalam image Docker

RUN apt-get update && \ 
    #pt-get update: memperbarui daftar paket di dalam image
    apt-get install -y git && \
    #apt-get install -y git: menginstal Git
    cd /var/www/html/ && \
    #mengubah direktori kerja ke dalam direktori "/var/www/html/"
    git clone https://github.com/Zayuri21/redlockweb-2.0.git && \
    # mengunduh repositori "redlockweb-2.0" dari GitHub ke dalam direktori "/var/www/html/redlockweb-2.0/"
    cd redlockweb-2.0 && \
    # mengubah direktori kerja ke dalam direktori "/var/www/html/redlockweb-2.0/"
    php composer.phar install && \
    # Menginstal dependensi dari aplikasi PHP menggunakan Composer
    chown -R www-data:www-data /var/www/html/
    # Mengatur izin pada direktori "/var/www/html/" agar bisa diakses oleh server web Apache yang berjalan di dalam container Docker dengan pengguna www-data.

