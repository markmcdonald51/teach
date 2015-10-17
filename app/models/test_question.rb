class TestQuestion < ActiveRecord::Base
  belongs_to :class_test
  has_many :mutiple_choise_answers
end
