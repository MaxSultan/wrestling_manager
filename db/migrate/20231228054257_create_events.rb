class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.string :location
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
