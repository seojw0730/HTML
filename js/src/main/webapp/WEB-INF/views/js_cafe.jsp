<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Cafe</title>
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <script>
    	$(loadHandler);
    	// loaded 이벤트 발생 시 호출. 주로 이벤트 등록함.
    	function loadHandler(){
			$("input.calc").
    	}
    	
    	function supply(){
    		
    	}
    </script>
    <style>
        td,
        th {
            border: 1;
        }
    </style>
</head>

<body>
    <form>
        <table border="1">
            <thead>
                <tr>
                    <th>메뉴</th>
                    <th>가격</th>
                    <th>수량</th>
                    <th>합계</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>아메리카노</td>
                    <td class="price aa">2500</td>
                    <td><input type="text" name="num1" class="num aa"></td>
                    <td><input type="text" name="sum1" class="sum aa" readonly></td>
                </tr>
                <tr>
                    <td>라떼</td>
                    <td>3000</td>
                    <td><input type="text" name="num2" class="num aa"></td>
                    <td><input type="text" name="sum2" class="sum aa" readonly></td>
                </tr>
                <tr>
                    <td>생강</td>
                    <td>4500</td>
                    <td><input type="text" name="num3" class="num bb"></td>
                    <td><input type="text" name="sum3" class="sum aa" readonly></td>
                </tr>
                <tr>
                    <td>딸바</td>
                    <td>5000</td>
                    <td><input type="text" name="num4" class="num aa"></td>
                    <td><input type="text" name="sum4" class="sum aa" readonly></td>
                </tr>
                <tr>
                    <th>합계</th>
                    <td></td>
                    <td><input type="text" name="numT" class="num total" readonly></td>
                    <td><input type="text" name="sumT" class="sum total" readonly></td>
                </tr>
                <tr>
                    <td colspan="4">
                        <input type="submit" value="계산하기" class="cal">
                        <input type="reset" value="초기화" class="reset">
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>

</html>