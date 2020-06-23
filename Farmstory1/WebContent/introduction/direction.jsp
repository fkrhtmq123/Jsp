<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../_header.jsp" %>
<style>
    #sub > section > article > .content > .direction tr > td {padding-left: 5px;}
    #sub > section > article > .content > .direction tr:nth-child(1) > td:nth-child(2) {font-weight: bold; color: #666666;}
    #sub > section > article > .content > .direction tr:nth-child(4) > td:nth-child(2) {font-weight: bold; color: #666666;}

    #sub > section > article > .content > .map {
        width: auto;
        height: 0;
        margin-top: 10px;
        border: 1px solid #666666;
    }
    #sub > section > article > .content > .map > div {
        margin-top: 10px;
    }
</style>
<div id="sub" class="introduction">
    <div>
        <img src="/Farmstory1/img/sub_top_tit1.png" alt="INTRODUCTION">
    </div>
    <section>
        <aside>
            <img src="/Farmstory1/img/sub_aside_cate1_tit.png" alt="팜스토리소개">
            <ul>
                <li><a href="./greeting.jsp">인사말</a></li>
                <li class="on"><a href="./direction.jsp">찾아오시는길</a></li>
            </ul>
        </aside>
        <article>
            <nav>
                <img src="/Farmstory1/img/sub_nav_tit_cate1_tit2.png" alt="찾아오시는길">
                <p>
                    <img src="/Farmstory1/img/sub_page_nav_ico.gif" alt="">
                    HOME > 팜스토리소개 > <span>찾아오시는길</span>
                </p>
            </nav>
            <div class="content">
                <!-- 컨텐츠 내용 시작 -->
                <!--http://naver.me/FTndMPxS-->
                <table class="direction">
                    <tr>
                        <td><img src="/Farmstory1/img/sub_page1_article_quadrangle.jpg" alt=""></td>
                        <td>팜스토리</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <p>주소: 부산 부산진구 신천대로50번길 79 부전빌딩 3층</p>
                            <p>전화: 051-917-7700</p>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"></td>
                        <td><br></td>
                    </tr>
                    <tr>
                        <td><img src="/Farmstory1/img/sub_page1_article_quadrangle.jpg" alt=""></td>
                        <td>찾아오시는길</td>
                    </tr>
                </table>
                <div class="map">
                    <!-- * 카카오맵 - 지도퍼가기 -->
                    <!-- 1. 지도 노드 -->
                    <div id="daumRoughmapContainer1592465813938" class="root_daum_roughmap root_daum_roughmap_landing"></div>

                    <!--
                        2. 설치 스크립트
                        * 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
                    -->
                    <script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

                    <!-- 3. 실행 스크립트 -->
                    <script charset="UTF-8">
                        new daum.roughmap.Lander({
                            "timestamp" : "1592465813938",
                            "key" : "yud6",
                            "mapWidth" : "800",
                            "mapHeight" : "360"
                        }).render();
                    </script>
                </div>
                <!-- 컨텐츠 내용 끝 -->
            </div>
        </article>
    </section>
</div>
<%@ include file="../_footer.jsp" %>