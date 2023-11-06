require 'rails_helper'

RSpec.describe Asset, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:label) }
    it { is_expected.to validate_presence_of(:amount) }
  end
end
