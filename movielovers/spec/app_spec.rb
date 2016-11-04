# # spec/app_spec.rb
# require File.expand_path '../spec_helper.rb', __FILE__

# describe 'The Irontwit' do
#   context "homepage" do 
#   	before (:each) {get("/")}

#   	it "renders the homepage" do 
#   		expect(last_response).to be_ok
#   	end

#   	it "has a form" do 
#   		expect(last_response.body).to include("form")
#   	end
# 	end

# 	it "post" do 
# 		post("/register",username:"foo")
# 		get("/register", name:"foo")
# 	end

# 	it "post" do
# 		post("/login", username:"foo")
# 		get("/login", name:"foo")
# 	end

# 	it "should not show a page that doesn't exit" do
# 		get("/homepage")
# 		expect(last_response).to_not be_ok
# 	end

# 	it "should redirect from /logout to /" do 
# 		get("/logout")
# 		expect(last_response.redirect?).to be(true)
# 		follow_redirect!
# 		expect(last_request.path).to eq("/")
# 	end

# 	it "adds a user" do 
# 		size = @@users.size
# 		post("/register")
# 		expect(@@users.size).to eq(size + 1)
# 	end


# 	it "should set the session as logged out" do
# 		get("/logout")
# 		expect(session[:logged_in]).to be_falsey
# 	end

# end