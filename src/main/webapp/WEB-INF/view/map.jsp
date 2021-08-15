<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지하철 혼잡도 검색</title>
</head>
<body>
    <main>
        <section>
            <h1>2호선 노선도</h1>
            <table border="1">
                <tr>
                    <c:forEach var="st" items="${stationList}">
                    <td><a href="station">${st.id}</a></td>                    
                    </c:forEach>
                </tr>                 
            </table>            
        </section>
    </main>
</body>
</html>