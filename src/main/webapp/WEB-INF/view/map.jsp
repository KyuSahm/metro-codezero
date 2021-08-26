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
            <section>
                <h1>지하철 노선 검색</h1> 
	            <form method="get" action="map">
		            <fieldset>
	                    <label>노선도</label>
			            <select name="subwayLine">
			                <c:forEach var="sl" items="${subwayLineDetailList}">
			                    <option value="${sl.line},${sl.subline}">${sl.lineName}</option>
			                </c:forEach>
			            </select>
			            <input type="submit" value="검색">
			        </fieldset>        
		        </form>
	        </section>
	        <section>
	            <table border="1">
	                <tr>
	                    <c:forEach var="st" items="${stationList}">
	                    <!--<td><a href="station?line=${line}&subline=${subline}&station_id=${st.id}&direction=1">${st.id}</a></td>-->
	                    <td><a href="realtime-station?line=${line}&subline=${subline}&station_id=${st.id}&direction=1">${st.id}</a></td>                    
	                    </c:forEach>
	                </tr>                 
	            </table>
            </section>            
        </section> 
    </main>
</body>
</html>