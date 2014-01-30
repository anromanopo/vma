class CreateMusicvideos < ActiveRecord::Migration
  def change
    create_table :musicvideos do |t|
      t.string :title
      t.string :artist

      t.timestamps
    end
  end
end
