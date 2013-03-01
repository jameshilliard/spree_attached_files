class Spree::AttachedFile < ActiveRecord::Base
  attr_accessible :attachment, :name
  has_attached_file :attachment
  validates_attachment_presence :attachment
end
