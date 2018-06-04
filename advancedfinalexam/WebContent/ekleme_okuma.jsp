<%@page import="model.Manufacturer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List" %> 
<%@page import="model.Product" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ekleme - Okuma</title>
</head>
<body>
<form method="POST" action="CreateProduct">
            available: <input type="text" name="available" />
            description: <input type="text" name="description" />
            markup: <input type="text" name="markup" />
            product_code <input type="text" name="product_code" />
            purchase_cost <input type="text" name="purchase_cost" />
            quantity_on_hand <input type="text" name="quantity_on_hand" />
            <input type="submit" value="Add" />
            
</form>

<form method="POST" action="CreateManufacturer">
            name: <input type="text" name="name" />
            addressline1: <input type="text" name="   addressline1" />
            addressline2: <input type="text" name="addressline2" />
            city: <input type="text" name="city" />
            state: <input type="text" name="state:" />
            zip: <input type="text" name="zip" />
            phone: <input type="text" name="phone: " />
            fax: <input type="text" name="fax " />
            email: <input type="text" name="email " />
            <input type="submit" value="Add" />
</form>
        <hr><ol> <%
            @SuppressWarnings("unchecked") 
            List<Product> ProductList = (List<Product>)request.getAttribute("ProductList");
            for (Product produc : ProductList) { %>
                <li> <%= produc %> </li> <%
            } %>
        </ol><hr>
        
        
         <hr><ol> <%
            @SuppressWarnings("unchecked") 
            List<Manufacturer> ManufacturerList = (List<Manufacturer>)request.getAttribute("ManufacturerList");
            for (Manufacturer manu : ManufacturerList) { %>
                <li> <%= manu %> </li> <%
            } %>
        </ol><hr>
 
      
</body>
</html>