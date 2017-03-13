require 'rails_helper'
require 'spec_helper'

describe "Authentication" do 
	
	subject { page }

	describe "sigin page" do
		before { visit signin_path}

		it { should have_content('Sign in') }
		it { should have_title('Sig in') }
  	end
end
