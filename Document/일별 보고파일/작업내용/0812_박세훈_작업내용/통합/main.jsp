<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<!--  toast-->
<script src="js/main_js/js.js" type="text/javascript" charset="UTF-8"></script>
<!--                                              <script
                                                src="//rawgit.com/Soldier-B/jquery.toast/master/jquery.toast/jquery.toast.min.js"></script>
                                             toastMessage
                                             <script src="http://codeseven.github.io/toastr/toastr.js"></script>
                                             <script src="js/main_js/myToast.js"></script> -->


<!-- detail임. -->

<!-- <link rel="stylesheet"
                                                href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
                                             Bootstrap CSS
                                             <link rel="stylesheet"
                                                href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
                                             font Awesome CSS
                                             <link href="http://codeseven.github.io/toastr/toastr.css"
                                                rel="stylesheet" type="text/css" />
                                             <link rel="stylesheet" href="css/main_css/assets/css/bootstrap.min.css">
                                             <link rel="stylesheet"
                                                href="//rawgit.com/Soldier-B/jquery.toast/master/jquery.toast/jquery.toast.min.css" /> -->

<script
   src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="DetailSeejsTemplete.js" type="text/javascript"
   charset="UTF-8"></script>
<!-- 상세보기 -->
<link rel="stylesheet" type="text/css"
   href="css/myWriteRecipe_css/myWriteRecipe.css">
<!-- 얘가 겹칠 수 있음.ㄱ -->
<script src="js/profile_js/modal.js" type="text/javascript"
   charset="UTF-8"></script>
<!-- 상세보기 -->

