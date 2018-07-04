class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :whole_song

      t.timestamps
    end
  end
end
