class CreateGamePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :game_players do |t|
      t.references :game, null: false, foreign_key: true
      t.references :player, null: false, foreign_key: true
      t.references :thing, null: false, foreign_key: true
      t.string :color
      t.string :status

      t.timestamps
    end
  end
end
