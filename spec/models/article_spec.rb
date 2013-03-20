require 'spec_helper'

describe Article do
  
  it { should have_and_belong_to_many(:tags) }
  it { should belong_to(:category) }

  it { should respond_to(:title) }
  it { should respond_to(:description) }
  it { should respond_to(:url) }
  it { should respond_to(:category_id) }


  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:url) }
  it { should validate_presence_of(:category_id) }
  

  describe "validations" do
    context 'uniquness of urls' do
      let(:article) { create(:article)}
      it 'rejects repeat article urls' do
       article2 = Article.new :url => article.url
       article2.should_not be_valid
      end
    end
  end
  # test seperately it { should validate_uniqueness_of(:url) }



end
