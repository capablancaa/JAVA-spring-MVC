jQuery(function(){
		$('#enddate').attr("readonly", "readonly");
		$('#startdate').attr("readonly", "readonly");
		
		Date.format = 'dd.mm.yyyy';
		$('.date-pick').datePicker();
		$('#startdate').bind(
		'dpClosed',
		function(e, selectedDates)
		{
			var d = selectedDates[0];
			if (d) {
				d = new Date(d);
				$('#enddate').dpSetStartDate(d.addDays(1).asString());
			}
		}
	);
	$('#enddate').bind(
		'dpClosed',
		function(e, selectedDates)
		{
			var d = selectedDates[0];
			if (d) {
				d = new Date(d);
				$('#startdate').dpSetEndDate(d.addDays(-1).asString());
			}
		}
	);      
});

var acttab = 'rezervasyoncont'
function tabsw(ob, ob2)
{
    if(ob==acttab) { return false; }
    
    $("#"+acttab).fadeOut("fast", function(){
        $("#"+ob).fadeIn("fast", function(){
            acttab = ob;
            $("#icerikcontselector").find("a").attr("id", "");
            $(ob2).attr("id", "akticr");
        });
    });
}

var lowreplaced = false;
function replacePnos()
{
    if(1==1) {
        var docw = $(document).width();
        if(docw<=800)
        {
            if(lowreplaced==false)
            {
                var rep1obj = $("#rep1");
                var rep1con = $("#rep1")[0].outerHTML;
                var rep1withobj = $("#rep1with");
                var rep1withcon = $("#rep1with")[0].outerHTML;
                var rep2obj = $("#rep2");
                var rep2con = $("#rep2")[0].outerHTML;
                var rep2withobj = $("#rep2with");
                var rep2withcon = $("#rep2with")[0].outerHTML;
                
                $(rep1obj).replaceWith(rep1withcon);
                $(rep1withobj).replaceWith(rep1con);
                $(rep2obj).replaceWith(rep2withcon);
                $(rep2withobj).replaceWith(rep2con);
                
                lowreplaced = true;
            }
            
            if(mbarlowered==false)
            {
                $(".mbar").animate({height:"46px"}, 50);
                mbarlowered = true;
            }
        } else {
            if(lowreplaced==true)
            {
                var rep1obj = $("#rep1");
                var rep1con = $("#rep1")[0].outerHTML;
                var rep1withobj = $("#rep1with");
                var rep1withcon = $("#rep1with")[0].outerHTML;
                var rep2obj = $("#rep2");
                var rep2con = $("#rep2")[0].outerHTML;
                var rep2withobj = $("#rep2with");
                var rep2withcon = $("#rep2with")[0].outerHTML;
                
                $(rep1obj).replaceWith(rep1withcon);
                $(rep1withobj).replaceWith(rep1con);
                $(rep2obj).replaceWith(rep2withcon);
                $(rep2withobj).replaceWith(rep2con);
                
                lowreplaced = false;
            }
            
            if(mbarlowered==true)
            {
                $(".mbar").animate({height:"100px"}, 50);
                mbarlowered = false;
            }
        }
    }
}

var mbarlowered = false;
function setMbar()
{
    var docw = $(document).width();
    if(docw<=800)
    {
        if(mbarlowered==false)
        {
            $(".mbar").animate({height:"46px"}, 50);
            mbarlowered = true;
        }
    } else {
        if(mbarlowered==true)
        {
            $(".mbar").animate({height:"100px"}, 50);
            mbarlowered = false;
        }
    }
}

var totalbullet = 0;
var totalbulletpage = 0;
var curbulletpage = 0;
var bulletperpage = 2;
var bulletpaused = false;
var bulletinterval = "";
function setBullets()
{
    $("#bulletmain").find(".hnew").each(function(){ totalbullet++; });
    totalbulletpage = parseInt(Math.round(totalbullet/bulletperpage));
    if(totalbulletpage>=2)
    {
        var linkz = "";
        for(i=0;i<totalbulletpage;i++)
        {
            linkz += "<a href='javascript:void(0);' onclick='bulletpage("+i+",this)'>&nbsp;</a>";
        }
        
        $("#bulleter").html(linkz);
        $("#bulleter a:first-child").attr("id", "actbullet");
        
        bulletinterval = setTimeout("bulletslide()", 5000);
        
        $("#bulletinner, #bulleter").mouseover(function(){
            bulletpaused = true;
        }).mouseout(function(){
            bulletpaused = false;
            clearInterval(bulletinterval); bulletinterval = setTimeout("bulletslide()", 5000);
        });
    }
}

