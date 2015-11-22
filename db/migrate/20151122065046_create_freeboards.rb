class CreateFreeboards < ActiveRecord::Migration
  def change
    create_table :freeboards do |t|
      
      t.integer :hits  #조회수
      
      t.string :post_name #ID
      t.string :post_pwd #PW
      
      t.string :post_title #
      t.text :post_content #
      
      #string 256bytes text는 개길어!
      

      t.timestamps null: false
    end
  end
end
