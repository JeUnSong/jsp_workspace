<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>TIS.Edu</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@900&display=swap" rel="stylesheet">
  <script type="text/javascript">
    // iframe resize
    function autoResize(i)
    {
        (i).height=0;
        var iframeHeight=
        (i).contentWindow.document.body.scrollHeight;
        (i).height=iframeHeight+20;
    }
  </script>
  <script>
    $(document).ready(function(){
      // Add smooth scrolling to all links in navbar + footer link
      $(".navbar a, footer a[href='#myPage']").on('click', function(event) {
    
      // Make sure this.hash has a value before overriding default behavior
      if (this.hash !== "") {
    
        // Prevent default anchor click behavior
        event.preventDefault();
    
        // Store hash
        var hash = this.hash;
    
        // Using jQuery's animate() method to add smooth page scroll
        // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
        $('html, body').animate({
          scrollTop: $(hash).offset().top
        }, 900, function(){
    
          // Add hash (#) to URL when done scrolling (default click behavior)
          window.location.hash = hash;
          });
        } // End if
      });
    })
    </script>
    <script>
      $(document).ready(function(){
        // Initialize Tooltip
        $('[data-toggle="tooltip"]').tooltip();
      })
      </script>
  <style>
      .container {
        padding-top: 80px;
        padding-bottom: 80px;
      }

      #map{
        padding-top: 80px;
        padding-bottom: 80px;
      }
      
      h1{font-family: 'Noto Sans KR', sans-serif;}

      .subject {
        border: 10px solid rgb(150, 148, 148);
        margin-bottom: 25px;
        width: 80%;
        height: 80%;
        opacity: 0.7;
        padding:30px;
        transition: 1s;
      }

      .subject:hover {
            border-color: rgb(29, 29, 29);
      }

      .row div{
        padding-right: 0px;
      }

      .carousel-inner img {        
        width: 100%; /* Set width to 100% */
        height: 900px !important;
        margin: auto;        
       }

      .carousel-caption h3 {
      color: #fff !important;
      }



      @media (max-width: 767px) {
        .carousel-caption {
        display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
        }
        #curriculumn .col-sm-4{                
        margin-top: 50px !important;
        padding-left: 70px !important;
        padding-right: 70px !important;
        }
      } 
  </style>
</head>
<body id="myPage">

    <%@ include file="nav.jsp" %>
    <!-- 캐러셀 -------------------------------------------------------------------------------------------------------------------------->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
          <li data-target="#myCarousel" data-slide-to="3"></li>
          <li data-target="#myCarousel" data-slide-to="4"></li>
        </ol>
      
        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
          <div class="item active">
            <img src="img/pic01.jpg" alt="Android">
            <div class="carousel-caption">
              <h3>Android</h3>
              <p>Android Native App Development</p>
            </div>
          </div>
      
          <div class="item">
            <img src="img/pic02.jpg" alt="Big Data">
            <div class="carousel-caption">
              <h3>Big Data</h3>
              <p>Big Data - Hadoop, R, Python</p>
            </div>
          </div>
      
          <div class="item">
            <img src="img/pic03.jpg" alt="AI">
            <div class="carousel-caption">
              <h3>AI</h3>
              <p>AI - Scikit-Learn, PyTorch</p>
            </div>
          </div>

          <div class="item">
            <img src="img/pic04.jpg" alt="Web Programming">
            <div class="carousel-caption">
              <h3>Web Programming</h3>
              <p>Front End, Back End Programming</p>
            </div>
          </div>

          <div class="item">
            <img src="img/pic05.jpg" alt="JAVA">
            <div class="carousel-caption">
              <h3>JAVA</h3>
              <p>JAVA - Object Oriented Language</p>
            </div>
          </div>
        </div>
      
        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div><!-- 캐러셀 -->

      <!-- 스크롤 애니 ----------------------------------------------------------------------------------------------------------------------->
      <section class="page-start"><!-- 스크롤 애니 끝 -->

        
    <!-- 어바웃 ------------------------------------------------------------------------------------------------------------------------------>
    <div id="about" class="container text-center">
        <h1>TIS 정보기술 교육센터</h1>        
        <p>- 정부지원 IT전문 교육기관</p>
        <p>최신 IT기술 트렌드를 접목한 실무 중심의 교육으로 <br>
            대한민국 4차산업혁명시대의 미래를 열어가겠습니다.
        </p>
    </div>

    <div id="curriculumn" class="container text-center">
        <h1>교육과목</h1>        
        <p>- 국가기반기술 IT전문교육</p>
        <br>
        <div class="row">
            <div class="col-sm-4">
                <p><strong>HTML5</strong></p><br>
                <img class="img-circle subject" src="img/html5.png" alt="html5" width="255" height="255">
            </div>
            <div class="col-sm-4">
                <p><strong>CSS3</strong></p><br>
                <img class="img-circle subject" src="img/css3.png" alt="css3" width="255" height="255">
            </div>
            <div class="col-sm-4">
                <p><strong>Javascript</strong></p><br>
                <img class="img-circle subject" src="img/javascript.png" alt="javascript" width="255" height="255">
            </div>    
        </div>   
        <div class="row">
            <div class="col-sm-4">
                <p><strong>Python</strong></p><br>
                <img class="img-circle subject" src="img/python.png" alt="python" width="255" height="255">
            </div>
            <div class="col-sm-4">
                <p><strong>Android</strong></p><br>
                <img class="img-circle subject" src="img/android.png" alt="android" width="255" height="255">
            </div>
            <div class="col-sm-4">
                <p><strong>React</strong></p><br>
                <img class="img-circle subject" src="img/react.png" alt="react" width="255" height="255">
            </div>    
        </div>  
     </div><!-- 어바웃 끝 -->

     <!-- 카카오맵 ----------------------------------------------------------------------------------------------------------------------->
     <div id="map" class="container-fluid">
         <h1 class="text-center">오시는 길</h1>
        <div id="kakaomap" style="width: 100%;height: 500px;"></div>
     </div>
     
     <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ceeafc3ed507028db2d85ffd30a7aada"></script>
     <script> 

         var mapContainer = document.getElementById('kakaomap'), // 지도를 표시할 div 
          mapOption = { 
                 center: new daum.maps.LatLng(37.525229261856055, 126.89135012208651), // 지도의 중심좌표
                 level: 3 // 지도의 확대 레벨
             };

         var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

         // 마커가 표시될 위치입니다 
         var markerPosition  = new daum.maps.LatLng(37.525229261856055, 126.89135012208651); 

         // 마커를 생성합니다
         var marker = new daum.maps.Marker({
             position: markerPosition
         });

         // 마커가 지도 위에 표시되도록 설정합니다
         marker.setMap(map);

      </script><!-- 카카오맵.끝.-->

      <!-- 게시판 -------------------------------------------------------------------------------------------------------------------------->
      <div class="container" id="board">
        <h1 class="text-center">Q & A</h1>
        <iframe id="iframe1" src="https://jeunsong.dothome.co.kr/g5/bbs/board.php?bo_table=board001" width="100%"
            onload="autoResize(this)" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
      </div><!-- 게시판 끝 -->
      
          <%@ include file="footer.jsp" %>
      

</body>
</html>