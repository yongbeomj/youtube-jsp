![메인로고](https://user-images.githubusercontent.com/87436495/147758630-a265766c-2505-4cee-ba96-4ec481a5dbdf.png)

# 동영상 공유 플랫폼(Youtube)
## contentes
[1. 개요](https://github.com/yongbeomj/youtube-jsp#1-%EA%B0%9C%EC%9A%94)  
[2. 개발 환경](https://github.com/yongbeomj/youtube-jsp#2-%EA%B0%9C%EB%B0%9C-%ED%99%98%EA%B2%BD)  
[3. 개발 일정](https://github.com/yongbeomj/youtube-jsp#3-%EA%B0%9C%EB%B0%9C-%EC%9D%BC%EC%A0%95)  
[4. 주요기능 개발 우선순위](https://github.com/yongbeomj/youtube-jsp#4-%EC%A3%BC%EC%9A%94%EA%B8%B0%EB%8A%A5-%EA%B0%9C%EB%B0%9C-%EC%9A%B0%EC%84%A0%EC%88%9C%EC%9C%84)  
[5. 역할 분담](https://github.com/yongbeomj/youtube-jsp#5-%EC%97%AD%ED%95%A0-%EB%B6%84%EB%8B%B4)  
[6. 프로젝트 협업 규칙](https://github.com/yongbeomj/youtube-jsp#6-%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8-%ED%98%91%EC%97%85-%EA%B7%9C%EC%B9%99)  
[7. Controller 구조도](https://github.com/yongbeomj/youtube-jsp#7-controller-%EA%B5%AC%EC%A1%B0%EB%8F%84)  
[8. Database 구조도](https://github.com/yongbeomj/youtube-jsp#8-database-%EA%B5%AC%EC%A1%B0%EB%8F%84)

## 1. 개요
### 1.1. 선정이유 :
- 많은 사람들이 쉽게 접할 수 있고 실제로 많이 사용중인 서비스를 기준으로 선정
- JSP 수업 내용 개념 재확립
### 1.2. 주 타겟 고객 : 전 연령층 고객
  
## 2. 개발 환경
- 운영체제 : Windows10
- Front-end : html, CSS, Bootstrap
- Back-end : JDK 11, Eclipse EE 2021-09
- Database : MySQL
- Server : Apache Tomcat 9.0
- Version Control : Git

## 3. 개발 일정
- 기간 : 2021.12.10 ~ 2021.12.31  
- History

|날짜|내용|
|----|----|
|2021.12.10|주제 선정|
|2021.12.13|Front 초안 설계|
|2021.12.13 ~ 2021.12.15|Front 초안 구현|
|2021.12.14|Controller 구조도 제작|
|2021.12.15|Database 설계|
|2021.12.16 ~ 2021.12.19|Front 1차 수정|
|2021.12.20 ~ 2021.12.27|기능 구현(Back-end)|
|2021.12.28 ~ 2021.12.30|디버깅, Front 수정 등|
|2021.12.31|프로젝트 발표|

## 4. 주요기능 개발 우선순위

|우선순위|개발기능|
|:----:|----|
|1|Home, 회원가입, 로그인, ID찾기, PW찾기, 영상 세부페이지, 채널페이지|
|2|검색, 댓글, 좋아요, 팔로우|
|3|구독페이지|
|4|기타 (대댓글 등)|
 
## 5. 역할 분담
- 장용범(조장) : 회원 페이지, 조원 서포트, 스케쥴 관리 및 Github readme 정리
- 강보균 : Home, 채널 페이지
- 최병호 : 채널 페이지
- 장희동 : 영상 세부 페이지

## 6. 프로젝트 협업 규칙
### 6.1 명명규칙 및 코딩 방식 : 'Google Java Style Guide'에 따름
- project : 첫 글자 대문자로 시작
- package : 모든 글자 소문자로 구성
- folder, jsp file : 모든 글자 소문자로 구성
- class, interface : PascalCase(UpperCamelCase) 적용
- 메소드 : camelCase(lowerCamelCase) 적용
- 주석 : 메소드에 대한 설명 기재  

※ 추가 필요사항은 원문([링크](https://google.github.io/styleguide/javaguide.html#s5-naming)) 및 번역본([링크](https://newwisdom.tistory.com/96)) 참조  

### 6.2. 코드공유방식 : Github, Kakaotalk
### 6.3. Font : 노토 산스 
- 눈누 CDN([링크](https://noonnu.cc/font_page/34))

## 7. Controller 구조도 (폴더 구조)
<details>
<summary>여기를 눌러주세요</summary>
<div markdown="1">       

![캡처](https://user-images.githubusercontent.com/87436495/147758348-2fb56bd3-1afc-4726-a95a-b0a00194239f.PNG)

</div>
</details>

## 8. Database 구조도
- Table : Total 7EA
<details>
<summary>여기를 눌러주세요</summary>
<div markdown="1">       

![db](https://user-images.githubusercontent.com/87436495/147739941-8aee185e-e66f-4c2a-8ae3-46a34d5929e9.png)
  
</div>
</details>

