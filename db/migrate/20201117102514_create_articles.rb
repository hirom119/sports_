class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.integer     :gender  ,null: false
      t.integer     :acerage_age, null:false
      t.integer     :recruitment_team, null:false
      t.integer     :sports, null:false
      t.timestamps
    end
  end
end
