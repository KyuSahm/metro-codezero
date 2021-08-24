<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지하철 혼잡도 검색</title>
</head>
<body>
    <main>
        <section>            
           <form method="post">
               <fieldset>
                    <legend>지하철 역별 혼잡도 검색</legend>  
                    <label>역명</label>
                    <input type="text" name="station" value="${station_id}"/>
                    <input type="submit" value="검색">
                </fieldset>
            </form>
        </section>

        <section>
            <h1>방배방면</h1>
            <c:forEach var="train" items="${trainList}">
            <table border="1">
                <tr>
                    <td colspan="10">${train.destStationId} <fmt:formatNumber type="number" pattern="#분" value="${Math.floor(train.arriveSec / 60)}" /> ${train.arriveSec % 60}초</td>
                </tr>
                <tr>
                    <td>1호차</td>
                    <td>2호차</td>
                    <td>3호차</td>
                    <td>4호차</td>
                    <td>5호차</td>
                    <td>6호차</td>
                    <td>7호차</td>
                    <td>8호차</td>
                    <td>9호차</td>
                    <td>10호차</td>
                </tr>
                <tr>
                    <td>${train.crowdedness1}</td>
                    <td>${train.crowdedness2}</td>
                    <td>${train.crowdedness3}</td>
                    <td>${train.crowdedness4}</td>
                    <td>${train.crowdedness5}</td>
                    <td>${train.crowdedness6}</td>
                    <td>${train.crowdedness7}</td>
                    <td>${train.crowdedness8}</td>
                    <td>${train.crowdedness9}</td>
                    <td>${train.crowdedness10}</td>
                </tr>                 
            </table>
            </c:forEach>
        </section>
    </main>
</body>
</html>