class Article < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :gender
  belongs_to :sport
  belongs_to :average_age
  belongs_to :recruitement_team
end
