<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HTML 과제</title>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<link href="${pageContext.request.contextPath}/resources/css/exam.sec1.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/exam.sec2.css" rel="stylesheet">
<script>
$(loadedHandler);
function loadedHandler(){
		$("input.join.pswd").on("focus", pswdAlertInsHandler);
		$("input.join.pswd").on("blur", pswdAlertDelHandler);
		
		$("input.join.id").on("blur", idPutMsgHandler);
		$("input.join.pswd").on("blur", pswdPutMsgHandler);
		$("input.join.pswd2").on("blur", pswd2PutMsgHandler);
}
</script>
</head>
<body>
	<div class="wrap">
		<div class="wrap-1">
			<section class="wrap-write">
				<div class="notice write">
					<form action="insert.no" method="post">
						<fieldset>
						<legend>공지사항 작성하기</legend>
						<table class="notice write">
							<colgroup>
								<col width="10%"/>
								<col width="30%"/>
								<col width="60%"/>
							</colgroup>
							<tbody>
								<tr>
									<th>제목</th>
									<td><input class="notice title" type="text" placeholder="제목을 입력하시오." name="title" required></td>
									<td></td>
								</tr>
								<tr>
									<th>내용</th>
									<td><textarea class="notice content" name="content" placeholder="내용을 입력하시오." required></textarea></td>
									<td></td>
								</tr>
								<tr>
									<th>첨부파일</th>
									<td><input class="notice file" type="file" name="uploadFile"></td>
									<td></td>
								</tr>
								<tr>
									<td class="input submit" colspan="2"><input type="submit" value="작성하기"></td>
									<td></td>
								</tr>
							</tbody>
						</table>
						</fieldset>
					</form>
				</div>
			</section>
			<hr>
			<section class="wrap-list">
				<div class="notice list">
					<table class="notice list" border="1">
						<colgroup>
							<col width="5%"/>
							<col/>
							<col width="54px"/>
							<col width="13%"/>
							<col width="17%"/>
							<col width="7%"/>
						</colgroup>
						<thead>
							<tr>
								<th>번호</th>
								<th colspan="2">제목</th>
								<th>작성자</th>
								<th>작성일</th>
								<th>조회수</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>9</td>
								<td>공지사항 제목9</td>
								<td><input type="button" value="바로가기"></td>
								<td>user01</td>
								<td>2021-03-29</td>
								<td>34</td>
							</tr>
							<tr>
								<td>6</td>
								<td>공지사항 제목6</td>
								<td><input type="button" value="바로가기"></td>
								<td>answ445</td>
								<td>2021-03-12</td>
								<td>67</td>
							</tr>
							<tr>
								<td>3</td>
								<td>공지사항 제목3</td>
								<td><input type="button" value="바로가기"></td>
								<td>testg12</td>
								<td>2021-03-01</td>
								<td>98</td>
							</tr>
							<tr>
								<td>2</td>
								<td>공지사항 제목2</td>
								<td><input type="button" value="바로가기"></td>
								<td>palwe3</td>
								<td>2021-01-02</td>
								<td>85</td>
							</tr>
							<tr>
								<td>1</td>
								<td>공지사항 제목1</td>
								<td><input type="button" value="바로가기"></td>
								<td>xml23</td>
								<td>2020-12-24</td>
								<td>124</td>
							</tr>
							<tr>
								<th colspan="4">전체공지사항 갯수</th>
								<th colspan="2">5개</th>
							</tr>
						</tbody>
					</table>
				</div>
			</section>
		</div>
		<div class="wrap-2">
			<section class="wrap-join">
				<div class="join form">
					<form>
						<table>
							<tbody>
								<colgroup>
									<col width="30%"/>
									<col/>
								</colgroup>
								<tr>
									<td class="col first">아이디</td>
									<td>
										<input type="text" name="id" class="join id">
										<div class="join id put"></div>
									</td>
								</tr>
								<tr>
									<td class="col first">패스워드</td>
									<td>
										<input type="password" name="pswd" class="join pswd">
										<div class="join pswd alert"></div>
										<div class="join pswd put"></div>
									</td>
								</tr>
								<tr>
									<td class="col first">패스워드 확인</td>
									<td>
										<input type="password" name="pswd2" class="join pswd2">
										<div class="join pswd2 put"></div>
									</td>
								</tr>
								<tr>
									<td class="col first">이메일</td>
									<td><input type="email" name="email1" class="join email first"><span>@</span><input type="email" name="email2" class="join email second"></td>
								</tr>
								<tr>
									<td class="col first">주소</td>
									<td><input type="text" name="address" class="join address"></td>
								</tr>
								<tr>
									<td class="col first"></td>
									<td><input type="text" name="address" class="join address"></td>
								</tr>
								<tr>
									<td colspan="2"><input type="submit" name="submit" class="join submit" value="가 입"></td>
								</tr>
							</tbody>
						</table>
					</form>
				</div>
			</section>
		</div>
	</div>
	<script>
		/* 
		패스워드 입력 요소를 클릭한 경우 메시지 출력
		패스워드 입력 요소를 벗어난 경우 메시지 삭제
		*/
		function pswdAlertInsHandler(){
			$("div.join.pswd.alert").html("영문자 대/소문자 특수문자, 숫자 포함 8 ~ 32자");
		}
		function pswdAlertDelHandler(){
			$("div.join.pswd.alert").html("");
		}
	
		/* 아이디, 패스워드, 패스워드 확인 입력하지 않은 채 벗어날 경우 메시지 출력 */
		function idPutMsgHandler(){
			var idLen = $(this).val().trim().length;
			if(idLen < 1){
				$("div.join.id.put").html("필수 입력 항목 입니다");
			}else{
				$("div.join.id.put").html("");
			}
		}
		function pswdPutMsgHandler(){
			var pswdLen = $(this).val().trim().length;
			if(pswdLen < 1){
				$("div.join.pswd.put").html("필수 입력 항목 입니다");
			}else{
				$("div.join.pswd.put").html("");
			}
		}
		function pswd2PutMsgHandler(){
			var pswd2Len = $(this).val().trim().length;
			if(pswd2Len < 1){
				$("div.join.pswd2.put").html("필수 입력 항목 입니다");
			}else{
				$("div.join.pswd2.put").html("");
			}
		}
	</script>
</body>
</html>