function bulletslide()
{
    if(bulletpaused==true) { return false; }
    
    var nextpage = curbulletpage+1;
    if(nextpage>=totalbulletpage) { nextpage = 0; }
    var goingto = (114*2)*nextpage;
            
    $("#bulletinner").animate({"top":-goingto}, 1000, function(){
        curbulletpage = nextpage;
                
        $("#bulleter a").attr("id", "");
        $("#bulleter a:eq("+curbulletpage+")").attr("id", "actbullet");
        
        bulletinterval = setTimeout("bulletslide()", 5000);
    });
}

function bulletpage(q, o)
{
    if(q==curbulletpage) { return false; }
    
    var curpos = q;
    var goingto = (114*2)*curpos;
    
    $("#bulletinner").animate({"top":-goingto}, 1000, function(){
        curbulletpage = q;
        $("#bulleter a").attr("id", "");
        $(o).attr("id", "actbullet");
    });
}

var totalslide = 0;
var curslide = 0;
var slidepaused = false;
var slideinterval = "";

function setSlides()
{
    $("#newslide2").find(".vdiv").each(function(){ totalslide++; });
    var newwidth = totalslide*340;
    $("#newslide2").css("width", newwidth+"px");
    
    if(totalslide>=4)
    {
        var linkz = "";
        for(i=0;i<(totalslide-2);i++)
        {
            linkz += "<a href='javascript:void(0);' onclick='slidepage("+i+",this)'>&nbsp;</a>";
        }
        
        $("#slidebullets").html(linkz);
        $("#slidebullets a:first-child").attr("id", "actslide");
        
        slideinterval = setTimeout("slideslide()", 3500);
        
        $("#newslide2, #slidebullets").mouseover(function(){
            slidepaused = true;
        }).mouseout(function(){
            slidepaused = false;
            clearInterval(slideinterval); slideinterval = setTimeout("slideslide()", 3500);
        });
    } else {
        $("#slidebullets").html("<a href='javascript:void(0);' id='actslide'>&nbsp;</a>");
    }
}

function slideslide()
{
    if(slidepaused==true) { return false; }
    
    var docw = $(document).width();
    if(docw<=800)
    {
        var goesw = 352;
        
        var nextslide = curslide+1;
        if(nextslide>=(totalslide)) { nextslide = 0; }
        var goingnext = (goesw)*nextslide;
                
        $("#newslide2").animate({"top":-goingnext,"left":"0px"}, 1000, function(){
            curslide = nextslide;
                    
            $("#slidebullets a").attr("id", "");
            $("#slidebullets a:eq("+curslide+")").attr("id", "actslide");
            
            slideinterval = setTimeout("slideslide()", 3500);
        });
    } else {
        var goesw = $("#newslide2").find(".vdiv").width();
        if(goesw==318) { goesw = 340; } else { goesw = 258; }
        
        var nextslide = curslide+1;
        if(nextslide>=(totalslide-2)) { nextslide = 0; }
        var goingnext = (goesw)*nextslide;
                
        $("#newslide2").animate({"left":-goingnext, "top":"0px"}, 1000, function(){
            curslide = nextslide;
                    
            $("#slidebullets a").attr("id", "");
            $("#slidebullets a:eq("+curslide+")").attr("id", "actslide");
            
            slideinterval = setTimeout("slideslide()", 3500);
        });
    }
}

function slidepage(q, o)
{
    if(q==curslide) { return false; }
    
    var curpos = q;
    var goingnext = (340)*curpos;
    
    var docw = $(document).width();
    if(docw<=800)
    {
        var goingnext = (258)*curpos;
    }
    
    $("#newslide2").animate({"left":-goingnext}, 1000, function(){
        curslide = q;
        $("#slidebullets a").attr("id", "");
        $(o).attr("id", "actslide");
    });
}

