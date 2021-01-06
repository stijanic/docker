# 1. In the terminal, generate a new rails application by typing rails new etsy-app. Press Enter.
# 2. In the browser on this page, load Rails by typing localhost:3000. localhost:3000 is where rails will run on your computer as you build the app.

# To run bundler, we type the following in our terminal: bundle install

# If we want to generate a Controller called Pages, we enter the following in the terminal: rails generate controller Pages

# 1. In your Pages Controller, pages_controller.rb, Define a method called def home. You do not need a method body. Hit Run.
=begin
class PagesController < ApplicationController
	def home
	end
end
=end
# 2. In your browser visit localhost:3000/pages/home to see what was created. You can expect to get a Routing Error. localhost:3000/pages/home

# 1. In routes.rb, create a route for pages/home in your routes.rb file as demonstrated. Hit Run.
=begin
Rails.application.routes.draw do
	get 'pages/home'
	root 'pages#home'
end
=end
# 2. In routes.rb, after you create the route, make pages#home your root route as demonstrated. Hit Run.
# 3. http://localhost:3000/

=begin
<%= render 'shared/topnav' %>

<div class="jumbotron">
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <h1>Shop directly from people around the world.</h1>
      </div>
    </div>
  </div>
</div>

<div class="trending">
  <div class="container">
    <h2>Recent Favorites</h2>
    <p>Discover finds from around the marketplace.</p>
    <div class="row trending-listing">
      <div class="col-md-4">
        <div class="thumbnail">
          <img src="https://img1.etsystatic.com/034/0/6705395/il_340x270.542888787_ggy4.jpg">
          <div class="caption">
            <span class="listing-title">Large gold leather bag</span>
            <span class="listing-price">$100.00</span>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="thumbnail">
          <img src="https://img1.etsystatic.com/010/0/6957353/il_340x270.427320275_pxiv.jpg">
          <div class="caption">
            <span class="listing-title">Large gold leather bag</span>
            <span class="listing-price">$15.00</span>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="thumbnail">
          <img src="https://img1.etsystatic.com/038/0/6566540/il_340x270.566511947_1r1t.jpg">
          <div class="caption">
            <span class="listing-title">Large gold leather bag</span>
            <span class="listing-price">$160.00</span>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<%= render 'shared/footer' %>
=end
# http://localhost:3000/

=begin
/app/controllers/pages_controller.rb
class PagesController < ApplicationController
	def home
	end
	def erb_demo
	end
end

/config/routes.rb
Rails.application.routes.draw do
	get 'pages/home'
	get 'pages/erb_demo'
	root 'pages#home'
end

/app/views/pages/erb_demo.html.erb
<%= "This is the erb demo template." %>
<% "goodbye world" %>
<%= "hello world" %>
=end

=begin
/app/controllers/pages_controller.rb
class PagesController < ApplicationController
	def home
	end
	def erb_demo
	end
	def render_demo
		render :home
	end
end

/config/routes.rb
Rails.application.routes.draw do
	get 'pages/home'
	get 'pages/erb_demo'
	get 'pages/render_demo'
	root 'pages#home'
end

/app/views/pages/render_demo.html.erb
<%= "This is your render_demo template." %>

http://localhost:3000/pages/render_demo/
=end

=begin
/app/controllers/pages_controller.rb
class PagesController < ApplicationController
	def home
	end
	def erb_demo
	end
	def render_demo
		render :home
	end
	def redirect_demo
		redirect_to(:action => 'home')
	end
end

/config/routes.rb
Rails.application.routes.draw do
	get 'pages/home'
	get 'pages/erb_demo'
	get 'pages/render_demo'
	get 'pages/redirect_demo'
	root 'pages#home'
end

/app/views/pages/redirect_demo.html.erb
<%= "This is your redirect demo template" %>

http://localhost:3000/pages/home/
or
http://localhost:3000/pages/home
=end