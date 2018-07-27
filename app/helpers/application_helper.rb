module ApplicationHelper
  def table_row_name(var)
    case var
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
      "経済環境"
    when "preference_for_school"
      "学校が好きか"
    when "truancy_experience"
      "不登校経験"
    when "stars_like_event"
      "好きな行事"
    when "stars_dislike_event"
      "嫌いな行事"
    when "stars_like_subject"
      "好きな科目"
    when "stars_dislike_subject"
      "嫌いな科目"
    when "speciality"
      "得意なこと"
    when "worry"
      "苦手なこと"
    end
  end
end
