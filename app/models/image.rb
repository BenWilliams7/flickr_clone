class Image < ApplicationRecord
  belongs_to :user

  validates :name, :presence => true
  validates :description, :presence => true

  has_attached_file :file, :styles => { :medium => "300x300>", :thumb => "100x100#" }
  validates_attachment_content_type :file, :content_type => /\Aimage\/.*\Z/

end
