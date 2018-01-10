require 'rails_helper'

RSpec.describe ContactsController, type: :controller do
	context "GET#new" do
		it "should create new contact" do
			contact = Contact.new
			expect(response).to be_success
		end
	end	

	context "GET#create" do
		before(:each) { @contact = Contact.new }
		it "if contact.deliver is delivering, flash.now[:error] should be nil and @contact.request = request" do
			@contact.deliver
			flash.now[:error] == nil
		end

		it "if contact.deliver is false, flash.now[:error] should be message and has to render new" do
			flash.now[:error] == "Cannot send message"
			get :new
		end
	end
end
