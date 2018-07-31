$(document).on('turbolinks:load', function(){

  var worry_tag_list = $("#worry-tag-list")
  var worry_search_result = $("#worry-search-result")
  var worry_pre_word = $("#worry-worry-tag-search-field").val();
  var selected_worry_tags = []

  function appendUser(tag){
    var html = `<div class="tags">
                  <a class="tag-search-add chat-group-tag__btn chat-group-tag__btn--add" data-tag-id=${tag.id} data-tag-name=${tag.name} data-tag-number=${tag.number}>#${tag.name}  (${tag.number})</a>
               </div>
               <hr>`
    if($.inArray(tag.id, selected_worry_tags) == -1){
      worry_search_result.append(html);
    };
  }

  function appendNoUser(tag){
    var html = `<div class="chat-group-tag">
                  <p class="chat-group-tag__name">${tag}</p>
               </div>`
    worry_search_result.append(html)
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

  function addGroupUser(id,name){
    var html =`<li class='tag'>
                ${name}
                <input value=${id} name='q[stars_worry_tags_worry_tag_id_in][]' type='hidden'>
                <a class='tag-search-remove chat-group-tag__btn chat-group-tag__btn--remove js-remove-btn'>×</a>
              </li>`
    worry_tag_list.append(html);
    selected_worry_tags.push(id);
  }

  function removeGroupUser(event){
    var tag_id = $(event).siblings('input').val()
    var idx = $.inArray(Number(tag_id), selected_worry_tags)
    $(event).parent().remove();
    selected_worry_tags.splice(
      idx, 1
    )
  }

  $(".worry-tag-search-field,.worry-tag-search-field").on("keyup", function(){
    var input = $(".worry-tag-search-field").val();
    var tag_category = $(this).data("category")
    if(input.length === 0){
      worry_search_result.empty();
    }
    else if (input != worry_pre_word){
      $.ajax({
        type: 'GET',
        url: '/stars',
        data: { keyword: input,
                category: tag_category },
        dataType: 'json'
      })
      .done(function(tags){
        worry_search_result.empty();
        incrementalSearch(tags);
      })
      .fail(function(){
        alert('タグ検索に失敗しました')
      })
    }
    worry_pre_word = input;
  })

  worry_search_result.on("click", ".chat-group-tag__btn--add", function(){
    id = $(this).data("tag-id")
    name = $(this).data("tag-name")
    addGroupUser(id, name)
    $(this).parent().next().remove()
    $(this).parent().remove();
  })

  worry_tag_list.on("click", ".chat-group-tag__btn--remove", function(e){
    removeGroupUser(this);
  })
})
