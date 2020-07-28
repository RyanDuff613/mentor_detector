require 'rails_helper'

describe Technology do
  
  it { should have_and_belong_to_many :users }


end