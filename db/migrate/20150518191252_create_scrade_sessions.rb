class CreateScradeSessions < ActiveRecord::Migration
  def change
    create_table :scrade_sessions do |t|
      t.string :title
      t.text :description
      t.date :from
      t.date :to

      t.timestamps null: false
    end
  end
end
