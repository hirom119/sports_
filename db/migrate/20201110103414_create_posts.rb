class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.text       :place, null:false
      t.integer    :recruitment_team_id, null:false
      t.integer    :sports_id , null:false
      t.integer    :average_age_id, null:false
      t.integer    :gender_id , null:false
      t.timestamps
    end
  end
end
## posts テーブル
