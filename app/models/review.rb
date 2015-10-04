class Review < ActiveRecord::Base
    
    
   mount_uploader :my_image, S3uploaderUploader #AWS Image Upload    

end
