class Question < ActiveRecord::Base
  serialize :options, Array

  def right? answer
    answer == self.answer
  end
end
