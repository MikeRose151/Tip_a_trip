require 'cloudinary'

class CloudinaryService
  def self.upload_image(image_path)
    unique_identifier = generate_unique_identifier(File.basename(image_path))

    # Check if the image with the unique identifier already exists on Cloudinary
    existing_image = Cloudinary::Search.expression("public_id:#{unique_identifier}").execute

    if existing_image["total"] == 0
      # Image doesn't exist on Cloudinary, so upload it
      Cloudinary::Uploader.upload(image_path, public_id: unique_identifier)
      puts "Image uploaded: #{unique_identifier}"
    else
      # Image already exists on Cloudinary, so skip the upload
      puts "Image already exists: #{unique_identifier}"
    end
  end
end
