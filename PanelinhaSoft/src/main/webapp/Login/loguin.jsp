<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="loguin.css">
    <title>Login</title>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1> Bem Vindo</h1>
        </div>
        <div class="main">
            <form>
                <span>
                    <img class="user"src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAABmJLR0QA/wD/AP+gvaeTAAABOUlEQVRIib3Vvy4EURTH8Y9N2EJ4ABoKhVbrCYTSY6An8QgSrZ54AJQai/2joNITVCqL0Owq5o6sze7szN2NX3Iyc+89+X3PzT13hmyVsYUa3kPUsBnWhtIs7tDuE7chJ0rlAeadkKidbOUwT2MjBlAvAKjGAJoFAM0so1IMvUutGMB9AUBmbj/AYQHAUYHcX5UlLZinTSdiACSXKAsy1EVLNSHp86qkW5q4DnPRlf+LprCOfVzhAR/4xBMusIelkL+GhuRj2MBqP+NlHAejPJdsN5j3WvsDmcd5TtPOWMRNeN/GJHbCuJ6az+AlwvwMY/gO4/TQy2H8lQIOIszbmJOcT1ZOBZ4jAfLmtUYEOME0TjvnS2EHo9A43sLzj1bwWLD61x47aGOhe25syKrbgxKG/eFcDliv/AD7fOvPoUH4kgAAAABJRU5ErkJggg==">
                <input type="text" id="name" placeholder="Código funcionario">
            </span>
            <span>
                <img class="lock"src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAABmJLR0QA/wD/AP+gvaeTAAABuklEQVRoge2Zu0oDQRSGv1wg4N1GkYC3Vn0BbbTURhFfwscQWxttBFG01TZYq4iVthbamcZLFC+FCQHRYkeY3MyemWwmwfngwCw5/8z/s9ndyQY8Ho/HJbEI5x1SBXCv6jui9RrGKLAFZAnM6nUHbKqeliMBrAMFKo2XV0H1xp04rUIKyFBp9AW4BK7UuPzzjNI654BSYyfALMFZ+SUBzAGnZb37TXVahRVKDa3x940hRvD10TXLEXusSRy41YxsC7Q7mu4GR9fDjGYiB/QItH3As6afNjVhk3xBGx8CHwLtG3CkHc+bmrAJMKaNLwz0umbc1IRNgAFt/GSgf9DGg6YmbALot8kvA72uSdTsqkPLPA1NafsASUPdMJDWjjeAV+Ec/do4rebMGvoRsQTkqb9pk1YeWIza/AjhdpymVSA4E6GRXgOrRLuDTKk1QiMNMCnsN2FK0iwN0CnsN0G0RtvfRn0A1/gArvEBXOMDuObfBWjG22XRGtIAOWG/CY+SZmmAY2G/CZGukQTOie4HzRkWbyjC0g3sAcUGGi8Cu0CX1IzNX0y9wATQYTEHwCdwDbxbzuPxeDwO+AGoKLGM0Y1b/QAAAABJRU5ErkJggg==">
                <input type="password" id="senha" placeholder="Senha" >
            </span></br>
            <a class="btnLink" onclick="pegarDados()" href="http://127.0.0.1:5500/Home/Home.html" >LOGIN</a>
            </form>
        </div>
      
    </div>
    
</body>
</html>