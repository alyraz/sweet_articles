require 'spec_helper'

describe Tag do

  it { should have_and_belong_to_many(:articles) }

  it { should respond_to(:name) }

  it { should validate_presence_of(:name) }
end
