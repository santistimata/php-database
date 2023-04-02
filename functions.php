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
?>