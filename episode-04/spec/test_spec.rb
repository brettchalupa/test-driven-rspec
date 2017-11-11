require 'spec_helper'

class Console
  def initialize(name, manufacturer)
    @name = name
    @manufacturer = manufacturer
  end

  def formatted_name
    "#{@manufacturer} #{@name}"
  end
end

RSpec.describe Console do
  subject { described_class.new('Switch', 'Nintendo') }

  describe '#formatted_name' do
    it 'returns the manufacturer and the console name together' do
      expect(subject.formatted_name).to eql('Nintendo Switch')
    end
  end
end
