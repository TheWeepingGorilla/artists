class CreateTables < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
    end
    create_table :tags do |t|
      t.string :name
    end
    create_table :artists_tags do |t|
      t.integer :artist_id
      t.integer :tag_id
    end
  end
end
