json.array! @tags do |tag|
  json.id tag.id
  json.name tag.name
  json.number tag.stars_speciality_tags.length if tag.kind_of?(SpecialityTag)
  json.number tag.stars_worry_tags.length if tag.kind_of?(WorryTag)
end
