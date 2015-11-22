class FreeboardController < ApplicationController
    
    def index
        @posts = Freeboard.all
    end

    def write_process

        post = Freeboard.new

        post.post_name= params[:a_name] 
        post.post_pwd =  params[:password]

        post.post_title =params[:title]
        post.post_content = params[:content]
        
        post.save          
        
        redirect_to '/freeboard/'
    
    end
    
  def detail
    @this_post=Freeboard.find(params[:id])
  end
    
end
