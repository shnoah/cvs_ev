class Review < ActiveRecord::Base
    
   has_many :replies
    
   mount_uploader :my_image, S3uploaderUploader #AWS Image Upload    

end
