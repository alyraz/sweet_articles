require 'spec_helper'
      
describe "article pages", :js => true do 

    subject { page }
    
    describe "index page" do
      before do
      10.times { FactoryGirl.create(:category_with_articles) }
      visit articles_path
      end

      it { should have_selector('h3', text:"Category")}
      it { should have_selector('li')}
    end
end 
