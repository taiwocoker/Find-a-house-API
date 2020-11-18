require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Associations' do
    it { should have_many(:favourites) }
    it { should have_many(:houses).through(:favourites) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:username) }
    it { should validate_uniqueness_of(:email).case_insensitive }
    it { should validate_presence_of(:email) }
  end
end
