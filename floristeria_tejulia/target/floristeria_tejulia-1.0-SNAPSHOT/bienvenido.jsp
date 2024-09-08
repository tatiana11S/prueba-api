<%-- 
    Document   : bienvenido
    Created on : 4/09/2024, 3:51:55 p. m.
    Author     : tatia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <body bgcolor="#CCCCCC">
        <font size=6 color="#000000">
        <marquee> <b> FLORISTERIA EL JARDIN DE TEJULIA </b> </marquee>
       

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>formulario</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
</head>
<body>
    <div class="container">
        <div class="form-content"> 
            <h1 id="title">registro</h1>
            <form>
                <div class="input-group">
                    <div class="input-field" id="nameInput">
                        <i class="fa-solid fa-user"></i>
                        <input type="text" placeholder="nombre">
                    </div>
                    <div class="input-group">
                        <div class="input-field" id="apellidoInput">
                            <i class="fa-solid fa-user"></i>
                            <input type="text" placeholder="apellido">
                        </div>
                        <div class="input-group">
                            <div class="input-field" id="phoneInput">
                                <i class="fa-solid fa-phone"></i>
                                <input type="text" placeholder="telefono">
                            </div>
                        <div class="input-group">
                            <div class="input-field" id="idcardInput">
                                <i class="fa-solid fa-id-card"></i>
                                <input type="text" placeholder="identificacion">
                        </div>
                    <div class="input-field">
                        <i class="fa-solid fa-envelope"></i>
                        <input type="email" placeholder="correo">
                    </div>
                    <div class="input-field">
                        <i class="fa-solid fa-lock"></i>
                        <input type="password" placeholder="contraseña">
                    </div>
                    <p>olvidaste tu contraseña <a href="#">click aqui</a> </p>
                </div>
                <div class="btn-field">
                    <button id="signUp" type="button">registro</button>
                    <button id="signIn" type="button" class="disable">iniciar</button>
                </div>
            </form>
        </div>
    </div> 
    
    <script src="script.js"></script>
</body>
</html>