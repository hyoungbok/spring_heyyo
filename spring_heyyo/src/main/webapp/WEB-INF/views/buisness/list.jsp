<%@ page contentType="text/html; charset=UTF-8" %> 

<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title></title> 
<style type="text/css"> 

</style>
<script type="text/javascript">
function read(){
	var url = "read";
	url = url + "?req_num=" + req_num;
	url = url + "&col=${col}";
	url = url + "&word=${word}";
	url = url + "&nowPage=${nowPage}";
	
	location.href = url;
	
}
</script> 
<%-- <link href="<%=root%>/css/style.css" rel="Stylesheet" type="text/css"> --%>
</head> 
<!-- *********************************************** -->
<body>
<!-- *********************************************** -->
 

 
 <div class="search">
 <form method="post" action="buisnessR/list">
 <select name="buisnessID">


 <option value="total">전체출력</option>
 <option value="buisnessID"
 <%-- 
 <%if(col.equals("wname")) out.print("selected"); %>
  --%>
 >사장님ID</option>
 <%--   <%
					if (id != null && grade.equals("A")) {
	  %> --%>
	  <option>미완</option>
   <%--  <%
   	 }  
    %> --%>
 </select>
 <input type="text" name="word" value=""> 
 <button>검색</button>
 </form>
 
 </div>
<div class="container">
<h2>
<span class="glyphicon glyphicon-euro"></span>
목록</h2>
  <TABLE class="table table-hover">
  <thead>
    <TR>
      <TH>번호</TH>
      <TH>제목</TH>
      <TH>사장님ID</TH>
      <TH>음식코드</TH>
      <TH>등록일</TH>
    
   </TR>
   </thead>

<tbody>
   <tr>
   	  <td>1</td>
   	  <td width="60%">
   	 
   	  <a href="javascript:read()">Title</a>
   	 
   	  
   	  </td>
   	  
   	  <td>buisnessID</td>
   	  <td>음식코드</td>
   	  <td>2018-11-26</td>
   	  
 
   </tr>
   </tbody>
 
  </TABLE>
  
  <DIV class='bottom' >
   <input type='button' value='등록' onclick="location.href='createForm.jsp'">
  </DIV>

 
 </div>
<!-- *********************************************** -->
</body>
<!-- *********************************************** -->
</html> 


<%-- 

<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi.jsp" %> 
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title></title> 
<style type="text/css"> 

</style>
<script type="text/javascript">
function read(){
	var url = "read";
	url = url + "?req_num=" + req_num;
	url = url + "&col=${col}";
	url = url + "&word=${word}";
	url = url + "&nowPage=${nowPage}";
	
	location.href = url;
	
}
</script> 
<link href="<%=root%>/css/style.css" rel="Stylesheet" type="text/css">
</head> 
<!-- *********************************************** -->
<body>
<!-- *********************************************** -->
 

 <div class="search">
 <form method="post" action="./list">
 <select name="col">
 <option value="wname"
 <c:if test="${col=='wname'}">selected</c:if>
 >성명</option>
 <option value="title"
<c:if test="${col=='title'}">selected</c:if>
 >제목</option>
 <option value="content"
 <c:if test="${col=='content'}">selected</c:if>
 >내용</option>
 <option value="total">전체출력</option>
 </select>
 <input type="text" name="word" value="${word}">
 <button>검색</button>
 
 </form> 
 </div>
 
 <div class="container">
 <h2>
 <span class="glyphicon glyphicon-th-list"></span>
 목록</h2>
  <TABLE class="table table-hover">
  <thead>
    <TR>
      <TH>번호</TH>
      <Th>제목</Th>
      <Th>사장님ID</Th>
      <Th>음식코드</Th>
      <Th>등록일</Th>
      <Th>파일명</Th>
    </TR>
   </thead> 
  <c:choose>
  <c:when test="${empty list}">
 <tbody>
    <tr>
    <td colspan="6">
    등록된 글이 없습니다.
    </td>
    </tr>
 </tbody> 
 </c:when>
 <c:otherwise> 
  <c:forEach var="dto" items="${list}">
   <tbody>
    <tr>
       <td>${dto.req_num}</td>
       <td>
       <c:forEach begin="1" end="${dto.indent}">&nbsp;&nbsp;</c:forEach>
       <c:if test="${dto.indent>0 }"><img src='${root }/images/re.jpg'></c:if>
       
            <c:set var="rcount" value="${util:rcount(dto.req_num,dao) }"/>
       <a href="javascript:read('${dto.req_num}')">${dto.req_title}</a>
        <c:if test="${rcount>0 }">
            <span style="color:red;">(${rcount})</span>
        </c:if>
       
       <c:if test="${util:newImg(dto.req_date) }">
       
       <img src='${root }/images/new.gif'>
       </c:if>
       </td>
       <td>${dto.buisnessID}</td>
       <td>${dto.r_code}</td>
       <td>${dto.req_date}</td>
       <td>
       <c:choose>
        <c:when test="${not empty dto.filename }">
        <a href="javascript:fileDown('${dto.filename}')">
          ${dto.filename}
        </a>
        </c:when>
        <c:otherwise>파일없음</c:otherwise>
       </c:choose>
       </td>
    </tr>
    </tbody>
  </c:forEach>
 </c:otherwise>
 </c:choose>   
 </TABLE>
  
 
 ${paging}
  
  <DIV class='bottom' >
   <input type='button' value='등록' onclick="location.href='createForm.jsp'">
  </DIV>

 
 </div>
<!-- *********************************************** -->
</body>
<!-- *********************************************** -->
</html>  


--%>