require 'rails_helper'

describe Showtime do
  let(:showtime) { Showtime.new }

  describe "validations" do
    it 'has to have a auditorium_id, show_id, desc, and image_url' do
    	auditorium = Auditorium.create(capacity: 100)
    	show = Show.create(title: 'Test Show',  description: "test desc", image_url:'test_url', runtime:119)
      expect(showtime.invalid?).to be_truthy
      showtime.auditorium_id = auditorium.id
      showtime.show_id = show.id
      showtime.min_after_midnight = 1200
      expect(showtime.invalid?).to be_falsey
    end
  end
end