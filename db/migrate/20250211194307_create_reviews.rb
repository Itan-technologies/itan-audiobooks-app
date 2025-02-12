class CreateReviews < ActiveRecord::Migration[8.0]
  def change
    create_table :reviews, id: :uuid do |t|      
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.references :audiobook, null: false, foreign_key: true, type: :uuid    
      t.integer :ratings
      t.text :comments

      t.timestamps
    end
  end
end
