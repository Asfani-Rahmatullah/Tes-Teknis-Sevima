<?php
    require 'userPermission.inc';
    function suka($id_postingan,$conn){
        $jawaban=$conn->prepare("SELECT komentar, username FROM postingan, komentar, pengguna 
                                 WHERE komentar.id_postingan = :id_postingan AND komentar.id_user=pengguna.id_user AND komentar.id_postingan=postingan.id_postingan");
        $jawaban->bindValue(':id_postingan',$id_postingan);
        $jawaban->execute();
        return $jawaban;
       
    }
?>