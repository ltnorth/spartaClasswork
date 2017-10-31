describe Katalon do

  before(:all) do
    @session = Katalon.new
  end

  describe "The booking process" do
    context "when the 'make appointment' button is clicked and no one is logged in" do
      it "should redirect to the login page" do
        @session.click_make_appointment
        expect(@session.current_url).to eql('http://demoaut.katalon.com/profile.php#login')
      end
    end
    context "when on the login page" do
      it "should accept a username" do
        @session.set_username_field
        expect(@session.get_username_field_value).to eql('John Doe')
      end

      it "should accept a password" do
        @session.set_password_field
        expect(@session.get_password_field_value).to eql("ThisIsNotAPassword")
      end

      it "should submit and redirect to make appointment view" do
        @session.submit_login_form
        expect(@session.current_url).to eql('http://demoaut.katalon.com/#appointment')
      end
    end

    context "when making an appointment" do
      it "should accept a facility choice" do
        @session.choose_facility
        expect(@session.check_facility).to eql("Hongkong CURA Healthcare Center")
      end

      it "should accept readmission option" do
        @session.apply_for_readmission
        expect(@session.check_readmission).to be true
      end

      it "should accept a healthcare program" do
        @session.choose_healthcare_program
        expect(@session.check_healthcare_program).to be true
      end

      it "should accept an appointment date" do
        @session.set_date_field
        expect(@session.get_date_field_value).to eql(Date.today.to_s)
      end

      it "should accept a comment" do
        @session.set_comment
        expect(@session.get_comment).to eql("I have a rash on my ass")
      end

      it "should submit the appointment and redirect to appointment.php" do
        @session.book_appointment
        expect(@session.current_url).to eql("http://demoaut.katalon.com/appointment.php#summary")
      end
    end

    context "when not on the homepage" do
      it "should be able to redirect to the homepage via the 'Go to Homepage' button" do
        @session.go_to_homepage
        expect(@session.current_url).to eql('http://demoaut.katalon.com/')
      end
    end

    context "when logged in from anywhere" do
      it "can access history via the burger" do
        @session.click_dat_burger
        @session.go_to_history
        expect(@session.current_url).to eql('http://demoaut.katalon.com/history.php#history')
      end
      it "can access profile via the burger" do
        @session.click_dat_burger
        @session.go_to_profile
        expect(@session.current_url).to eql('http://demoaut.katalon.com/profile.php#profile')
      end
      it "can logout via the burger" do
        @session.click_dat_burger
        @session.logout
        expect(@session.current_url).to eql('http://demoaut.katalon.com/')
      end
    end

    # context "when on the profile page" do
    #   it "can log out via the logout button" do
    #     @session
    #   end
    # end
  end


end