class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.integer :number
      t.string :title
      t.string :author
      t.string :publisher
      t.integer :date
      t.string :note
      t.integer :genre_id
      t.timestamps
    end
  end
end
