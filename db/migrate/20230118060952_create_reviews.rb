class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :review
      t.integer :item_id
      t.integer :item_rating
      t.string :reviewer_name
      t.timestamps
    end
  end
end
