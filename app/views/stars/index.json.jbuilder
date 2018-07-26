json.array! @tags do |tag|
  json.id tag.id
  json.text tag.text
  json.number tag.stars_speciality_tags.length
end
