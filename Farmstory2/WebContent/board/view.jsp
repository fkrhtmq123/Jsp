<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../_header.jsp" %>
<%@ include file="./_aside_community.jsp" %>
<body>
    <div id="wrapper">
        <section id="board" class="view">
            <h3>글보기</h3>
            <table>
                <tr>
                    <td>제목</td>
                    <td><input type="text" name="title" value="${ article.title }" readonly/></td>
                </tr>
                
                <c:if test="${ article.file == 1 }">
	                <tr>
	                    <td>첨부파일</td>
	                    <td>
	                        <a href="#">${ article.fileBean.oldName }</a>
	                        <span>${ article.fileBean.download }회 다운로드</span>
	                    </td>
	                </tr>
                </c:if>
                
                <tr>
                    <td>내용</td>
                    <td>
                        <textarea name="content" readonly>${ article.content }</textarea>
                    </td>
                </tr>
            </table>
            <div>
                <a href="#" class="btnDelete">삭제</a>
                <a href="/Jboard2/modify.do" class="btnModify">수정</a>
                <a href="/Jboard2/list.do" class="btnList">목록</a>
            </div>  
            
            <script>
            	$(function(){
            		
            		var btnDel = $('.commentList > article > div > a:first-child');
            		
            		btnDel.click(function(e){
            			e.preventDefault();
            			
            			var tag = $(this);
            			var href = tag.attr('href');
            			
            			$.ajax({
            				url: href,
            				type: 'get',
            				dataType: 'json',
            				success: function(data){
            					
            					if(data.result == 1){
            						alert("댓글 삭제 완료");
            						
            						// 댓글 삭제 후 현재 뷰에 출력되어 있는 댓글 삭제
            						tag.parent().parent().remove();
            					}            					
            				}            				
            			});            			
            			
            		}); // btnDel click 이벤트 끝 
            		
            	});
            </script> 
            
            <!-- 댓글리스트 -->
            <section class="commentList">
                <h3>댓글목록</h3>
                <c:forEach var="comment" items="${ comments }">
	                <article class="comment">
	                    <span>
	                        <span>${ comment.nick }</span>
	                        <span>${ comment.rdate }</span>
	                    </span>
	                    <textarea name="comment" readonly>${ comment.content }</textarea>
	                    <div>
	                        <a href="/Jboard2/deleteComment.do?seq=${ comment.seq }&parent=${ comment.parent }">삭제</a>
	                        <a href="#">수정</a>
	                    </div>
	                </article>
                </c:forEach>
                <c:if test="${empty comments}">
                	<p class="empty">
                    	등록된 댓글이 없습니다.
                	</p>
                </c:if>
            </section>
            
            <script>
            	$(document).ready(function(){
            		
            		var commentForm = $('.commentForm > form')
            		var btnSubmit   = $('.commentForm input[type=submit]');
            		var nick        = commentForm.find('input[name=nick]').val();
            		
            		var date  = new Date();
            		var year  = date.getFullYear(); 
            		var month = date.getMonth() + 1; 
            		var day   = date.getDate();
            		if(month < 10) {
            			month = "0" + month;
            		}
            		if(day < 10) {
            			day = "0" + day;
            		}
            		
            		var today = year+'-'+month+'-'+day;
            		var rdate = today.substring(2);
            		
            		// 폼 전송 버튼 클릭
            		btnSubmit.click(function(e){
            			e.preventDefault();
            			
            			// 서버 데이터 전송
            			var parent  = commentForm.find('input[name=parent]').val();
            			var uid     = commentForm.find('input[name=uid]').val();
            			var comment = commentForm.find('textarea').val();
            			
            			var json = {"parent" : parent,
            						"uid" : uid,
            						"comment" : comment};
            			
            			$.ajax({
            				url : '/Jboard2/comment.do',
            				type : 'post',
            				data : json,
            				dataType : 'json',
            				success : function(data) {
            					//alert(data.result);
            				}
            			});
            			
            			// 화면 부분 갱신 작업
            			var strHtml = "<article class='comment'>"
		            					 + "<span>"
		            					    + "<span class='nick'></span>"
		            					    + "&nbsp;<span class='rdate'></span>"
		            					 + "</span>"
		            					 + "<textarea name='comment' readonly></textarea>"
		            					 + "<div>"
		            					    + "<a href='#'>삭제</a>"
		            					    + "<a href='#'>수정</a>"
		            					 + "</div>"
            					 	+ "</article>";
            					 
            			var html = $.parseHTML(strHtml);
            			var dom = $(html);

            			dom.find('.nick').text(nick);
            			dom.find('.rdate').text(rdate);
            			dom.find('textarea').text(comment);
            			
            			$('.commentList').append(dom);
            			
            		}); // 폼 전송 끝
            		
            	});
            </script>

            <!-- 댓글입력폼 -->
            <section class="commentForm">
                <h3>댓글쓰기</h3>
                <form action="#" method="post">
                	<input type="hidden" name="parent" value="${ requestScope.article.seq }" />
                	<input type="hidden" name="uid" value="${ sessionScope.member.uid }" />
                	<input type="hidden" name="nick" value="${ sessionScope.member.nick}" />
                    <textarea name="comment"></textarea>
                    <div>
                        <a href="#" class="btnCancel">취소</a>
                        <input type="submit" class="btnWrite" value="작성완료"/>
                    </div>
                </form>
            </section>

        </section>
<%@ include file="../_footer.jsp" %>