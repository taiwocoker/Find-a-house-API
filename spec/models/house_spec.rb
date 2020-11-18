require 'rails_helper'

RSpec.describe House, type: :model do
  describe 'Associations' do
    it { should have_many(:favourites) }
    it { should have_many(:users).through(:favourites) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:image) }
    it { should validate_presence_of(:description) }
  end
end
