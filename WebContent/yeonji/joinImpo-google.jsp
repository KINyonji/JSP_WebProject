<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!--각 버전 중 가장 최신 표준 모드를 선택하는 문서모드-->
    <title>TIGER PHARMACY</title>
    <meta name='viewport' content='width=device-width, initial-scale=1.0, shrink-to-fit=no' />
    <link rel="icon" href="../layout/assets/img/tiger_par-tiger_img-B.png" type="image/x-icon" />
    <!--탭 아이콘-->

    <!-- Fonts and icons -->
    <script src="../layout/assets/js/plugin/webfont/webfont.min.js"></script>
    <%@ include file="../layout/top1_2.jsp"%>

    <!-- CSS Files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layout/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/yeonji/CSS/joinImpo-email.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

</head>
<c:if test="${result == 0 }">
	<script>
		alert("이미 가입된 회원입니다. 로그인 페이지로 이동합니다.");
		location.href= "${pageContext.request.contextPath}/yeonji/login.jsp";
	</script>
</c:if>
 
<body>
	<div class="wrapper">
        <div class="main-header container-fluid">
            <div class="row">
                <a href="${pageContext.request.contextPath}/layout/index.tp"> <img src="${pageContext.request.contextPath}/layout/assets/img/tiger_par-logo-B.svg" alt="top brand" class="col">
                </a>
            </div>
        </div>
   <!--컨텐츠가 들어가는 메인화면-->
        <div class="main-panel">

            <div id="content">
                <div id="joinBrowcontainer">
                    <!-- Join Form -->
                    <div id="formCon">
                        <form id="join" action="joinImpo-googleOk.tp" method="post" onsubmit="return chkInput()">
                            <h1>회원가입</h1>
                                    <table class="table">
                                        <tr>
                                            <td>이메일</td>
                                            <td><input type="hidden" name="email" value="${gInfo.email }">${gInfo.email }</td>
                                        </tr>

                                        <tr>
                                            <td>이름</td>
                                            <td><input type="hidden" id="name" name="name" value="${gInfo.name }" placeholder="이름"
                                                    required>${gInfo.name }</td>
                                        </tr>
                                        <tr>
                                            <td>비밀번호</td>
                                            <td>
                                                <input class="formChk" type="password" id="pw" name="pw" placeholder="영문, 숫자 조합(4~12자 이내)"
                                                   required>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>비밀번호 확인</td>
                                            <td>
                                                <input class="formChk" type="password" id="pwChk" name="pwChk"
                                                    placeholder="비밀번호 확인" required>
                                                <div class="alert alert-success" id="alert-success">비밀번호가 일치합니다.</div>
                                                <div class="alert alert-danger" id="alert-danger">비밀번호가 일치하지 않습니다.</div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>닉네임</td>
                                            <td>
                                                <input class="formChk" id="nickname" type="text" name="nickname"
                                                    placeholder="한글, 영문, 숫자만 사용(2~10자 이내)" onkeyup="cancelduplicationConfirm()" required>
                                                <input id="nicknameChk" onclick="nnCheck()" type="button" value="중복확인">
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>생년월일</td>
                                            <td>
                                                <select class="formChk birthChk" id="birthY" name="birthY">
                                                    <option value="none" selected>선택</option>
                                                </select> 년
                                                <select class="formChk birthChk" id="birthM" name="birthM">
                                                    <option value="none" selected>선택</option>
                                                </select> 월
                                                <select class="formChk" id="birthD" name="birthD">
                                                    <option value="none" selected>선택</option>
                                                </select> 일
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>성별</td>
                                            <td>
                                                <div class="custom-control custom-radio custom-control-inline">
                                                    <input type="radio" class="custom-control-input" id="male"
                                                        name="gender" value="male" >
                                                    <label class="custom-control-label" for="male">남성</label>
                                                </div>
                                                <div class="custom-control custom-radio custom-control-inline">
                                                    <input type="radio" class="custom-control-input" id="female"
                                                        name="gender" value="female">
                                                    <label class="custom-control-label" for="female">여성</label>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr >
                                            <td colspan="2" class="text-center">
                                                <br>
                                                <input id="cancleBtn" type="button" name="cancle" value="취소" onclick="location.href='${pageContext.request.contextPath}/layout/index.tp'" onmouseover="this.style.cursor='pointer'">
                                                <input id="joinButton" type="submit" name="join" value="회원가입" onmouseover="this.style.cursor='pointer'">
                                            </td>
                                        </tr>

                                    </table>
                       		 </form>
                    </div>

                </div>
            </div>
             <footer class="footer container-fluid">
                <div class="row">
                    <div class="col">
                        2020, made with <i class="fa fa-heart heart text-danger"></i> by
                        JungminYesolYeonsubYeonji
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <script src="${pageContext.request.contextPath}/yeonji/Script/joinImpo-google.js" type="text/javascript"></script>
</body>

</html>
