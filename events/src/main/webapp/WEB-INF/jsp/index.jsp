<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
    <head>
        <style>
            .column {
                float: left;
                padding: 100px;
            }
            .column.side {
                width: 25%;
            }
            .column.middle {
                width: 50%;
            }
        </style>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
        <link type="text/css" rel="stylesheet" href="materialize/css/materialize.min.css"  media="screen,projection"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Eventos</title>

    </head>

    <body>
        <script type="text/javascript" src="materialize/js/materialize.min.js"></script>

        <%@include file="navBar.jsp"%>

        <div class="row">
            <div class="column side"></div>
            <div class="column middle">
                <div class="row">
                    <form:form modelAttribute="user" class="col s12">
                        <div class="row">
                            <div class="input-field col s12">
                                <form:input id="email" path="email" class="validate" type="email" value="${user.email}" autocomplete="false"/>
                                <label for="email">Email</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <form:input id="password" path="password" class="validate" type="password" value="${user.password}" autocomplete="false"/>
                                <label for="password">Password</label>
                            </div>
                        </div>
                        <div class="column">
                            <button class="btn waves-effect waves-light" type="submit" name="action">ENTRAR
                                <i class="material-icons right">send</i>
                            </button>
                            <br>
                            <a href="/cadastro">CADASTRE-SE</a>
                        </div>
                    </form:form>
                </div>
            </div>
            <div class="column side"></div>
        </div>
    </body>
</html>