<title>FLOOK 나의 최고의 레시피</title>
</head>
<body>
   <jsp:include page="navigation.jsp" flush="false" />
   <div id="wrapper">
      <div id="mainCarousel" class="carousel slide" data-ride="carousel">
         <div class="carousel-inner" role="listbox">
            <div class="item active">
               <img src="img/main_img/banner/test3.jpg" alt="..."
                  class="main_banner">
               <div class="carousel-caption"></div>
            </div>
         </div>
      </div>
   </div>
   <div id="main_body_container">
      <div class="main_body_content" id="main_body_content1">
         <div id="main_toDay_header">
            <div></div>
         </div>
         <div id="main_body_body">
            <div class="header_psh">
               <div class="main_psh">
                  <div class="view view-first"
                     style="width: 300px; height: 240px; margin: 15px">
                     <img
                        src="\Flook\userImage\da46d1f02b4c701eb1c35cfbd076100e1_m.jpg"
                        style="width: 300px; height: 240px;" />
                     <div class="mask">
                        <form method="post" action="detail" id="detail"
                           style="display: inline">
                           <a type="button" style="text-decoration: none"
                              href="javascript:detailSee('0101UR1439022566592')">
                              <h2>집밥백선생 오징어볶음</h2>
                           </a>
                        </form>
                        <p>좋아요 : ${mySimpleRecipe.likeCount}43509 조회수
                           :${mySimpleRecipe.postHits}923742</p>
                        <form>
                           <a type="button" id="insertRcipeBtn" class="info" style="text-decoration: none"
                              href="javascript:insertScrap('0101UR1439022566592')">스크랩
                              추가</a>
                        </form>
                     </div>
                  </div>
                  <div class="view view-first"
                     style="width: 300px; height: 240px; margin: 15px">
                     <img
                        src="\Flook\userImage\65911d982e9e1f3193b3b91fa7fe846a1_m.jpg" />
                     <div class="mask">
                        <form method="post" action="detail" id="detail"
                           style="display: inline">
                           <a type="button" style="text-decoration: none"
                              href="javascript:detailSee('0101UR1439023015454')">
                              <h2>부추김치, 부추김치 맛있게 담그는법</h2>
                           </a>
                        </form>
                        <p>좋아요 : ${mySimpleRecipe.likeCount}13747 조회수
                           :${mySimpleRecipe.postHits}523452</p>
                        <form>
                           <a type="button" id="insertRcipeBtn" class="info" style="text-decoration: none"
                              href="javascript:insertScrap('0101UR1439023015454')">스크랩
                              추가</a>
                        </form>
                     </div>
                  </div>
                  <div class="view view-first"
                     style="width: 300px; height: 240px; margin: 15px">
                     <img
                        src="\Flook\userImage\01c8561419fbfaf3ba13f9828929227d1_m.jpg" />
                     <div class="mask">
                        <form method="post" action="detail" id="detail"
                           style="display: inline">
                           <a type="button" style="text-decoration: none"
                              href="javascript:detailSee('0101UR1439023229778')">
                              <h2>백종원 비빔국수 만들기</h2>
                           </a>
                        </form>
                        <p>좋아요 : ${mySimpleRecipe.likeCount}32643 조회수
                           :${mySimpleRecipe.postHits}96734</p>
                        <form>
                           <a type="button" id="insertRcipeBtn" class="info" style="text-decoration: none"
                              href="javascript:insertScrap('0101UR1439023229778')">스크랩
                              추가</a>
                        </form>
                     </div>
                  </div>
                  <div class="view view-first"
                     style="width: 300px; height: 240px; margin: 15px">
                     <img
                        src="\Flook\userImage\a11763e2dd47a1affacefc6bbf25d6711_m.jpg" />
                     <div class="mask">
                        <form method="post" action="detail" id="detail"
                           style="display: inline">
                           <a type="button" style="text-decoration: none"
                              href="javascript:detailSee('0101UR1439023453636')">
                              <h2>백종원 마파두부</h2>
                           </a>
                        </form>
                        <p>좋아요 : ${mySimpleRecipe.likeCount}22123 조회수
                           :${mySimpleRecipe.postHits}132412</p>
                        <form>
                           <a type="button" id="insertRcipeBtn" class="info"
                              href="javascript:insertScrap('0101UR1439023453636')">스크랩
                              추가</a>
                        </form>
                     </div>
                  </div>
                  <div class="view view-first"
                     style="width: 300px; height: 240px; margin: 15px">
                     <img
                        src="\Flook\userImage\8b708c076736f62e149bad9d3949f30a1_m.jpg" />
                     <div class="mask">
                        <form method="post" action="detail" id="detail"
                           style="display: inline">
                           <a type="button" style="text-decoration: none"
                              href="javascript:detailSee('0101UR1439024501630')">
                              <h2>쫄깃한 가지구이무침</h2>
                           </a> 
                        </form>
                        <p>좋아요 : ${mySimpleRecipe.likeCount}364 조회수
                           :${mySimpleRecipe.postHits}1342</p>
                        <form>
                           <a type="button" id="insertRcipeBtn" class="info"
                              href="javascript:insertScrap('0101UR1439024501630')">스크랩
                              추가</a>
                        </form>
                     </div>
                  </div>
                  <div class="view view-first"
                     style="width: 300px; height: 240px; margin: 15px">
                     <img
                        src="\Flook\userImage\944d3d95179a21ffce4fa2c70528afe01_m.jpg" />
                     <div class="mask">
                        <form method="post" action="detail" id="detail"
                           style="display: inline">
                           <a type="button" style="text-decoration: none"
                              href="javascript:detailSee('0101UR1439024750919')">
                              <h2>웰빙 곤드레나물밥</h2>
                           </a>
                        </form>
                        <p>좋아요 : ${mySimpleRecipe.likeCount}2378 조회수
                           :${mySimpleRecipe.postHits}1342689</p>
                        <form>
                           <a type="button" id="insertRcipeBtn" class="info"
                              href="javascript:insertScrap('0101UR1439024750919')">스크랩
                              추가</a>
                        </form>
                     </div>
                  </div>
                  <%-- <%
                     }
                  %> --%>










                  <%-- </c:forEach> --%>
               </div>
            </div>
         </div>
      </div>
      <div class="main_body_content" id="main_body_content2">
         <div id="main_situation_body">
            <div></div>
         </div>
         <script type="text/javascript">
            $(document).ready(function() {
                     $(".selectSituationS").click(function() {
                        recommendRecipe(document.getElementsByClassName("selectSituationS")[$(".selectSituationS").index(this)].getAttribute("alt"),$("#situationBefore"),$("#situationAfter"));
                     });
                     $(".selectMoodS").click(function(){
                        recommendRecipe(document.getElementsByClassName("selectMoodS")[$(".selectMoodS").index(this)].getAttribute("alt"),$("#moodBefore"),$("#moodAfter"));
                     });
            function recommendRecipe(recommendClickName,before,after) {
               $.ajax({
                  url : "RecommendSituation",
                  type : "POST",
                  data : {
                     "situation" : recommendClickName
                        },/*엄청 긴 코드는 내가 클릭한 이미지의 이름.*/
                        success : function(data) {
                           /* alert(data); */
                           $(after).append(data);
                           $(after).show();
                           $(before).hide();
                        }
                  });   
            }
         });
         </script>
         <style>
