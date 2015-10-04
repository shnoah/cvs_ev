class HomeController < ApplicationController

  def index
    
    @posts = Review.all
    
  end
  
  def testpage
    @posts = Review.all
  end

  def write
    
  end
  
  def write_process

        post = Review.new

        post.post_name= params[:a_name] 
        post.post_pwd =  params[:password]

        post.my_image = params[:image_file]
        post.post_title =params[:title]
        post.post_content = params[:content]
        post.category = params[:category]
        post.store_info = params[:store_info]
        post.prefer_time = params[:prefer_time]
        post.price = params[:price]
        post.kcal = params[:kcal]
        
        
        post.save          
        
        redirect_to '/'
    
    
  end
  
  
  
  def detail
    @this_post=Review.find(params[:id])
    
  end
  
  

end
