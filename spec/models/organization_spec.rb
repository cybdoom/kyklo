require 'rails_helper'

RSpec.describe Organization, type: :model do
  context 'Validation' do
    it 'should be invalid' do
      expect(Organization.new).to be_invalid
    end

    it 'should be valid' do
      expect(FactoryGirl.build(:organization)).to be_valid
    end
  end

  context 'Record creation' do
    it 'should not create record' do
      expect(Organization.create).not_to be_persisted
    end

    it 'should create record' do
      expect(FactoryGirl.create(:organization)).to be_persisted
    end
  end
end
