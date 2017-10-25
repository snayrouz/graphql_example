require 'rails_helper'

Rspec.describe 'QueryType' do
  let(:user) { create(:user) }

  describe '#viewer' do
    subject { described_class.fields['viewer'] }

    specify do
      expect(subject.type).to be UserType
    end

    it 'passes current_user from context to UserType' do
      expect(subject.resolve(nil, nil, { current_user: user})).to eq(user)
    end
  end
end
