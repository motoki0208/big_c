$(document).on("turbolinks:load", function(){
  $("#openSearchConditionBtn,#searchByAll").click(function(){
    $("#user-modal").modal("show");
  })
  $("#searchByPositive").click(function(){
    $('#searchByPositiveModal').modal("show");
  })
  $("#searchByNegative").click(function(){
    $('#searchByNegativeModal').modal("show");
  })
  $("#searchByWorry").click(function(){
    $('#searchByWorryModal').modal("show");
  })
})
