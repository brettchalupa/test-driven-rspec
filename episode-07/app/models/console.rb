class Console < ActiveRecord::Base
  validates :name, presence: true
  validates :manufacturer, presence: true

  scope :nintendo, -> { where(manufacturer: 'Nintendo') }

  def formatted_name
    "#{manufacturer} #{name}"
  end
end
