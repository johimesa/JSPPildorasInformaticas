<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Primero Pasos JSP</title>
	</head>
	<body>
	
		<h1>Ejemplo de Expresiones</h1>
	
		<h3>Fecha actual: <%= new Date() %> </h3>
		<h3>5 + 7 = <%= 5 + 7 %></h3>
		<h3>21 > 89 = <%= 21 > 89 %></h3>
		
		<h1>Ejemplo de Scriptlets</h1>
		<%
		
			for(int i = 0; i < 10; i++){
				out.println(i + "<br />");
			}
		%>
		
		<h1>Ejemplo de Declaraciones</h1>
		<%!
		private String hola = "Hola como estás";
		
		int sumar(int a, int b){
			return a + b;
		}
		
		int restar(int a, int b){
			return a - b;
		}
		
		int multiplicar(int a, int b){
			return a * b;
		}
		
		%>
		
		Saludo: <%= hola %>
		<br />
		Suma de 4 y 5: <%= sumar(4, 5) %><br/>
		Resta de 4 y 5: <%= restar(4, 5) %><br/>
		Multiplicacón de 4 y 5: <%= multiplicar(4, 5) %>
		
	</body>
</html>