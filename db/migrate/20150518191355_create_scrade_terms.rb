class CreateScradeTerms < ActiveRecord::Migration
  def change
    create_table :scrade_terms do |t|
      t.references :scrade_session, index: true
      t.string :title
      t.date :from
      t.date :to

      t.timestamps null: false
    end
    add_foreign_key :scrade_terms, :scrade_sessions
  end
end
