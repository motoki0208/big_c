module ApplicationHelper
  def translate_to_japanese(row_name)
    case row_name
    when "hometown"
      "出身地"
    when "school_club"
      "クラブ・部活"
    when "gender"
      "性別"
    when "sibling_position"
      "兄弟姉妹"
    when "family_env"
      "家庭環境"
    when "economic_situation"
      "家庭の経済状況"
    when "preference_for_school"
      "学校について"
    when "truancy_experience"
      "不登校の経験"
    when "stars_lesson"
      "習い事"
    when "stars_like_event"
      "好きな学校行事"
    when "stars_dislike_event"
      "嫌いな学校行事"
    when "stars_like_place"
      "学校内で好きな場所"
    when "stars_dislike_place"
      "学校内で苦手な場所"
    when "stars_like_subject"
      "好きな科目"
    when "stars_dislike_subject"
      "嫌いな科目"
    when "speciality"
      "好きなこと・得意なこと"
    when "worry"
      "悩んでいること"
    when "worry&weak"
      "苦手なこと・悩んでいること"
    when "weak"
      "苦手なこと"
    end
  end
end
