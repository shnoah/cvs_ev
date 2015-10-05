class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      
      t.integer :review_id
      t.string :content      
      

      t.timestamps null: false
    end
  end
end
