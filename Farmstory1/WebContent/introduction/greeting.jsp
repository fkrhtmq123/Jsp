<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../_header.jsp" %>
<style>
    #sub > section > article > .content > div > div:nth-child(1) {
        position: relative;
        width: 760px;
        height: 164px;
        background-image: url('../img/sub_page1_article_bg.jpg');
    }
    #sub > section > article > .content > div > div:nth-child(1) > div {
        position: absolute;
        left: 20px; bottom: 88px;
        width: 380px;
        height: 30px;
        background-color: black;
        opacity: 0.4;
        z-index: 10;
    }
    #sub > section > article > .content > div > div:nth-child(1) > img {
        position: absolute;
        margin-top: 30px;
        z-index: 100;
    }
    #sub > section > article > .content > div > div:nth-child(2) {
        float: left;
        width: 62%;
        margin-top: 20px;
        box-sizing: border-box;
        color: #666;
    }
    #sub > section > article > .content > div > div:nth-child(2) > p {
        font-size: 11px;
        margin-bottom: 5px;
    }
    #sub > section > article > .content > div > div:nth-child(2) > span {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
        color: #a8d031;
    }
    #sub > section > article > .content > div > div:nth-child(3) {
        float: left;
        width: 38%;
        height: 234px;
        margin-top: 20px;
        box-sizing: border-box;
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
                <li class="on"><a href="#">인사말</a></li>
                <li><a href="./direction.jsp">찾아오시는길</a></li>
            </ul>
        </aside>
        <article>
            <nav>
                <img src="/Farmstory1/img/sub_nav_tit_cate1_tit1.png" alt="인사말">
                <p>
                    <img src="/Farmstory1/img/sub_page_nav_ico.gif" alt="">
                    HOME > 팜스토리소개 > <span>인사말</span>
                </p>
            </nav>
            <div class="content" id="content">
                <!-- 컨텐츠 내용 시작 -->
                <div>
                    <div class="img">
                        <img src="/Farmstory1/img/sub_page1_article_txt.png" alt="건강한 먹거리">
                        <div></div>
                    </div>
                    <div id="story">
                        <p>항상 저희 팜스토리를 성원해 주시고 관심을 가져주시는 모든 분들께 감사의 인사를 드리며</p>
                        <p>가정에 건강과 행복이 가득하시길 기원합니다.</p><br>
                        <p>팜스토리는 신선하고 안전한 먹거리로 건강한 삶 만들기에 기여합니다.</p>
                        <p>보다 좋은 농산품을 공급하기 위해 화학비료를 쓰지 않는 건강한 흙에서 유기농업으로 정성을</p>
                        <p>다해 지은 농사를 통해 믿고 먹을 수 있는 먹거리 제공에 앞장서겠습니다.</p><br>
                        <span>친황경 농장</span>
                        <p>팜스토리는 경기도 이천에 위치한 10만평 규모의 유기농 재배단지입니다.</p><br>
                        <span>친환경 캠페인</span>
                        <p>팜스토리는 2차 포장재 사용을 줄임으로써 친환경적인 포장과, 친환경적인 소비문화 정착을</p>
                        <p>위해 노력합니다.</p>
                    </div>
                    <div>
                        <img src="/Farmstory1/img/sub_page1_article_family.png" alt="가족사진">
                    </div>
                </div>

                <!-- 컨텐츠 내용 끝 -->
            </div>
        </article>
    </section>
</div>
<%@ include file="../_footer.jsp" %>      