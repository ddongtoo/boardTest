<%@page import="java.util.regex.Pattern"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����! �Խ��� - �Խñ� ����Ʈ</title>
</head>
<%
	request.setCharacterEncoding("euc-kr");

    int idx = 1;
 
	String title = request.getParameter("title");

	String writer = request.getParameter("writer");

	String regdate = request.getParameter("regdate");
 
    int count = 10000;
    
    String content = request.getParameter("content");

    if(title == "" ||title == null) out.println("title�� null�Դϴ�.");
    
    if(writer == "" ||writer == null)
        out.println("writer�� null�Դϴ�.");   
    else if(!Pattern.matches("^[_0-9a-zA-Z-]+@[0-9a-zA-Z-]+(.[_0-9a-zA-Z-]+)*$", writer))
        out.println("�̸��� ������ �ƴմϴ�.");
     
    if(regdate == "" ||regdate == null)
        out.println("regdate�� null�Դϴ�.");
    else if(!Pattern.matches("^[0-9]*$", regdate))
        out.println("���������� �ƴմϴ�.");
     
    if(content == "" ||content == null) out.println("content�� null�Դϴ�.");

%>
<body>
<h1>�Խñ� ����Ʈ</h1>
	<table>
		<tr>
			<th>��ȣ</th>
			<th>����</th>
			<th>�ۼ���</th>
			<th>��¥</th>
			<th>��ȸ��</th>
		</tr>
		<tr>
			<th><%=idx %></th>
			<th><%=title %></th>
			<th><%=writer %></th>
			<th><%=regdate %></th>
			<th><%=count %></th>
		</tr>
	</table>
	<a href="write.jsp">�۾���</a>
</body>
</html>