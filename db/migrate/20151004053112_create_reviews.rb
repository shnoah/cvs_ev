class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
    
      t.integer :hits  #조회수
      t.integer :like #좋아요 
      
      t.string :post_name #ID
      t.string :post_pwd #PW
      
      t.string :post_title #
      t.text :post_content #
      
      t.string :category
      t.string :store_info #cu/gs25/7-11/ministop
      t.string :prefer_time #breakfast, launch, dinner
      t.string :price 
      t.string :kcal 
      t.string :my_image #이미지 첨부
      
      #string 256bytes text는 개길어!
    
      t.timestamps null: false
    end
  end
end
