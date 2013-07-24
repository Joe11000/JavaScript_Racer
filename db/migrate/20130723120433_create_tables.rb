class CreateTables < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string     :name
      t.string     :email
      t.string     :time
      t.integer    :age
      t.references :game
      t.timestamps
    end

    create_table :games do |t|
      t.references :player
      t.timestamps
    end
  end
end
