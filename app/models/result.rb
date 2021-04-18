class Result < ApplicationRecord
  belongs_to :user
  attachment :image
end
