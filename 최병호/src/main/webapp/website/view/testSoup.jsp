<%@page import="java.net.InetAddress"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.URL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%

	String key = "";
	String result = "";
	String ipAddress= request.getRemoteAddr();
	String ip2 = "goldcon.ddns.net";
	System.out.println("클라이언트 IP 주소: "+ipAddress);
	if(ipAddress.equalsIgnoreCase("0:0:0:0:0:0:0:1")){
	    InetAddress inetAddress=InetAddress.getLocalHost();
	    ipAddress=inetAddress.getHostAddress();
	}
	System.out.println("클라이언트 IP 주소: "+ip2);
	out.print(ipAddress);
	try {
		URL url = new URL("http://ip-api.com/json/"+ip2);
		//URL url = new URL("http://ip-api.com/json/goldcon.ddns.net");
		
		BufferedReader bf;

		bf = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));
		
		result = bf.readLine();
		
		JSONParser jsonParser = new JSONParser();
		JSONObject jsonObject = (JSONObject)jsonParser.parse(result);
		//JSONObject ipApi = (JSONObject)jsonObject.get("city");
		
		System.out.println(jsonObject.get("city"));
		
		out.println(jsonObject.get("city"));
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	%>
</body>
</html>