class CreateTables < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string     :name
      t.string     :time
      t.references :game
      t.timestamps
    end

    create_table :games do |t|
      t.string     :winner
      t.string     :winning_time
      t.references :player
      t.timestamps
    end
  end
end
