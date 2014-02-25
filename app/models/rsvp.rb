class Rsvp < ActiveRecord::Base
  def set_coming
    self.answer = 'coming'
  end
  
  def set_not_coming
    self.answer = 'not_coming'
  end
  
  def coming?
    self.answer == 'coming'
  end
  
  def not_coming?
    !coming?
  end
end
