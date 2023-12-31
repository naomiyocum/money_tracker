require 'rails_helper'

RSpec.describe Debt, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:label) }
    it { is_expected.to validate_presence_of(:amount) }
  end
end
