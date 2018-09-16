var curslide = 0;
var totslide = 0;
var slideint = "";
var slidetim = 3000;

function triggerslider()
{
    $("#bannerinner").find(".banner").each(function(){ totslide++; });
    if(totslide>1) {
        slideint = setTimeout("slide()", slidetim);
    }
}

function slide()
{
    var next = parseInt(parseInt(curslide)+parseInt(1));
    if(next>=totslide) { next = 0; }
    
    $("#bdiv"+curslide).fadeOut("slow");
    $("#bdiv"+next).fadeIn("slow", function(){
        curslide = next;
        slideint = setTimeout("slide()", slidetim);
    });
}