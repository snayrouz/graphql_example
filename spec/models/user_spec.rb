require 'rails_helper'

RSpec.describe UserType do
  let(:user) { create(:user) }

  describe '.fields' do
    subject { described_class.fields }

    specify do
      expect(subject.keys).to match_array(%w(id email updated_at created_at))
    end
  end

  describe '#created_at' do
    subject { described_class.fields['created_at'] }

    specify do
      expect(subject.type).to be GraphQL::INT_TYPE
    end
    specify do
      expect(subject.resolve(user, nill , nill)).to eq(user.created_at.to_i)
    end
  end
end
