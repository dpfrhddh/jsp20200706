<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="java.util.*" %>
    <%
    request.setCharacterEncoding("UTF-8");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@400;700;800&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%= request.getParameter("name") %> <br />
<%=	request.getParameter("address") %> <br />
<p><b> request.getParameterValues() 메서드 사용</b> <br />
<%
	String[] values = request.getParameterValues("pet");
	if(values !=null){
		for(String pet: values){
			%>
			<%= pet %>
			<%
		}
	}
%>
<p><b> request.getParameterNames() 메서드 사용</b> <br />
<%
	Enumeration<String> paraEnum = request.getParameterNames();
	while(paraEnum.hasMoreElements()){
		String name =paraEnum.nextElement();
		%>
		<%= name %><br />
		<%
	}
%>

<p><b> request.getParameterMap() 메서드 사용</b> <br />
<% 
	Map<String, String[]> parameterMap = request.getParameterMap();
	String[] nameParam = parameterMap.get("name");
	if(nameParam !=null){
		%>
		name = <%=nameParam[0] %> <br / >
		<%
	}
%>

</body>
</html>