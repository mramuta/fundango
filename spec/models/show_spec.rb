require 'rails_helper'

describe Show do
  let(:show) { Show.new }

  describe "validations" do
    it 'has to have a title, runtime, desc, and image_url' do
      expect(show.invalid?).to be_truthy
      show.title = 'Jaws'
      show.runtime = 99
      show.description = 'shark eats loads of people'
      show.image_url = 'www.shark.com'
      expect(show.invalid?).to be_falsey
    end
  end
end