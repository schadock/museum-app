class Exhibit < ActiveRecord::Base
  belongs_to :user
  belongs_to :type
  has_many :questions, :dependent=> :destroy
  has_many :cords, :dependent=> :destroy
  accepts_nested_attributes_for :questions, 
                                :reject_if => lambda { |a| a[:content].blank? }, 
                                :allow_destroy => true
  has_attached_file :avatar, styles: { medium: "800x600>", thumb: "100x100#" }, 
                    default_url: "/images/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  scope :collection, ->(name){ joins(:type).where('types.name= ?', name) if name.present?}

  before_save :set_keywords

  def set_keywords
    self.keywords = [title, description, ex_id].map(&:to_s).map(&:downcase).join(' ')
  end

  def next
    #Exhibit.where(["id > ?", id]).first
    Exhibit.order("ex_id").where("type_id <= ?", type_id).first
  end

  def previous
    #Exhibit.where(["id < ?", id]).last
    Exhibit.order("ex_id").where("type_id <= ?", type_id).last
  end
end
