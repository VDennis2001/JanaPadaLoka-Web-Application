window.onload()
{
  document.getElementById('id_category').required = true;
  document.getElementById('id_title').required = true;
  document.getElementById('id_Community').required = true;  
  document.getElementById('id_phone').required = true;  
  document.getElementById('id_item_description').required = true;  
  document.getElementById('id_item_photo').required = true;  
  document.getElementById('id_item_description').placeholder="Write atleast 10 words";
}
$('.nav-tabs a').click(function (e) {
  e.preventDefault();
  $(this).tab('show');
});
function displayOptions() 
{
  const searchOptions=document.getElementsByClassName("searchOptions")[0];
  const mainBody=document.getElementById("main");
  searchOptions.style.opacity="1"
  searchOptions.style.transition="all 0.3s"
  searchOptions.style.pointerEvents="all"
  mainBody.style.opacity="0.3";
  mainBody.style.transition="0.3s"   
}
function hideOptions() 
{
  const searchOptions=document.getElementsByClassName("searchOptions")[0];
  const mainBody=document.getElementById("main");
  searchOptions.style.opacity = "0";
  searchOptions.style.pointerEvents="none"
  mainBody.style.opacity="1";
  mainBody.style.pointerEvents="all"
}

/**************
 * Services Section tabs
 */
 $('.nav-tabs a').click(function (e) {
  e.preventDefault();
  $(this).tab('show');
});


    function showlend()
    {
      console.log("hidden");
      document.getElementById('lends_container').style.display = 'none';
    }


    function clickOnX() {
      const hostBody = document.getElementById('resources');
      const mainBody = document.getElementById('main');
      hostBody.style.display = 'none';
      hostBody.style.transition = 'all 0.3s';
      hostBody.style.pointerEvents = 'none';
      mainBody.style.filter = "blur(0px)";
      mainBody.style.transition = '0.3s';
    }
    
    function displayForm() {
      const hostBody = document.getElementById('resources');
      const mainBody = document.getElementById('main');
      hostBody.style.display = 'block';
      hostBody.style.transition = 'all 0.3s';
      hostBody.style.pointerEvents = 'all';
      mainBody.style.filter = "blur(4px)";
      mainBody.style.transition = '0.3s';
    }   



// Vertical Carousel

$('#lend').carousel({
	interval: 2000
})
$('#recycle').carousel({
	interval: 2000
})
$('#donate').carousel({
	interval: 2000
})
$('#request').carousel({
	interval: 2000
})