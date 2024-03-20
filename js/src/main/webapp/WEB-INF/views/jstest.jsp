<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
        <!-- jquery js 파일은 무조건 첫 줄에. -->
    </head>
    
    <body>
        <button type="button" class="btn cls" id="cls">고전</button>
        <button type="button" class="btn std" id="std">표준</button>
        <button type="button" class="btn inl" id="inl" onclick="finl();">인라인</button>
        <button type="button" class="btn add" id="add">추가</button>
        
        <div id="content1">
        	<ul class="menu">
        		<li>menu1</li>
        		<li>menu2</li>
        		<li id="select">menu3</li>
        		<li class="c_select">menu4</li>
        		<li>menu5</li>
        		<li>menu6</li>
        	</ul>
        </div>
        
        
        
        <table border="1" style="border-collapse: collapse;">
            <thead>
                <tr id="tbl-col">
                    <td style="color: red;">행번호</td>
                    <td>행이름</td>
                </tr>
            </thead>
            <tbody>
	        </tbody>
	        <tbody>
	        </tbody>
	    </table>
    
    <script>
        console.log($("tr").get(0));
        console.log($("tr").first().get(0));
        console.log($("tr").last().get(0));
        console.log(document.getElementsByTagName("tr")[0]);
        console.log(document.getElementsByTagName("tr")[document.getElementsByTagName("tr").length - 1]);
        
    </script>
    <script>
    	var newMenu = '<li>피자</li>';
    	
    	$('button.btn.cls').on('click', function(){
    		// 1. ul 첫번째 신메뉴 추가
    		$('ul.menu').prepend(newMenu);
    		$(document.getElementById("select")).parent().append("<li>치킨</li>");
    		console.log($(newMenu));
    		console.log(newMenu);
    		console.log($(document.getElementById("select")));
    		console.log($(document.getElementById("select")).get(0));
    		
    		// 4. ul 마지막 메뉴 추가
    		$("ul.menu").append(newMenu);
    		
    		// 2. menu3 위에 신메뉴 추가
    		$("li#select").before(newMenu);
    		
    		// 3. menu4 다음에 신메뉴 추가
    		$("li.c_select").after(newMenu);
    	});
    
    
    	$('button.btn.cls').click(function(){
    		// open('http://www.google.com');
    		});
    	$('button.btn.std').click(function(){
    		alert('tomcat 왜 안되지');
    		});
    	
    	
    	
    	
        var arr=[10,20,30,40];
        console.log("each함수 실행");
        function f1(index,item) {
            console.log(typeof index);
            console.log(item);
        }
        $.each(arr, f1);
        $("td").each(f1);
        console.log("for in 문 실행");
        for(var index in arr){
            console.log(typeof index);
            console.log(arr[index]);
        }
        
        var fcls = function () {
        	console.log("고전");
        }
        var btnClsEle = document.getElementById("cls");
        btnClsEle.onclick = fcls;

        
        
        
        var fstd = function () {
        	console.log("표준");
        }
        var btnStdEle = document.getElementById("std");
        btnStdEle.addEventListener("click", fstd);
        
        
        
        
        var finl = function () {
        	console.log("인라인");
        }



        let count = 1;
        function cbf1() {
            console.log("cbf1 동작 확인");
            // 방법1
            var htmlValue = '';
            htmlValue += '<tr>';
            htmlValue += '      <td>' + count + '</td>';
            htmlValue += '      <td>행' + count + '</td>';
            htmlValue += '</tr>';
            // 매개인자에 따라 다르게 기능시킬 수 있는 JS 특성
            var temp = $("tbody").eq(0).html();
            $("tbody").eq(0).append(htmlValue);
            if(count % 3 == 0){
                $("tr > td:first-of-type").css("color", "green");
            }else if(count % 3 == 1){
                $("tr > td:first-of-type").css("color", "red");
            }else {
            	$("tr > td:first-of-type").css("color", "yellow");
            }
            // var temp = document.getElementsByTagName("tbody")[0].innerHTML;
            // document.getElementsByTagName("tbody")[0].innerHTML = temp + htmlValue;


            // 방법2 - DOM
            // var nodeTr = '<tr></tr>';
            // var nodeTd1 = '<td>' + count + '</td>';
            // var nodeTd2 = '     <td>컬럼명' + count + '</td>';
            // $("tbody").append(nodeTr);
            // $("tr").append(nodeTd1);
            // $("tr").append(nodeTd2);
            // nodeTd1.appendChild(nodeText1);
            // nodeTd2.appendChild(nodeText2);
            // nodeTr.appendChild(nodeTd1);
            // nodeTr.appendChild(nodeTd2);
            // document.getElementsByTagName("tbody")[0].appendChild(nodeTr);

            count++;
        };
        document.getElementById("add").addEventListener("click", cbf1);
    </script>




    <!-- bootstrap은 body 종료 태그 바로 위에. -->
</body>

</html>