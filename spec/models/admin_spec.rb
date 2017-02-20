require 'rails_helper'

describe Admin do
  let(:admin) { Admin.new }

  describe "validations" do
    it 'has to have a username and password' do
      expect(admin.invalid?).to be_truthy
      admin.username = 'test'
      admin.password = 'test'
      expect(admin.invalid?).to be_falsey
    end
  end
end