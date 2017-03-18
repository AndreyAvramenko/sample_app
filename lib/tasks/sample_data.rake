namespace :db do 
	desc "Full database with sample data"
	task populate: :environment do
		User.create!(name: "Example User",
					email: "Prexample@railstutorial.org",
					password: "123456",
					password_confirmation: "123456",
					admin: true)
		99.times do |n|
			name = Faker::Name.name
			email = "examole-#{n+1}@railstutorial.org"
			password = "password"
			User.create!(name: name,
						email: email,
						password: password,
						password_confirmation: password)
		end
	end
	
end