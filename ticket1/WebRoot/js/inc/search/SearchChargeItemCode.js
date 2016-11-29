$(function () {
    $("div[id!=result2]").bind("click", function () {
        $("#result2").hide();
    });
});
function charge_search(U_hlpcode,itemcode,e) {
	 var ev = window.event || e;
	    var keycode;
	    if (window.event) keycode = ev.keyCode;
	    else keycode = ev.which;
	    if (keycode == 38 || keycode == 40 || keycode == 10 || keycode == 13) {
	        return;
	    }
    if (itemcode == "") {
        $("#result2").hide();
        return;
    }
    $.ajax({
        type: "POST",
        url: "/json/getItemCode",
        data: {"map.U_hlpcode":U_hlpcode,"map.item_code":itemcode},
        dataType: "json",
        success: function (json) {
        	$("#ulResult2").html("");
        	$(json).each(function(){
        		var content = "<li>";
        		    content += "<span style=\"display:none;\">"
        		    content += this.id;
        		    content += "</span>";
        		    content += "<span style=\"padding-left:5px;color:blue\">";
        		    content += this.code;
        		    content += "</span>";
        		    content += "<span style=\"display:none;\">";
        		    content += this.user;
        		    content += "</span>";
         		    content += "</li>";
        		$("#ulResult2").append(content);
        	});
        	if ($(json).length > 0){
        		$("#result2").show();
        		charge_bind();
        	}else{
        		$("#result2").hide();
        	}
        }
    });
/*
    var ulResult = document.getElementById("ulResult");
    if (ulResult == null) return;
    var lis = ulResult.getElementsByTagName("li");
    if (lis == null) return;
    if (lis.length == 1) {
        var spans = lis[0].getElementsByTagName("Span");
        if (spans[1].innerHTML == val) {
            lis[0].className = "highlight";
            lis[0].click();
        }
    }*/
}
function charge_bind() {
    $("#result2 ul li").hover(function () {
    	$(this).parent().find("li").removeClass("highlight");
        $(this).addClass("highlight");
    }, function () {
        $(this).removeClass("highlight");
    });
    $("#result2 ul li").click(function () {
    	var spanO = $(this).find("span");
    	$("#searchText2").val(spanO.eq(1).text());
        $("#result2").hide();
        $("#searchText2").change();
    });
}

var currentLi = 0;
function charge_SelectLi(e) {
    var ev = window.event || e;
    var keycode;
    if (window.event) { keycode = ev.keyCode; ev.cancelBubble = true; }
    else { keycode = ev.which; ev.stopPropagation(); }

    var ulResult = document.getElementById("ulResult2");
    if (ulResult == null) return;
    var lis = ulResult.getElementsByTagName("li");
    if (lis == null) {
        return;
    }

    if (keycode == 10 || keycode == 13) {
        //document.getElementById('<%=tbCom.ClientID %>').focus();
        if (currentLi > 0) {
            var spans = lis[currentLi - 1].getElementsByTagName("Span");
            $("#searchText2").val(spans[1].innerHTML);
            $("#result2").hide();
            $("#searchText2").change();
            /*
            //单击回调函数,联动
    		var click_change = $(this).attr("click_change");
    		if (click_change){
    			//execScript(click_change);
    			eval(click_change+"('" + spans[0].innerHTML + "')");
    			//window[click_change](val);
    		}*/
        }
        return;
    } else if (keycode == 38) {
        currentLi--;
    }
    else if (keycode == 40) {
        currentLi++;
    }
    else {
        currentLi = 0;
        return;
    }

    if (currentLi < 1) {
        currentLi = 1;
    }
    if (currentLi > lis.length) {
        currentLi = lis.length;
    }
    for (i = 0; i < lis.length; i++) {
        lis[i].className = "";
    }
    lis[currentLi - 1].className = "highlight";
}