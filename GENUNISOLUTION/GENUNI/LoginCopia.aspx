<%@ Page Language="VB" AutoEventWireup="false" CodeFile="LoginCopia.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.10.2/css/all.css" />
    <link href="assets/css/style_login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <br />
        <div class="cont">
            <div class="form sign-in">
                <h2 class="h2Login">ACCEDI</h2>
                <label>
                    <span>EMAIL</span>
                    <input type="email" />
                </label>
                <label>
                    <span>PASSWORD</span>
                    <input type="password" />
                </label>
                <p class="forgot-pass" href="Default.aspx">Torna alla Home</p>
                <button type="button" class="submit">Accedi</button>

            </div>
            <div class="sub-cont">
                <div class="img">
                    <div class="img__text m--up">
                        <h3 class="h3Login">Non hai ancora un account? Iscriviti!</h3>
                    </div>
                    <div class="img__text m--in">

                        <h3 class="h3Login">Se hai già un account fai il login</h3>
                    </div>
                    <div class="img__btn">
                        <span class="m--up">Iscriviti</span>
                        <span class="m--in">Login</span>
                    </div>
                </div>
                <div class="form sign-up">
                    <h2 class="h2Login">Crea un account</h2>
                    <label>
                        <span>Nome</span>
                        <input type="text" />
                    </label>
                    <label>
                        <span>Email</span>
                        <input type="email" />
                    </label>
                    <label>
                        <span>Password</span>
                        <input type="password" />
                    </label>
                    <button type="button" class="submit">Iscriviti</button>

                </div>
            </div>
        </div>
        <script>
            document.querySelector('.img__btn').addEventListener('click', function () {
                document.querySelector('.cont').classList.toggle('s--signup');
            });
        </script>
    </form>
</body>
</html>
