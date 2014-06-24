class Spree::AttachedFile < ActiveRecord::Base
  default_scope order('created_at DESC')
  attr_accessor :attachment, :name
  validates :name, presence: true, uniqueness: true

  has_attached_file :attachment,
    :url => '/spree/attached_files/:id/:basename.:extension',
    :path => ':rails_root/public/spree/attached_files/:id/:basename.:extension'

  validates_attachment_presence :attachment
end
