<%@ include file="/WEB-INF/includes/taglibs.jsp"%>
<%@ include file="/WEB-INF/includes/doctype.jsp"%>
<%@ include file="/WEB-INF/includes/styles.jsp"%>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Item Management System -- Create An Item</title>
</head>
<body>
<%@ include file="/WEB-INF/includes/header.jsp"%>
<div class="container">
<spring:url var="action" value="/ims/createItem_final" />
<form:form method="POST" action="${action}" modelAttribute="aItem">
    <div style="color:Green"> <h3>Web</h3></div>
    <table class="category"> 
        <tr>
           <td class="label_same_row">Show on Bedrosians:
               <form:checkbox path="showonwebsite" value="N" />No
           </td>
        </tr>
        <tr>
           <td style="width: 100%; clear: both;"><form:errors path="showonwebsite" cssClass="error" /></td>               
      </tr>
        <tr>   
           <td class="label_same_row">Show on AlysEdwards:
               <form:checkbox path="showonalysedwards" value="N" />No
           </td>
        </tr>
   </table>
   <div style="color:GREEN"> <h3>Buyers</h3></div>
   <table class="category"> 
     <tr>
        <td><label>Product Manager<span style="color:red;">*</span>: </label>
            <form:input path="purchasers.purchaser" cssStyle="width:155px;"></form:input>
        </td>
     </tr>
     <tr>
          <td><form:errors path="purchasers.purchaser" cssClass="error" /></td>
     </tr>
     <tr>
        <td><label>Buyer: </label>
        <form:input path="purchasers.purchaser2" cssStyle="width:155px;"></form:input></td>
     </tr>     
   </table>
    <div style="color:Green"> <h3>Notes</h3></div>
    <table>
          <tr>
              <td><label>PO Notes: </label>     <form:textarea path="notes.ponotes"></form:textarea></td>
          </tr>
          <tr>
              <td><label>Buyer's Notes: </label> <form:textarea path="notes.buyernotes"></form:textarea></td>
          </tr>
          <tr>
              <td><label>Invoice Notes: </label> <form:textarea path="notes.invoicenotes"></form:textarea></td>
          </tr>
          <tr>
              <td><label>Internal Notes: </label> <form:textarea path="notes.internalnotes"></form:textarea></td>
          </tr>
     </table>   
     <table> 
      <tr> 
        <td>
            <input type="submit" value="Submit"/>
        </td>
      </tr>
    </table> 
</form:form>
<%@ include file="/WEB-INF/includes/footer.jsp"%>
</div><!-- container -->
</body>
</html>
