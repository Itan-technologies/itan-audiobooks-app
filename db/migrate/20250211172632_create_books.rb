class CreateBooks < ActiveRecord::Migration[8.0]
   def change
    create_table :books, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.string :title
      t.text :description
      t.string :edition_number
      t.string :contributors
      t.integer :primary_audience
      t.boolean :publishing_rights
      t.string :file_url
      t.string :cover_image_url
      t.integer :status
      t.integer :price

      t.timestamps
    end
  end
end
