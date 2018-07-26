
var remove_btn = `<span><a class="close_form_btn">×</a></span>`

$(document).on("click", '.for_items', function(e){
  var status = $(this).siblings().prop('checked');
  $(this).parent().siblings(".do_not_care").children().prop('checked',false);
  if (status == true) {
    $(this).siblings().prop('checked',false);
  } else {
    $(this).siblings().prop('checked',true);
  }
})

$(document).on("change", '.hasCustomSelect',function(e){
  var value = $(this).find('option:selected').text()
  $(this).next().children().text(value)
})

$(document).on("click", '.do_not_care', function(e){
  $(this).parent().siblings().children().prop('checked',false);
})

$(document).on("click", '#submitSearchConditionBtn', function(e){
  lower_age = $("#q_birthday_to_age_gteq").val()
  upper_age = $("#q_birthday_to_age_lteq").val()
  lower_height = $("#q_tall_gteq").val()
  higher_height = $("#q_tall_lteq").val()
  lower_income = $("#q_income_gt").val()
  higher_income = $("#q_income_lteq").val()
  if (lower_age > upper_age && upper_age != "") {
    $("#q_birthday_to_age_gteq").val(upper_age)
    $("#q_birthday_to_age_lteq").val(lower_age)
  }
  if(lower_height > higher_height && higher_height != "") {
    $("#q_tall_gteq").val(higher_height)
    $("#q_tall_lteq").val(lower_height)
  }
  if(lower_income > higher_income && higher_income != "") {
    $("#q_income_gt").val(higher_income)
    $("#q_income_lteq").val(lower_income)
  }
})

$(document).on("click", '.add_form_btn', function(e){
  e.preventDefault();
  var clone_form = $(this).siblings(":first").clone(true)
  $(this).before(clone_form)
  $(this).prev().append(remove_btn)
})

$(document).on("click", '.close_form_btn', function(e){
  $(this).parent().parent().remove()
  $(this).prev().parent().prev().append(remove_btn)
})
