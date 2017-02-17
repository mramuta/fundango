require 'rails_helper'

describe Auditorium do
  let(:auditorium) { Auditorium.new }

  describe "validations" do
    it 'has to have a capacity' do
      expect(auditorium.invalid?).to be_truthy
      auditorium.capacity = 99
      expect(auditorium.invalid?).to be_falsey
    end
  end
end