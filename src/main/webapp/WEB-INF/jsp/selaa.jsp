<%-- 
    Document   : selaa
    Created on : 19.10.2012, 15:32:16
    Author     : Lalli
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
    </head>
    <body>

        <a href="${pageContext.request.contextPath}/harjoittelija">Takaisin harjoittelijasivulle</a>
        <table border="1">
            <tr>
                <th><a href="${pageContext.request.contextPath}/harjoittelija/selaa?jarjestys=alkamisaika&sivuNumero=${sivuNumero}">Alkamisaika</a></th>
                <th><a href="${pageContext.request.contextPath}/harjoittelija/selaa?jarjestys=kesto&sivuNumero=${sivuNumero}">Kesto</a></th>
                <th><a href="${pageContext.request.contextPath}/harjoittelija/selaa?jarjestys=teho&sivuNumero=${sivuNumero}">Teho</a></th>
                <th><a href="${pageContext.request.contextPath}/harjoittelija/selaa?jarjestys=paikka&sivuNumero=${sivuNumero}">Treenipaikka</a></th>
                <th><a href="${pageContext.request.contextPath}/harjoittelija/selaa?jarjestys=tyyppi&sivuNumero=${sivuNumero}">Tyyppi</a></th>
                <th>Sis�lt�</th>
                <th>Muokkaa</th>
                <th>Poista</th>

                <c:forEach var="harjoitus" items="${harjoitukset}">

                <tr>
                    <td>${harjoitus.alkamisaika}</td>
                    <td>${harjoitus.kesto}min</td>
                    <td>${harjoitus.teho}</td>
                    <td>${harjoitus.paikka}</td>
                    <td>${harjoitus.tyyppi}</td>
                    <td><a href="${pageContext.request.contextPath}/harjoittelija/harjoitus/${harjoitus.id}">N�yt�</a></td>
                    <td><a href="${pageContext.request.contextPath}/harjoittelija/harjoitus/muokkaa/${harjoitus.id}">Muokkaa</a></td>
                    <td><a href="${pageContext.request.contextPath}/harjoittelija/poista-harjoitus/${harjoitus.id}">Poista</a></td>
                </tr>
            </c:forEach>
        </tr>


    </table>
                <c:if test="${sivutus}">
    <p>Sivut:  <c:forEach var="i" begin="0" end="${sivumaara-1}">
            <a href="${pageContext.request.contextPath}/harjoittelija/selaa/?jarjestys=${jarjestys}&sivuNumero=${i+1}">${i+1}</a>     
        </c:forEach></p>
    </c:if>

</body>
</html>