<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>



<html>
<head>
    <title>회원가입 처리</title>
    <style>
        #wrap{
            margin-left:auto; 
            margin-right:auto;
            text-align:center;
        }
        
        table{
            margin-left:auto; 
            margin-right:auto;
            border:3px solid skyblue
        }
        
        td{
            border:1px solid skyblue
        }
        
        #title{
            background-color:skyblue
        }
    </style>
</head>


<body>

<%
	// 한글처리

	request.setCharacterEncoding("utf-8");

	// 파라미터 가져오기

	String id = request.getParameter("userId");

	String passwd = request.getParameter("passwd");
	
	String passwdCk = request.getParameter("passwdCk");

	String name = request.getParameter("userName");

    String birthyy = request.getParameter("birthYear");

    String birthmm = request.getParameter("birthMonth");
    
    String birthdd = request.getParameter("birthDay");

	String[] gender = request.getParameterValues("gender");

    String phone1 = request.getParameter("phone1");

    String phone2 = request.getParameter("phone2");
    
    String phone3 = request.getParameter("phone3");
%>


    <div id="wrap">
        <br><br>
        <b><font size="5" color="gray">회원가입 정보를 확인하세요.</font></b>
        <br><br>
        <font color="blue"><%=name %></font>님 가입을 축하드립니다.
        <br><br>
        
        <table>
            <tr>
                <td id="title">아이디</td>
                <td><%=id %></td>
            </tr>
                        
            <tr>
                <td id="title">비밀번호</td>
                <td><%=passwd %></td>
            </tr>
                    
            <tr>
                <td id="title">이름</td>
                <td><%=name %></td>
            </tr>
                    
            <tr>
                <td id="title">성별</td>
                <td>
                <%
                    // 배열로 넘겨받은 값을 처리하기 위해 for문 이용
                    for(String g : gender){
                        out.println(g);
                    }
                %>
                </td>
            </tr>
                    
            <tr>
                <td id="title">생일</td>
                <td>
                <%=birthyy %>년 
                <%= birthmm %>월 
                <%=birthdd %>일
                </td>
            </tr>
                    
            <tr>
                <td id="title">휴대전화</td>
                <td>
                <%=phone1 %> - <%=phone2 %> - <%=phone3 %>
                </td>
            </tr>

        </table>
        
        <br>
        <input type="button" value="확인">
    </div>
</body>
</html>

