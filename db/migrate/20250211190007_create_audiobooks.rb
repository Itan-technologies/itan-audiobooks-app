class CreateAudiobooks < ActiveRecord::Migration[8.0]
  def change
    create_table :audiobooks, id: :uuid do |t|
      t.references :book, null: false, foreign_key: true, type: :uuid
      t.string :audio_file_url
      t.integer :duration
      t.boolean :status
      t.timestamps
    end
  end
end