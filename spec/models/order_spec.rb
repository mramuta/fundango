require 'rails_helper'

describe Order do
  let(:order) { Order.new }

  describe "validations" do
    it 'has to have a email, name, and showtime' do
    	auditorium = Auditorium.create(capacity: 100)
    	show = Show.create(title: 'Test Show',  description: "test desc", image_url:'test_url', runtime:119)
    	showtime = Showtime.create(auditorium_id: auditorium.id,show_id: show.id,min_after_midnight: 1200)
      expect(order.invalid?).to be_truthy
      order.email = 'test@test.com'
      order.name = 'test'
      order.showtime_id = showtime.id
      expect(order.invalid?).to be_falsey
    end
  end
end