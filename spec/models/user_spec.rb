require 'rails_helper'

describe 'User' do
it 'responds to username' do
  user = User.create

  expect(user).to respond_to :username
end
end 