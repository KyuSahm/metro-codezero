<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지하철 혼잡도 검색</title>
</head>
<body>
    <main>
        <section>            
           <form action='search' method="post">
               <fieldset>
                    <legend>지하철 역별 혼잡도 검색</legend>  
                    <label>역명</label>
                    <input type="text" name="station" value="사당"/>
                    <input type="submit" value="검색">
                </fieldset>
            </form>
        </section>

        <section>
            <h1>방배방면</h1>
            <table border="1">
                <tr>
                    <td colspan="10">성수행 3분 21초</td>
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
                    <td>보통</td>
                    <td>보통</td>
                    <td>보통</td>
                    <td>혼잡</td>
                    <td>혼잡</td>
                    <td>혼잡</td>
                    <td>보통</td>
                    <td>보통</td>
                    <td>보통</td>
                    <td>혼잡</td>
                </tr>                 
            </table>
            <table border="1">
                <tr>
                    <td colspan="10">성수행 8분 46초</td>
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
                    <td>보통</td>
                    <td>혼잡</td>
                    <td>보통</td>
                    <td>보통</td>
                    <td>보통</td>
                    <td>보통</td>
                    <td>보통</td>
                    <td>한가</td>
                    <td>한가</td>
                    <td>한가</td>
                </tr>                 
            </table>
        </section>
    </main>
</body>
</html>