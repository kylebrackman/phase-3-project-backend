class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    t.string :review
    t.integer :item_id
    t.timestamps
  end
end
