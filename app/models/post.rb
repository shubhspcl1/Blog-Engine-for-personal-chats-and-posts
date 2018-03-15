class Post < ApplicationRecord

  acts_as_votable
  belongs_to :user
  has_many :comments

  has_attached_file :image, styles: { large: "600*600", medium: "300*300", thumb: "150*150#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
