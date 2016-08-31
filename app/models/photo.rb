class Photo < ActiveRecord::Base
  has_attached_file :image
  validates_attachment :image,
                    content_type: { content_type: ["image/jpeg", "image/png"] },
                    size: { in: 0..1000.kilobytes }
end
