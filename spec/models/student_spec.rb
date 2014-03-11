require 'spec_helper'

  describe Student do
    
    before :each do
      @student = Student.new
      @student.valid?
    end
      
      it "should require a full name" do
      @student.errors.full_messages.should include "Full name can't be blank"
      end
  
      it "should require an email" do
      @student.errors.full_messages.should include "Email can't be blank"
      end

end
