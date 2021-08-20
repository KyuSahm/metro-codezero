<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지하철 시간표 업데이트</title>
</head>
<body>
    <main>        
        <section>
            <h1>지하철 시간표 업데이트</h1>
            <form method="post" action="update-timetable">
                <fieldset>
                    <label>노선도</label>
                    <select name="subwayLine">
                        <c:forEach var="sl" items="${subwayLineDetailList}">
                            <option value="${sl.line},${sl.subline}">${sl.lineName}</option>
                        </c:forEach>
                    </select>
                    <input type="submit" value="UPDATE">
                </fieldset>
            </form>
        </section>        
    </main>
</body>
</html>