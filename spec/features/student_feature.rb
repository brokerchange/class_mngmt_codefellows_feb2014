require 'spec_helper'

describe Student, type: :feature do
  
  context "Creating new" do
    
   it "should let the user know about missing full name" do
     
     visit '/students/new'
     puts page.body
     
   end
    
  end

end
