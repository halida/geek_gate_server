class Question < ActiveRecord::Base
  attr_accessible :answer, :author_id, :description, :options, :title, :type
end
