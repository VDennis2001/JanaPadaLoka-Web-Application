$(document).ready(function(){
    $('.herosearchButton').focus(function(){
        $('.dropdown-contents').fadeIn(1000);
    }).focusout(function(){
        $('.dropdown-contents').fadeOut(1000);
    });
  });

  $(document).ready(function(){
    $('.herosearchTerm').focus(function(){
        $('.dropdown-contents').fadeIn(1000);
    }).focusout(function(){
        $('.dropdown-contents').fadeOut(1000);
    });
  });

  // Services which are not available
  $("[id='not-available']").hover(
    function(){    $("[id='na-text']").show();                }, 
    function(){    $("[id='na-text']").css("display","none"); }
  );

    $('.enter-container').hover(function() {
      $(this).find('.share').show();
  });

  $('.share').hover(function() {
    $(this).show();
  });

  $( ".enter-container" ).mouseout(function() {
    $( this ).find('.share').hide();
  });

  $('#tab_selector').on('change', function (e) {
    $('.form-tabs li a').eq($(this).val()).tab('show');
});

  $('.nav-tabs a').click(function (e) {
    e.preventDefault();
    $(this).tab('show');
  });
 
 $(document).ready(function() {
  var unique_var = MyGlobal.var_1;
   var hash =  '#'+MyGlobal.var_1; 
   var dropdown = document.getElementById('tab_selector');
   console.log(hash);

   if (hash != "")
   {
    $('#tabs a[href="' + hash + '"]').tab('show');
    switch(hash) {
      case '#Food':
        dropdown.value = "0";
        break;
      case '#Fitness':
        dropdown.value = "1";
        break;
      case '#Tuition':
        dropdown.value = "2";
        break;
      case '#Hospitality':
        dropdown.value = "3";
        break;
      case '#Enterpreneurs':
        dropdown.value = "4";
        break;
      case '#family-pet':
        dropdown.value = "5";
        break;
      case '#fashion':
        dropdown.value = "6";
        break;
      case '#travel':
        dropdown.value = "7";
        break;
      case '#events':
        dropdown.value = "8";
        break;
      default:
        dropdown.value = "0";
    }
   }
   else
       $('#tabs a:first').tab('show');
});
