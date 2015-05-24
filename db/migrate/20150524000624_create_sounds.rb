class CreateSounds < ActiveRecord::Migration
  def change
    create_table :sounds do |t|
      t.integer :artist_id
      t.string :name
      t.text :description
      t.string :audiofile

      t.timestamps null: false
    end
  end
end
