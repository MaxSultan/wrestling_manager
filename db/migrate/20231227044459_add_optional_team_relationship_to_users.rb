class AddOptionalTeamRelationshipToUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :team_id, :integer, null: true
  end
end
