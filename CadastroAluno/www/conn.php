<?php
 class CONN{
 public function  Conn(){
    try
        {
          //Conectando ao banco de dados
            $con = new PDO("mysql:host=localhost; dbname=desespero", "will", "will");
        }
        catch (PDOException $i)
        {
            //se houver exceção, exibe
            die("Erro: <code>" . $i->getMessage() . "</code>");
        }

        return $con;
      }
    }








 ?>
