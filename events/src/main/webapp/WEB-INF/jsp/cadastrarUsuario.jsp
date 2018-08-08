<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="materialize/css/materialize.min.css"  media="screen,projection"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

        <title>Cadastrar</title>
    </head>
    <body>
        <script type="text/javascript" src="materialize/js/materialize.min.js"></script>
        <div class="column side"></div>
        <div class="column middle">
            <div class="row">
                <form:form class="col s12" modelAttribute="user">
                    <div class="row">
                        <div class="input-field col s6">
                            <form:input path="firstName" id="first_name" type="text" class="validate" value="${user.firstName}"/>
                            <label for="first_name">First Name</label>
                        </div>
                        <div class="input-field col s6">
                            <form:input path="lastName" id="last_name" type="text" class="validate" value="${user.lastName}"/>
                            <label for="last_name">Last Name</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <form:input path="email" type="email" class="validate" value="${user.email}"/>
                            <label for="email">Email</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <form:input path="password" type="password" class="validate" value="${user.password}"/>
                            <label for="password">Password</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <form:input path="confirmPassword" id="confirmPassword" type="password" class="validate" value="${user.confirmPassword}"/>
                            <label for="confirmPassword">Confirm Password</label>
                        </div>
                    </div>
                    <button class="waves-effect waves-light btn" type="submit">SALVAR</button>

                </form:form>
            </div>
        </div>
        <div class="column side"></div>
    </body>
</html>
