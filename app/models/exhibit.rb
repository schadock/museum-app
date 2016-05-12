class Exhibit < ActiveRecord::Base
  belongs_to :user
  has_attached_file :avatar, styles: { medium: "800x600>", thumb: "100x100#" }, 
                    default_url: "/images/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  #scope :search, ->(keyword){ where('keywords LIKE ?', "%#{keyword.to_s.downcase}") if keyword.present? }
  scope :search, ->(keyword){ where(ex_id: keyword) if keyword.present? }

  before_save :set_keywords

  def set_keywords
    self.keywords =  ex_id
    #self.keywords = [title, author, ex_id].map(&:to_s).map(&:downcase).join(' ')
  end
end
