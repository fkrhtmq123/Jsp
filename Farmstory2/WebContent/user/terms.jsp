<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../_header.jsp" %>
<script>
	$(function(){
		var checkbox = $('input[type=checkbox]');
		var nextBtn = $('.terms > div > a:eq(1)');
		
		nextBtn.click(function(){
			var chkTerms = checkbox.eq(0).is(':checked');
			var chkPrivacy = checkbox.eq(1).is(':checked');
			
			if(chkTerms && chkPrivacy) {
				return true;
			} else {
				alert('동의 하셔야 합니다.');
				return false;
			}
		});
	});
</script>
<body>
    <div id="wrapper">
        <section id="user" class="terms">
            <table>
                <caption>사이트 이용약관</caption>
                <tr>
                    <td>
                        <textarea readonly>${ vo.getTerms() }</textarea>
                        <p>
                            <label><input type="checkbox" name="chk1"/>동의합니다.</label>
                        </p>
                    </td>
                </tr>
            </table>
            <table>
                <caption>개인정보 취급방침</caption>
                <tr>
                    <td>
                        <textarea readonly>${ vo.privacy }</textarea>
                        <p>
                            <label><input type="checkbox" name="chk2"/>동의합니다.</label>
                        </p>
                    </td>
                </tr>
            </table>
            <div>
                <a href="/Farmstory2/user/login.do">취소</a>
                <a href="/Farmstory2/user/register.do">다음</a>
            </div>
        </section>
<%@ include file="../_footer.jsp" %>