class Ticket < ActiveRecord::Base
  attr_accessible :expired_at, :printed_at, :type
end
