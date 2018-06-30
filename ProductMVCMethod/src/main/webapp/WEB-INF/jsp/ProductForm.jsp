<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE HTML>
<html>
<head>
<title>Add Product Form</title>
<style type="text/css">@import url(/resources/main.css);</style>
</head>
<body>

<div id="global">
 <form:form modelAttribute="product" action="product" method="post">
<!--form action="product" method="post"-->
    <fieldset>
        <legend><spring:message code="product.add_product"/></legend>
        <p>
            <label for="category"><spring:message code="product.category" /> </label>
 		 	<form:select id ="category" path="category.id" >
                <form:options items="${categories}" itemValue="id" itemLabel="name"/>
		    </form:select>
        </p>
         
        <p>
            <label for="name"><spring:message code = "product.name"/> </label>
            <form:input type="text" id="name" path="name" />
        </p>
        <p>
            <label for="description"><spring:message code = "product.description"/></label>
            <form:input type="text" id="description"
                        path="description" />
        </p>
        <p>
            <label for="price"><spring:message code = "product.price"/></label>
            <form:input type="text" id="price" path="price" />
        </p>
        <p id="buttons">
             <input id="submit" type="submit" value="Add Product">
                </p>
    </fieldset>
</form:form>
</div>
</body>
</html>
