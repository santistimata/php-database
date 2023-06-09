<?php
    $koneksi = mysqli_connect("localhost", "root", "", "mahasiswa");

    function query($query) {
        global $koneksi;
        $result = mysqli_query($koneksi, $query);

        return $result;
    }

    function tambah($data) {
        global $koneksi;

        $nama = $data["nama"];
        $nim = $data["nim"];
        $email = $data["email"];
        $jurusan = $data["jurusan"];
        $gambar = $data["gambar"];

        $query = "INSERT INTO data_mhs
                VALUES
                ('', '$nama', '$nim', '$email', '$jurusan', '$gambar')
                ";
        mysqli_query($koneksi, $query);

        return mysqli_affected_rows($koneksi);
    }

    function hapus($id) {
        global $koneksi;
        mysqli_query($koneksi, "DELETE FROM data_mhs WHERE id = $id");
        return mysqli_affected_rows($koneksi); 
    }

    function ubah($data) {
        global $koneksi;
        $id = $data["id"];
        $nama = $data["nama"];
        $nim = $data["nim"];
        $email = $data["email"];
        $jurusan = $data["jurusan"];
        $gambar = $data["gambar"];

        $query = "UPDATE data_mhs SET
                    nama = '$nama',
                    nim = '$nim',
                    email = '$email',
                    jurusan = '$jurusan',
                    gambar = '$gambar'
                    WHERE id = $id";
        mysqli_query($koneksi, $query);

        return mysqli_affected_rows($koneksi);
    }

    function cari($keyword) {
        $query = "SELECT * FROM data_mhs
                    WHERE 
                    nama LIKE '%$keyword%' OR
                    nim LIKE '%$keyword%' OR
                    email LIKE '%$keyword%' OR
                    jurusan LIKE '%$keyword%'
                ";

        return query($query);
    }
?>