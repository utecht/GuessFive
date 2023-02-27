class CreateGameThings < ActiveRecord::Migration[7.0]
  def change
    create_table :game_things do |t|
      t.references :thing, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
