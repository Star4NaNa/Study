$(function () {
    $("div[id!=result]").bind("click", function () {
        $("#result").hide();
    });
});
function search(keyword,e) {
	 var ev = window.event || e;
	    var keycode;
	    if (window.event) keycode = ev.keyCode;
	    else keycode = ev.which;
	    if (keycode == 38 || keycode == 40 || keycode == 10 || keycode == 13) {
	        return;
	    }
    if (keyword == "") {
        $("#result").hide();
        $("#mapId").val("");
        return;
    }
    $.ajax({
        type: "POST",
        url: "/json/getOrder",
        data: "map.U_Code=" + keyword,
        dataType: "json",
        success: function (json) {
        	$("#ulResult").html("");
        	$(json).each(function(){
        		var content = "<li>";
        		    content += "<span style=\"display:none;\">"
        		    content += this.S_Id;
        		    content += "</span>";
        		    content += "<span style=\"padding-left:5px;color:blue\">";
        		    content += this.U_Code;
        		    content += "</span>";
        		    content += "<span style=\"padding-left:5px;\">";
        		    content += this.customerName;
        		    content += "</span>";
        		    content += "<span style=\"padding-left:5px;\">";
        		    content += this.customerCode;
        		    content += "</span>";
        		    content += "</li>";
        		$("#ulResult").append(content);
        	});
        	if ($(json).length > 0){
        		$("#result").show();
        		bind();
        	}else{
        		$("#result").hide();
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
function bind() {
    $("#result ul li").hover(function () {
    	$(this).parent().find("li").removeClass("highlight");
        $(this).addClass("highlight");
    }, function () {
        $(this).removeClass("highlight");
    });
    $("#result ul li").click(function () {
    	var spanO = $(this).find("span");
    	$("#mapId").val(spanO.eq(0).text());
    	$("#searchText").val(spanO.eq(1).text());
        $("#result").hide();
        $("#searchText").change();
        /*
        //单击回调函数,联动
		var click_change = $(this).parent().attr("click_change");
		if (click_change){
			//execScript(click_change);
			eval(click_change+"('" + spanO.eq(0).text() + "')");
			//window[click_change](val);
		}*/
    });
}

var currentLi = 0;
function SelectLi(e) {
    var ev = window.event || e;
    var keycode;
    if (window.event) { keycode = ev.keyCode; ev.cancelBubble = true; }
    else { keycode = ev.which; ev.stopPropagation(); }

    var ulResult = document.getElementById("ulResult");
    if (ulResult == null) return;
    var lis = ulResult.getElementsByTagName("li");
    if (lis == null) {
        return;
    }

    if (keycode == 10 || keycode == 13) {
        //document.getElementById('<%=tbCom.ClientID %>').focus();
        if (currentLi > 0) {
            var spans = lis[currentLi - 1].getElementsByTagName("Span");
            $("#mapId").val(spans[0].innerHTML);
            $("#searchText").val(spans[1].innerHTML);
            $("#result").hide();
            $("#searchText").change();
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