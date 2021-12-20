package 최병호;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class parseSoup {
	
	//String html = "<pre id = 'codeOutput'>";
	//Document doc = Jsoup.connect("https://ip-api.com/").get();
	
	/*
	doc = Jsoup.parseBodyFragment(html);
	// doc.body() 메소드는 문서의 body요소를 추출합니다. (doc.getElementByTag("body") ) 
	Element body = doc.body();
	
	String title = doc.title();
	*/
	
	public static void main(String[] args) {
		
//		try {
//			String URL = "https://ip-api.com/#goldcon.ddns.net";
//			Connection conn = Jsoup.connect(URL);
//			
//			Document document = conn.get();
//			
//			Elements parsingDivs = document.getElementsByClass("parsingDiv"); // class가 parsingDiv인 element 찾기
//			Element parsingDiv = parsingDivs.get(0);
//			
//			Element parsingTitle = parsingDiv.getElementById("parsingTitle"); // id가 parsingTitle인 element 찾기
//			Element partsingContents = parsingDiv.getElementById("partsingContents"); // id가 parsingContents인 element 찾기
//			
//			String title = parsingTitle.getElementsByTag("h3").get(0).text(); // 첫 번째 h3태그의 text값 찾기
//			String contents = partsingContents.getElementsByTag("p").get(0).text(); // 첫 번째 p태그의 text값 찾기
//			
//			System.out.println("파싱한 제목: " + title);
//			System.out.println("파싱한 내용: " + contents);
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}	
		/*크롤링 방법 */
		try {
			String URL = "https://ip-api.com/#goldcon.ddns.net";
			Connection conn = Jsoup.connect(URL);
			
			Document document = conn.get();
			// class가 main-content인 element 찾기 
			Elements parsingDivs = document.getElementsByClass("col-md-6 mx-auto mdh");
			Element parsingDiv = parsingDivs.get(0);
			
			Element parsingPreid = parsingDiv.getElementById("codeOutput");
			
			Elements key = parsingPreid.getElementsByClass("string");
			Element key2 = key.get(4);
			
			//key2
			//System.out.println(   );   
			
			
			//Element parsingSection = parsingMains.get(0);
			System.out.println("파싱한 제목: "  + key2);
		} catch (Exception e) {
			
		}
		
		
//		/*Json */
//		String key = "";
//		String result = "";
//		String ipAddress= request.getRemoteAddr();
//		System.out.println("클라이언트 IP 주소: "+ipAddress);
//		try {
//			URL url = new URL("http://ip-api.com/json/goldcon.ddns.net");
//			
//			BufferedReader bf;
//
//			bf = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));
//			
//			result = bf.readLine();
//			
//			JSONParser jsonParser = new JSONParser();
//			JSONObject jsonObject = (JSONObject)jsonParser.parse(result);
//			//JSONObject ipApi = (JSONObject)jsonObject.get("city");
//			
//			System.out.println(jsonObject.get("city"));
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		
		
		
		
	}
}
