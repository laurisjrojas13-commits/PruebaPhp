<h1>Bienvenidos a mi web</h1>

<?php
    require_once 'controllers/UsuarioControllers.php';

    $controlador = new UsuarioController();

    $controlador->mostrarTodos();