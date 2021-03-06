<%@ include file="/WEB-INF/includes/taglibs.jsp"%>
<%@ include file="/WEB-INF/includes/doctype.jsp"%>
<%@ include file="/WEB-INF/includes/styles.jsp"%>

<html xmlns="http://www.w3.org/1999/xhtml"  lang="en">
  <head>
     <title>Create Item Success</title>
   </head>
<body>
  <%@ include file="/WEB-INF/includes/header.jsp"%>
  <div class="home-container">
     <c:choose>
         <c:when test="${operation == 'Deleted'}">
           <h2>Item: <span style="color:RED">${itemCode} </span>Has Been ${operation} Successfully!</h2>
         </c:when>
         <c:otherwise>
            <h2>Item: <span style="color:RED">${item.itemcode} </span>Has Been ${operation} Successfully!</h2>
         </c:otherwise>
      </c:choose>
      <table style="border:1px; margin: 0 auto;">
        <tr>
          <c:if test="${operation != 'Deleted'}">
             <td><a id="viewItem" href="<spring:url value="/ims/getItemDetail/${item.itemcode}" />" class="button-m"><span>View The Item</span></a></td>
             <td><a id="modifyItem" href="<spring:url value="/ims/updateItem_begin/${item.itemcode}" />" class="button-m"><span>Edit The Item</span></a></td>
             <td><a id="deleteItem" href="<spring:url value="/ims/deleteItem/${item.itemcode}" />" class="button-m"><span>Delete The Item</span></a></td>
             <td><a id="CreateItem" href="<spring:url value="/ims/cloneItem/${item.itemcode}" />" class="button-m"><span>Clone The Item</span></a></td>
             <td><a id="CreateItem" href="<spring:url value="/ims/createItem_begin" />" class="button-l"><span>Create A New Item</span></a></td>
           </c:if>  
           <td><a id="imsHome" href="<spring:url value="/ims/index" />" class="button-m"><span>IMS Home</span></a></td>
        </tr>
     </table>
     <%@ include file="/WEB-INF/includes/footer.jsp"%>
</div> <!-- Close container -->
</body>
</html>
