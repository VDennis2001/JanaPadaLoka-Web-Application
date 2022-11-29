$(document).ready(function() {
    $(".fa-comments").each(function(i) {
        $(this).attr('id', (i));
    });
});

$(document).ready(function() {
    $(".post-footer").each(function(i) {
        $(this).attr('id', "comments_box-" +(i));
        $(this).hide();
    });
});

function upload(){
    var imgcanvas = document.getElementById("canv1");
    imgcanvas.style.display="block";
    var fileinput = document.getElementById("file-input");
    var image = new SimpleImage(fileinput);
    image.drawTo(imgcanvas);
  }


function showcomment(clicked_id)
{
    a='comments_box-'+clicked_id;
    var comments = document.getElementById(a);
    if (comments.style.display !== "none") 
        comments.style.display = "none";
    else 
        comments.style.display = "block";   
}
