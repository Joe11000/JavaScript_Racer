class CreatePlayersGames < ActiveRecord::Migration
  def change
    create_table :games_players, id: false do |t|
      t.belongs_to :game
      t.belongs_to :player
    end

    add_index :games_players, [:game_id, :player_id], unique: true
  end
end
