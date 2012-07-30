require 'securerandom'

class Ticket < ActiveRecord::Base
  after_create :generate_code!

  belongs_to :question
  belongs_to :next_ticket, class_name: 'Ticket'

  def self.generate
    ticket = Ticket.create
    ticket.expired_at = Time.now + 1.month
    ticket.save
    ticket
  end

  def can_use?
    not self.expired? and not self.used?
  end

  def used?
    self.state == 'used'
  end

  def expired?
    self.expired_at < Time.now
  end

  def get_question!
    return self.question if self.question
    self.update_attributes question: Question.all.sample(1).first
    self.question
  end

  def check_answer answer
    result = self.question.right? answer
    ticket = result ? Ticket.generate : nil
    self.update_attributes state: 'used', right: result, answer: answer, next_ticket: ticket, used_at: Time.now
    ticket
  end

  private
  def generate_code!
    self.code = "T#{self.id}-#{::SecureRandom.hex(4).upcase}"
    self.save
  end

end
