class Picture < ApplicationRecord
  validates :content_or_image, presence: true
  validates :content, length: { maximum: 140 }


  belongs_to :user

  mount_uploader :image, ImageUploader

  private

  def content_or_image
    content.presence or image.presence
  end
end
