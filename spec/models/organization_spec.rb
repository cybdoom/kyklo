require 'rails_helper'

RSpec.describe Organization, type: :model do
  context 'Validation' do
    it 'should be invalid' do
      expect(FactoryGirl.build(:organization)).to be_invalid
    end

    it 'should be valid' do
      new_record = FactoryGirl.build(:organization)
      new_record.type = described_class.types.keys.sample
      new_record.pricing_policy = described_class.pricing_policies.keys.sample
      expect(new_record).to be_valid
    end
  end
end
