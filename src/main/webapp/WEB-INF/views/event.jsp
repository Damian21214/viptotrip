<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EVENT</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js">
    </script>
    <link href="css/custom.css" rel="stylesheet">

</head>
<body>

<div align="center">

<table style="border-collapse: separate; border-spacing: 10px;">

    <form:form method="post" modelAttribute="event">

        <tr>
            <td align="right" colspan="1"><h4>Rodzaj imprezy:</h4></td>
        </tr>
        <tr>
            <td colspan="1" align="right">LOKALNA: <form:radiobutton path="eventCategory" value="L"/></td>
        </tr>
        <tr>
            <td colspan="1" align="right">ZAGRANICZNA: <form:radiobutton path="eventCategory" value="F"
                                                                         checked="true"/></td>
        </tr>
        <tr>
            <td align="right" width="200">Kod imprezy:</td>
            <td><form:input path="code" placeholder="6 znakowy, unikalny"/></td>
        </tr>
        <tr>
            <td align="right" width="200">Nazwa imprezy:</td>
            <td><form:input path="eventName" size="30"/></td>
        </tr>
        <tr>
            <td align="right" width="200">Data imprezy:</td>
            <td><form:input path="eventDate"/></td>
        </tr>
        <tr>
            <td align="right" width="200">Miejsce imprezy</td>
            <td><form:input path="hotelName" placeholder="np. nazwa hotelu"/></td>
        </tr>
        <tr>
            <td align="right" width="200">Adres imprezy:</td>
            <td><form:input path="hotelAddress"/></td>
        </tr>
        <tr>
            <td align="right" width="200">Opis miejsca imprezy:</td>
            <td><form:textarea path="hotelDescription" cols="50" rows="20"/></td>
        </tr>
        <tr>
            <td colspan="1" align="right">Koordynaty imprezy</td>
        </tr>
        <tr>
            <td align="right" width="200">Długość geograficzna:</td>
            <td><form:input path="hotelLatitude"/></td>
        </tr>
        <tr>
            <td align="right" width="200"> Szerokość geograficzna:</td>
            <td><form:input path="hotelLongitude"/></td>
        </tr>
        <tr>
            <td colspan="1" align="right">
                <input type="submit" value="Zatwierdź"/></td>
        </tr>

    </form:form>

</div>

</table>
</body>
</html>