$(document).on('turbolinks:load', function(){

  var tag_list = $("#tag-list")
  var search_result = $("#search-result")
  var preWord = $("#tag-search-field").val();
  var selected_tags = []

  function appendUser(tag){
    var html = `<div class="tags">
                  <a class="tag-search-add chat-group-tag__btn chat-group-tag__btn--add" data-tag-id=${tag.id} data-tag-text=${tag.text} data-tag-number=${tag.number}>#${tag.text}  (${tag.number})</a>
               </div>
               <hr>`
    if($.inArray(tag.id, selected_tags) == -1){
      search_result.append(html);
    };
  }

  function appendNoUser(tag){
    var html = `<div class="chat-group-tag">
                  <p class="chat-group-tag__text">${tag}</p>
               </div>`
    search_result.append(html)
  }

  function incrementalSearch(tags){
    if (tags.length !== 0){
    tags.forEach(function(tag){
      appendUser(tag);
      });
    }
    else{
      appendNoUser("一致するタグはありません")
    }
  }

  function addGroupUser(id,text){
    var html =`<li class='tag'>
                ${text}
                <input value=${id} name='q[stars_speciality_tags_speciality_tag_id_in][]' type='hidden'>
                <a class='tag-search-remove chat-group-tag__btn chat-group-tag__btn--remove js-remove-btn'>×</a>
              </li>`
    tag_list.append(html);
    selected_tags.push(id);
    console.log(selected_tags)
  }

  function removeGroupUser(event){
    var tag_id = $(event).siblings('input').val()
    var idx = $.inArray(Number(tag_id), selected_tags)
    $(event).parent().remove();
    selected_tags.splice(
      idx, 1
    )
  }

  $(".tag-search-field").on("keyup", function(){
    var input = $(".tag-search-field").val();
    var tag_category = $(this).data("category")
    if(input.length === 0){
      search_result.empty();
    }
    else if (input != preWord){
      $.ajax({
        type: 'GET',
        url: '/stars',
        data: { keyword: input,
                category: tag_category },
        dataType: 'json'
      })
      .done(function(tags){
        search_result.empty();
        incrementalSearch(tags);
      })
      .fail(function(){
        alert('タグ検索に失敗しました')
      })
    }
    preWord = input;
  })

  search_result.on("click", ".chat-group-tag__btn--add", function(){
    id = $(this).data("tag-id")
    text = $(this).data("tag-text")
    addGroupUser(id, text)
    $(this).parent().next().remove()
    $(this).parent().remove();
  })

  tag_list.on("click", ".chat-group-tag__btn--remove", function(e){
    removeGroupUser(this);
  })
})
