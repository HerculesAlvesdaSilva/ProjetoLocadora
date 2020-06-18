<?php

define("HOST", "sql110.epizy.com");
define("BD", "epiz_26027381_locadora");
define("USER", "epiz_26027381");
define("PASS", "DXNIoTL1uYYLuWG");

function conectarBanco() {
    try {
        $dsn = "mysql:host=" . HOST . ";dbname=" . BD;
        $pdo = new PDO($dsn, USER, PASS);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
        echo "Erro: " . $e->getMessage();
    }

    return $pdo;
}
