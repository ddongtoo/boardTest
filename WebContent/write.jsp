<%@page import="java.util.regex.Pattern"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<body>
	<form action="index.jsp" method="post" onsubmit="return formCheck();">
		���� : <input type="text" name="title" /><br/>
		�ۼ��� : <input type="text" name="writer" /><br/>
		���� : <textarea rows="10" cols="20" name="content"></textarea><br>
		��¥ : <input type="text" name="regdate" /><br/>
		<input type="submit" />
	</form>
	<script>
		function formCheck() {
			var title = document.forms[0].title.value;        // ����ϱ� ������ ������ �����Ͽ� ����ְ�,
		    var writer = document.forms[0].writer.value;
		    var regdate = document.forms[0].regdate.value;
		    var content = document.forms[0].content.value;  // �߰��� - �����Ľ��� �����մϴ�. :)
		 
		    if (title == null || title == ""){                                    // null���� ���� ��
		        alert('������ �Է��ϼ���');                                   // ���â�� ����
		        document.forms[0].title.focus();                           // �ش��±׿� ��Ŀ���� �ص�
		        return false;                                                     // false�� �����մϴ�.
		    }
		 
		    if (writer == null ||  writer  == ""){          
		        alert('�ۼ��ڸ� �Է��ϼ���'); 
		        document.forms[0].writer.focus();                      
		        return false;               
		    }else if(writer.match(/^(\w+)@(\w+)[.](\w+)$/ig) == null){		//�̸��� ���� �Ǻ��ϴ� ���Խ�
		        alert('�̸��� �������� �Է��ϼ���'); 
		        document.forms[0].writer.focus();                      
		        return false; 
		    }
		 
		    if (regdate == null || regdate == "" ){                            
		 
		        alert('��¥�� �Է��ϼ���');   
		        document.forms[0].regdate.focus();                      
		        return false;            
		 
		    }else if(regdate.match(/^\d\d\d\d\d\d+$/ig)   == null){
		        alert('���� ����(6�ڸ�)���� �Է��ϼ���'); 
		        document.forms[0].regdate.focus();                      
		        return false; 
		    }
		}
	</script>
</body>
</html>