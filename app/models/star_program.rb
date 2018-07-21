class StarProgram < ApplicationRecord
  belongs_to :star, optional: true
  belongs_to :program, optional: true
end
