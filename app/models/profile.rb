class Profile < ApplicationRecord
  belongs_to :account, optional: true
  validates :name, presence: true, length: {minimum: 3, maximum: 42}

  def self.marketing_preferences
    {
      newsletter: 'Subscribe to newsletter (four times a month)',
      courses: 'Subscribe to Ruby-on-Rails courses',
      surveys: 'I accept to be contacted for surveys',
    }
  end

  def self.report_preferences
    {
      weekly: 'Every week',
      monthly: 'Every month',
      yearly: 'Every year',
      never: 'Never',
    }
  end

end
