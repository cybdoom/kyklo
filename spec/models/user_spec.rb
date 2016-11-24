require 'rails_helper'

RSpec.describe User, type: :model do
  context "Validation" do
    it 'should be valid' do
      expect(FactoryGirl.build(:user)).to be_valid
    end

    it 'should be invalid' do
      expect(User.new).to be_invalid
    end
  end

  context "Record creation" do
    it 'should persists' do
      new_user = FactoryGirl.create(:user)
      expect(new_user).to be_persisted
    end

    it 'should not persists' do
      new_user = User.create
      expect(new_user).not_to be_persisted
    end
  end
end
