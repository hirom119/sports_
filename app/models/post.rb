class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :gender
  belongs_to_active_hash :average_age
  belongs_to_active_hash :recruitment_team
  belongs_to :user
  has_many :comments

  def self.search(search)
    if search != ''
      Post.where('competition LIKE(?)', "%#{search}%")
    else
      Post.all
    end
  end
  with_options numericality: { other_than: 1 } do
    validates :gender_id
    validates :recruitment_team_id
    validates :average_age_id
  end
  with_options presence: true do
    validates :gender_id
    validates :recruitment_team_id
    validates :competition
    validates :average_age_id
    validates :place
  end
end
