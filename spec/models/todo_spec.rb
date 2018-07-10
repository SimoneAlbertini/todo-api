require 'rails_helper'

RSpec.describe Todo, type: :model do
  it 'Todo model has a 1:m relationship with the Item model' do
    should have_many(:items).dependent(:destroy)
  end

  it 'ensure columns title and created_by are present before saving' do
    should validate_presence_of(:title)
    should validate_presence_of(:created_by)
  end
end
