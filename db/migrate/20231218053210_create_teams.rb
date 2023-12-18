class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.string :entity_name
      t.string :gender

      t.timestamps
    end
  end
end
