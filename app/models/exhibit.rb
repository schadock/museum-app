class Exhibit < ActiveRecord::Base
  belongs_to :user
  belongs_to :type
  has_many :questions, dependent: :destroy
  accepts_nested_attributes_for :questions, 
                                :reject_if => lambda { |a| a[:content].blank? }, 
                                :allow_destroy => true
  has_attached_file :avatar, styles: { medium: "800x600>", thumb: "100x100>" }, 
                    default_url: "/images/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  #scope :search, ->(keyword){ where('keywords LIKE ?', "%#{keyword.to_s.downcase}") if keyword.present? }
  scope :search, ->(keyword){ where(ex_id: keyword) if keyword.present? }
  scope :collection, ->(name){ joins(:type).where('types.name= ?', name) if name.present?}

  before_save :set_keywords

  def set_keywords
    self.keywords =  ex_id
    #self.keywords = [title, author, ex_id].map(&:to_s).map(&:downcase).join(' ')
  end

  def previous
    Exhibit.where(["id < ?", id]).last
  end

  def next
    Exhibit.where(["id > ?", id]).first
  end

  def tour_previous
    Exhibit.where(["ex_id < ?", ex_id]).last
  end

  def tour_next
    Exhibit.where(["ex_id > ?", ex_id]).first
  end
end
