class CreateRecruitementTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :recruitement_teams do |t|

      t.timestamps
    end
  end
end
