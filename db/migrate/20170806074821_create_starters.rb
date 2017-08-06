class CreateStarters < ActiveRecord::Migration
  def change
    create_table :starters do |t|
      t.string :headline
      t.string :author
      t.string :body
      t.boolean :pay

      t.timestamps null: false
    end
  end
end
