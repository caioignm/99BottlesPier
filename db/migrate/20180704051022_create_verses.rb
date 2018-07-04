class CreateVerses < ActiveRecord::Migration[5.2]
  def change
    create_table :verses do |t|
      t.string :verse_start
      t.string :verse_end
      t.string :verse

      t.timestamps
    end
  end
end
