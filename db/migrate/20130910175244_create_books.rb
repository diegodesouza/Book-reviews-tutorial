class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.datetime :published_at, null: false
      t.integer :author_id, null: false

      t.timestamps
    end
  end
end
