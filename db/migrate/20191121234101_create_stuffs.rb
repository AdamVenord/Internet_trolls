class CreateStuffs < ActiveRecord::Migration[6.0]
  def change
    create_table :stuffs do |t|
      t.string :name
      t.text :body
      t.belongs_to :board, null: false, foreign_key: true

      t.timestamps
    end
  end
end
