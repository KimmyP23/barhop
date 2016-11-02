# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


SF Neighborhoods-Bars
	
	
1. rails new barHop -d postgresql -T

	* on initial commit: git add .gitignore

Neighborhoods have_many bars
bars belong_to neighborhoods

workflow:
--> models/migrations
--> rails db:create
--> controllers
--> rails db:migrate
--> rails db:seed

2. rails g model Neighborhood name:string
	->will create migration and model as well
3. rails g model Bar name:string specialty_drink:string cash_only:boolean neighborhood:references
4. add associations for has_many side (neighborhoods in this case)

--> rails db:migrate
--> rails db:seed

5. 	rails g controller Neighborhoods
	rails g controller Bars
	
**********USER AUTH
Add to Gemfile
	-gem 'devise'
	
Run the generator:
	-rails generate devise:install
	
Add to config/environments/development.rb:

	-config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
	
The generator also configures your config/routes.rb file to point to the Devise controller.
	-rails generate devise User
		-create user migration model

	Then run rake db:migrate
	 
	 -rails generate -h
	 	-devise section:
	 	-gives you all the actions associated w/devise
	 		
	 For controllers:
	 	-be rails g devise:controllers users

This will provide routes:
	-copy and paste what is provided in config/routes

	
	-rails generate devise:views
		-this is to customize the views
		
	-application controller
		-before action --> got this from devise ruby docs
		
	UPDATE: for unique fields
	migrations-->user devise
	registrations
		-forms
********


Custom homepage:
	class HomeController < ApplicationController
		def index
		end
	end
View:
	index.html.erb
		-->root 'home#index' in config routes

*********

*****
custom routes:
get '/neighborhood/all', to: 'neighborhood#index' 
******

*******
AJAX form/console.log:	
********

	
1. make bars.js
	-app/assets/javascripts
	-add this:
	
	$(document).on("turbolinks:load", function(){
	(# call the methods here)
	 clickLinkListener();
	 createBarListener();
	}); 
	
THIS IS FOR LINK:
3. ADD remote: true 
4. ADD id: "new-bar-link"
	-to target for the event listener
	--> 
<%= link_to 'Add a new bar!', new_neighborhood_bar_path(@neighborhood), remote: true, id: "new-bar-link" %>

2. Event listener
var clickLink Listener = function(){
	$('#new-bar-link').on("ajax:success", function(event, response){
		$('#form-holder').append(response);
	});
};

6. ADD div w/ id for form:
	-In file --> bar#index
	
 	<div id="form-holder">
 	</div>
 	
$('#form-holder') --> this is the empty div container to append response(partial response)

5. ADD this to bar controller:
def new
	@bar = Bar.new
	if request.xhr?
		render partial: 'form'
	end
end	

-------------
THIS IS FOR THE CONSOLE.LOG JSON

7. ON partial_form:
	ADD remote: true
	*form_for -->creates id automatically
		-"#new_form"
	
8. EventListener
	-var createBarListener = function(){
	$("#form-holder").on("ajax:success", "#new_bar", function(event, response){
	console.log(response);
	});
	}
9. CREATE ROUTE: bars_controller

def create
@bar =@neighborhood.bars.new(bar_params)
	if @bar.save
		if request.xhr?
			render json: @bar
		else
			redirect_to neighborhood_bar_path(@neighborhood, @bar)
		end
	else
		@errors = @bar.errors.full_messages
		render 'new'
	end
end



