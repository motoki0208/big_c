class WorryTag < ApplicationRecord

has_many :stars_worry_tags
has_many :stars, through: :stars_worry_tags

end
