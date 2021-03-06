<%@ include file="/WEB-INF/includes/taglibs.jsp"%>
<%@ include file="/WEB-INF/includes/doctype.jsp"%>
<%@ include file="/WEB-INF/includes/styles.jsp"%>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Item Management System -- Update Begin</title>
</head>
<body>
<%@ include file="/WEB-INF/includes/header.jsp"%>
<div class="container">
<spring:url var="action" value="/ims/createItem_material" />
<form:form method="POST" action="${action}" modelAttribute="aItem">
  <div style="color:Green"> <h3>General Information</h3></div>
   <table class="category">
      <tr>
         <td><label>Item Code: </label>  <form:input path="itemcode" disabled="true" readonly="readonly"></form:input></td>
      </tr>
      <tr>   
         <td><label>Category<span style="color:red;">*</span>: </label>  <form:input path="itemcategory"></form:input><small>(maximum 8 characters)</small></td>
      </tr>
      <tr>
         <td><form:errors path="itemcategory" cssClass="error" /></td>               
      </tr>
      <tr>  
         <td><label>Series Name<span style="color:red;">*</span>: </label>  <form:input path="series.seriesname"></form:input><small>(maximum 40 characters)</small></td>
      </tr>
      <tr>
         <td><form:errors path="series.seriesname" cssClass="error" /></td>               
      </tr>
      <tr>  
         <td><label>Series Color<span style="color:red;">*</span>: </label>  <form:input path="series.seriescolor"></form:input><small>(maximum 30 characters)</small></td>
      </tr>
      <tr>
         <td><form:errors path="series.seriescolor" cssClass="error" /></td>               
      </tr>
      <tr>    
         <td><label>Item Description<span style="color:red;">*</span>: </label><form:input path="itemdesc.itemdesc1" size="50"></form:input><small>(maximum 35 characters)</small></td>
      </tr>
       <tr>
         <td><form:errors path="itemdesc.itemdesc1" cssClass="error" /></td>               
      </tr>
      <tr>  
         <td><label for="inactivecodeOptions">Active Status: </label>
             <form:radiobutton path="inactivecode" value="N" />Active
             <form:radiobutton path="inactivecode" value="Y" />Inactive
         </td>
      </tr>
      <tr>
         <td><form:errors path="inactivecode" cssClass="error" /></td>               
      </tr>
      <tr> 
        <td calss="narrow"><label for="itemStatusOptions">Status: </label>
              <c:forEach var="itemStatus" items="${statusList}" varStatus="status">
                 <form:radiobutton path="newFeature.status" value="${itemStatus}" />${itemStatus}
              </c:forEach>
        </td>
      </tr>
      <tr>
         <td><form:errors path="newFeature.status" cssClass="error" /></td>               
      </tr>
      <tr>
         <td><label for="gradeOptions">Grade: </label>
             <c:forEach var="grade" items="${gradeList}" varStatus="status">
                <form:radiobutton path="newFeature.grade" value="${grade}" />${grade}
             </c:forEach>
         </td> 
      </tr>
      <tr>
         <td><form:errors path="newFeature.grade" cssClass="error" /></td>               
      </tr>
      <tr>   
        <td><label for="shadevariationOptions">Shade Variation: </label>
            <c:forEach var="shade" items="${shadeVariationList}" varStatus="status">
                 <form:radiobutton path="shadevariation" value="${shade}" />${shade}
            </c:forEach>
        </td> 
      </tr>
      <tr> 
         <td><label for="taxclassOptions">Tax Class: </label>
            <form:radiobutton path="taxclass" value="E" />Exempt
            <form:radiobutton path="taxclass" value="N" />Non_Tax
            <form:radiobutton path="taxclass" value="T" />Tax
         </td>
      </tr>
      <tr> 
         <td><label for="warrantyOptions">Warranty: </label>
            <form:radiobutton path="newFeature.warranty" value="1" />1 year
            <form:radiobutton path="newFeature.warranty" value="3" />3 year
            <form:radiobutton path="newFeature.warranty" value="5" />5 year
         </td>
      </tr>
      <tr>  
        <td><label for="countryOptions">Origin<span style="color:red;">*</span>: </label>
            <c:forEach var="countryName" items="${countryList}" varStatus="status">
                 <form:radiobutton path="countryorigin" value="${countryName}" />${countryName}
              </c:forEach>
        </td> 
      </tr>
      <tr>
         <td><form:errors path="countryorigin" cssClass="error" /></td>               
      </tr>
      <tr>   
        <td><label for="MPSOptions">MPS: </label>
               <c:forEach var="mps" items="${mpsList}" varStatus="status">
                  <form:radiobutton path="newFeature.mpsCode" value="${mps}" />${mps}
               </c:forEach>
        </td>
      </tr>
      <tr>
         <td><form:errors path="newFeature.mpsCode" cssClass="error" /></td>               
      </tr>
      <tr>  
       <td>
           <label for="ColorHuesyOptions">Color Hues: </label>
           <c:forEach var="color" items="${colorList}" varStatus="status">
              <span style="padding-left: 5px;padding-bottom:3px; font-size: 12px;">
                 <form:checkbox path="colors" value="${color}" />${color}
              </span>  
           </c:forEach>
       </td> 
     </tr>
    </table>
  
   <br/>
   <table> 
      <tr > 
        <td>
            <input type="submit" value="Next >"/>
        </td>
      </tr>
   </table> 
</form:form>
<%@ include file="/WEB-INF/includes/footer.jsp"%>
</div><!-- container -->
</body>
</html>
