class CreateChapters < ActiveRecord::Migration[8.0]
  def change
    create_table :chapters, id: :uuid do |t|     
      t.references :audiobook, null: false, foreign_key: true, type: :uuid
      t.string :title
      t.string :audio_file_url
      t.uuid :duration

      t.timestamps
    end
  end
end