#situationAfter,#moodAfter {
   display: none;
}
</style>
         <div id="main_body_body">
            <div class="header_psh">
               <div class="main_psh">
                  <div id="situationBefore">
                     <div class="selectSituation" id="beforeRecipe">
                        <img src="img/main_img/body/situation1.png"
                           style="width: 250px; height: 240px; margin: 10px" alt="간식"
                           class="selectSituationS" />
                     </div>
                     <div class="selectSituation" id="beforeRecipe">
                        <img src="img/main_img/body/situation2.png"
                           style="width: 250px; height: 240px; margin: 10px" alt="손님접대"
                           class="selectSituationS" />
                     </div>
                     <div class="selectSituation" id="beforeRecipe">
                        <img src="img/main_img/body/situation3.png"
                           style="width: 250px; height: 240px; margin: 10px" alt="일상"
                           class="selectSituationS" />
                     </div>
                     <div class="selectSituation" id="beforeRecipe">
                        <img src="img/main_img/body/situation4.png"
                           style="width: 250px; height: 240px; margin: 10px" alt="다이어트"
                           class="selectSituationS" />
                     </div>
                     <div class="selectSituation" id="beforeRecipe">
                        <img src="img/main_img/body/situation5.png"
                           style="width: 250px; height: 240px; margin: 10px" alt="야식"
                           class="selectSituationS" />
                     </div>
                     <div class="selectSituation" id="beforeRecipe">
                        <img src="img/main_img/body/situation6.png"
                           style="width: 250px; height: 240px; margin: 10px" alt="초스피드"
                           class="selectSituationS" />
                     </div>
                     <!-- hideData시작. -->
                     <!--  -->
                     <!--  -->
                     <!--  -->
                     <!-- hide끝 -->
                  </div>
                  <div id="situationAfter"></div>

               </div>
            </div>
         </div>
      </div>
      <div class="main_body_content" id="main_body_content3">
         <div id="main_mood_body">
            <div></div>
         </div>


         <div id="main_body_body">
            <div class="header_psh">
               <div class="main_psh">
                  <div id="moodBefore">
                     <div class="selectMood" id="beforeRecipe">
                        <img src="img/main_img/body/mood1.png"
                           style="width: 250px; height: 240px; margin: 10px" alt="나들이"
                           class="selectMoodS" />
                     </div>
                     <div class="selectMood" id="beforeRecipe">
                        <img src="img/main_img/body/mood2.png"
                           style="width: 250px; height: 240px; margin: 10px" alt="초스피드"
                           class="selectMoodS" />
                     </div>
                     <div class="selectMood" id="beforeRecipe">
                        <img src="img/main_img/body/mood3.png"
                           style="width: 250px; height: 240px; margin: 10px" alt="푸드 스타일링"
                           class="selectMoodS" />
                     </div>
                     <div class="selectMood" id="beforeRecipe">
                        <img src="img/main_img/body/mood7.png"
                           style="width: 250px; height: 240px; margin: 10px" alt="영양식"
                           class="selectMoodS" />
                     </div>
                     <div class="selectMood" id="beforeRecipe">
                        <img src="img/main_img/body/mood5.png"
                           style="width: 250px; height: 240px; margin: 10px" alt="채식"
                           class="selectMoodS" />
                     </div>
                     <div class="selectMood" id="beforeRecipe">
                        <img src="img/main_img/body/mood6.png"
                           style="width: 250px; height: 240px; margin: 10px" alt="술안주"
                           class="selectMoodS" />
                     </div>
                     <!-- hideData시작. -->
                     <!--  -->
                     <!--  -->
                     <!--  -->
                     <!-- hide끝 -->
                  </div>
                  <div id="moodAfter"></div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <button type="button" class="btn btn-info btn-lg" data-toggle="modal"
      data-target="#detailRecipeModal" id="gg" style="display: none;">이거
      봤니?이게 보여?보이면 안되는데;;</button>
   <div id="tempHereInsert"></div>
</body>
</html>