function MesafeVer(){
	var nerefr = document.getElementById('Nereden').options[document.getElementById('Nereden').options.selectedIndex].value;
	var nereto = document.getElementById('Nereye').options[document.getElementById('Nereye').options.selectedIndex].value;
	if(nerefr!=""&&nereto!="")
    {
        $("#hesaplanan").html("...hesaplanýyor...");
        
        $.post("/MesafeVer.php", "Nereden="+encodeURIComponent(nerefr)+"&Nereye="+encodeURIComponent(nereto), function(data){
            $("#hesaplanan").html(data);
        });
    }
}
$(function(){
    
    var $containerid = $('#containerid');
         
      var $optionSets = $('#options .option-set'),
          $optionLinks = $optionSets.find('a');

      $optionLinks.click(function(){
        var $this = $(this);
        // don't proceed if already selected
        if ( $this.hasClass('selected') ) {
          return false;
        }
        var $optionSet = $this.parents('.option-set');
        $optionSet.find('.selected').removeClass('selected');
        $this.addClass('selected');
  
        // make option object dynamically, i.e. { filter: '.my-filter-class' }
        var options = {},
            key = $optionSet.attr('data-option-key'),
            value = $this.attr('data-option-value');
        // parse 'false' as false boolean
        value = value === 'false' ? false : value;
        options[ key ] = value;
        if ( key === 'layoutMode' && typeof changeLayoutMode === 'function' ) {
          // changes in layout modes need extra logic
          changeLayoutMode( $this, options )
        } else {
          // otherwise, apply new options
          $containerid.isotope( options );
        }
        
        return false;
      });

});
$(function(){
	$('form').jqTransform({imgPath:'tema/'});
});
jQuery(document).ready(function(){
	jQuery("#formID").validationEngine();
    if(document.getElementById('transfercont'))
    {
        $("#transfercont").css({"position":"relative","top":"0px","display":"none"});
    }
    
    if(document.getElementById('alisyeri'))
    {
        setsubs($("#alisyeri"), "a1");
        setsubs($("#varisyeri"), "a2");
    }
    
    //$(".mbar").animate({height:"46px"}, 50);
    $(".macar").click(function(){
        var curh = $(".mbar").height();
        if(curh=="46")
        {
            var needhei = -46; $(".mbar").find("a").each(function(){ needhei = needhei+46; });
            needhei = needhei+1;
            
            $(".mbar").animate({height:needhei+"px"}, 350);
        } else {
            $(".mbar").animate({height:"46px"}, 350);
        }
    });
    
    $("#logo").find("img").css("cursor", "pointer");
    $("#logo").find("img").click(function(){ document.location.href = '/'; })
});

function parasec(selector, index, obj)
{
    var sel = $("#"+selector);
    if(sel)
    {
        $(".paraa").attr("id", "");
        $(obj).attr("id", "act");
        $("#"+selector).val(index);
    }
}

var eubirim = 1;
var dlbirim = 1;

function kurcevir(q)
{
    var tl = $("#k1").val();
    var eu = $("#k2").val();
    var dl = $("#k3").val();
    
    console.log(tl);
    
    if(q==1)
    {
        var neweu = tl/eubirim;
        var newdl = tl/dlbirim;
        
        $("#k2").val(neweu.toFixed(2));
        $("#k3").val(newdl.toFixed(2));
    } else if(q==2) {
        var newtl = eu*eubirim;
        var newdl = eu*eubirim/dlbirim;
        
        $("#k1").val(newtl.toFixed(2));
        $("#k3").val(newdl.toFixed(2));
    } else if(q==3) {
        var newtl = dl*dlbirim;
        var neweu = dl*dlbirim/eubirim;
        
        $("#k1").val(newtl.toFixed(2));
        $("#k2").val(neweu.toFixed(2));
    }
}

function tryeniform(formo)
{
    var goes = $("#target").val();
    $(formo).attr("action", goes);
}

function setsubs(ob, target)
{
    var curval = $(ob).val();
    if(curval!="")
    {
        $.post("/_external.php", {f:"yergetir",id:curval}, function(data){
            if(data=="fail")
            {
                alert("Mevkiiler getirilirken bir hata oluþtu, lütfen daha sonra tekrar deneyin!");
            } else {
                $("#"+target).html(data);
                fix_select('select#'+target);
            }
        });
    } else {
        $("#"+target).html("<option value=''>Lütfen önce þehir seçin...</option>");
        fix_select('select#'+target);
    }
}

function fix_select(selector) {
  selectedVal = $(selector).children(':selected').val();
  $(selector).children('option').removeAttr('selected');
  $(selector).children('option[value="'+selectedVal+'"]').attr('selected','selected');

  $(selector).removeClass('jqTransformHidden');
  //$(selector).css('display','block');
  $(selector).prev('ul').remove();
  $(selector).prev('div.selectWrapper').remove();

  var selectElm = $(selector).closest('.jqTransformSelectWrapper').html();
  selectElm = selectElm.replace(/<div>(.*)<\/div>/g, "");

  $(selector).closest('.jqTransformSelectWrapper').after(selectElm);
  $(selector).closest('.jqTransformSelectWrapper').remove();

  $(selector).closest('form').removeClass('jqtransformdone');
  $(selector).closest('form').jqTransform();
}

function fiyatformchk()
{
    var val1 = $("#alisyeri").val();
    var val2 = $("#varisyeri").val();
    
    if(val1==""||val2=="")
    {
        alert("Lütfen alýþ ve dönüþ þehirlerini seçin!");
        return false;
    }
}