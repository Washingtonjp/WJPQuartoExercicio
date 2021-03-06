<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Insert title here</title>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>


<%!
		String today (){
			java.text.SimpleDateFormat dt = new java.text.SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
			return dt.format(new java.util.Date());
}	
%>
		<c:set var="variavel" value="Primeira Pagina JSP utilizando JSTL"/>
		<c:out value = "${variavel}"/>
		<c:set var="formatar" value= "true"/>
		<c:set var= "d1"  value= "<%=new java.util.Date()%>"/>
		<h1>A data de hoje ? : <c:out value="${d1}"/> </h1>
		<h1 class = "text-info">A data de hoje ? : <fmt:formatDate pattern = "yyyy-MM--dd hh:mm:ss" value = "${d1}"/> </h1>
		<c:if test="${formatar == true}">
			<p> Variavel formatar = <c:out value = "${formatar}"/> <p>
		</c:if>
		<h1 class = "text-warning">A data de hoje ?: <c:choose>
								<c:when test = "${formatar == true }">
									<c:out value="<%=today() %>"/> <!-- ou gerar um arquivo .tld -->
								</c:when>
								<c:otherwise>
								 	<c:out value = "${d1}"/> 
								 	</c:otherwise>
								</c:choose> </h1>
								
								
								
								
		<c:set var="nome" value="Primeira Pagina JSP utilizando JSTL"/>
		
		
		
		
		
		
		
		
		 <c:forTokens items = "Washington,jeff,GAVA,willian" delims = "," var = "nome">
         <c:out value = "${nome}"/><p>
         </c:forTokens>
         
         
         
         
         
         
  
		
	<c:set var="menor" value= "5"/>
<c:if test="${menor < 8}">
    <c:forEach var = "i" begin = "1" end = "4">
         nomes:  <c:out value = "${i}"/><p>
      </c:forEach>
		</c:if>	
	
		
		
		
		
		
		
		
		
		
		
		
		

		

</body>
</html>