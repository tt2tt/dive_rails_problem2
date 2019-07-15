class Picture < ApplicationRecord
  belongs_to :user

  validates :content_or_image, presence: true
  validates :content, length: { maximum: 140 }

  mount_uploader :image, ImageUploader

  private

  def content_or_image
    content.presence or image.presence
  end
end
