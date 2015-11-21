class HomeController < ApplicationController

  def index
    
    @posts = Review.all
    
  end
  
  def testpage
    @posts = Review.all
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
  
  def delete
    @this_post = Review.find(params[:id])
  end
  
  def delete_process
    @this_post = Review.find(params[:id]) 
    match = params[:delete_password]
        
    if (@this_post.post_pwd==match)
      @this_post.destroy
    else
      #패스워드 실패 시 안내 필요
    end
    
    redirect_to '/'       

  end

  def modify
    @this_post = Review.find(params[:id])
  end
  
  def modify_process
    @this_post = Review.find(params[:id]) 
  end

  def modify_confirm 

        
        @this_post = Review.find(params[:id]) 

        @this_post.post_title =params[:title]
        @this_post.post_content = params[:content]
        @this_post.category = params[:category]
        @this_post.store_info = params[:store_info]
        @this_post.prefer_time = params[:prefer_time]
        @this_post.price = params[:price]
        @this_post.kcal = params[:kcal]
        
        @this_post.save          
        
       redirect_to action: "detail", id: @this_post.id
  end

    def write_reply
      
      
      
        @my_reply = Reply.new
        @my_reply.review_id = params[:review_id]
        @my_reply.content = params[:myreply]
        @my_reply.save
        
        redirect_to :back       
    end



end