<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Page d'authentification - ProxiBanque SI</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="shortcut icon" href="assets/img/ProxiBanque.jpg">
    </head>
    <body>

        <div class="top-content">

            <div class="inner-bg">
                <div class="container">
                    <table class="table table-striped">
                        <tr>
                            <th>Identifiant</th>
                            <th>Nom</th>
                            <th>Prenom</th>
                            <th>Adresse</th>
                            <th>Telephone</th>

                            <c:forEach var="type" items="${clients}">                                    

                            <tr><th> ${type.idclient} </th><th> ${type.nom} </th> <th>
                                    ${type.prenom} </th><th> ${type.adresse}  ${type.adresse}  ${type.codepostal}  ${type.ville} 
                                </th><th> ${type.telephone} </th> </tr>
                                </c:forEach>

                    </table>


                </div>

            </div>
        </div>


    </div>


</body>
</html>