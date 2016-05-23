class Question < ActiveRecord::Base
  #attr_accessible :content, :exhibit_id, answers_attributes
  
  belongs_to :exhibit
  has_many :answers, :dependent=> :destroy
  accepts_nested_attributes_for :answers,
                                :reject_if => lambda { |a| a[:content].blank? }, 
                                :allow_destroy => true
end
 