=begin
1. In your terminal, generate a model named Category using the rails command. Press Enter.
rails generate model Category
=end

=begin
1. Add a name and thumburl attributes to your category migrations. These are both strings. Hit Run.

class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
			t.string :name
			t.string :thumburl
      t.timestamps
    end
  end
end

2. In your terminal, run rake db:migrate to migrate your database. Press Enter.
=end

=begin
1. Look in your seeds file, seeds.rb. On line 17, add seed data for craft_supplies. The entry should have a name 'Craft Supplies' and a thumburl of 'http://bit.ly/1w1uPow'. Store this entry in a variable called craft_supplies. Hit Run.

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	art = Category.create(name: 'Art', thumburl: 'http://upload.wikimedia.org/wikipedia/commons/e/eb/144-la_fuente_de_Monforte_V.jpg')
	home_and_living = Category.create(name: 'Home & Living', thumburl: 'http://ihomedecorsideas.com/wp-content/uploads/2014/04/diy_network_homemade_coat_rack_.jpg')
	jewelry = Category.create(name: 'Jewelry', thumburl: 'http://upload.wikimedia.org/wikipedia/commons/f/ff/Midyat_Silver_Jewelry_1310103_Nevit.jpg')
	women = Category.create(name: 'Women', thumburl: 'https://c1.staticflickr.com/9/8255/8660920433_57a184d9d1_z.jpg')
	men = Category.create(name: 'Men', thumburl: 'http://upload.wikimedia.org/wikipedia/commons/d/d5/Fullbrogue_(Grenson).jpg')
	kids = Category.create(name: 'Kids', thumburl: 'http://upload.wikimedia.org/wikipedia/commons/e/e0/Artist%27s_Paint_Brushes_Adapted_With_Photoshop._Surrey_UK.jpg')
	vintage = Category.create(name: 'Vintage', thumburl: 'https://c2.staticflickr.com/8/7402/9426557291_139134efaa_z.jpg')
	weddings = Category.create(name: 'Weddings', thumburl: 'http://hostingessence.com/wp-content/uploads/2012/04/green-wedding.jpg')
  # Add your category here
craft_supplies = Category.create(name: 'Craft Supplies', thumburl: 'http://bit.ly/1w1uPow')

2. In your terminal, run rake db:seed to add the data from seeds into your database. Press Enter.
=end

=begin
1. In your terminal, generate a controller Categories with the main methods we’ll use: index, show, new, edit, and delete. Press Enter.
rails generate controller Categories index show new edit delete

Remember that Controller names are always plural, while Model names are singular.
=end

=begin

/app/controllers/categories_controller.rb
class CategoriesController < ApplicationController
  def index
  	@categories = Category.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def delete
  end
  
  private
  def category_params
  	params.require(:category).permit(:name, :thumburl)
  end
end

=end

=begin

1. Check out routes.rb to see resources :categories. Then, in the browser window, visit localhost:3000/categories to see the index view Rails created.
Rails.application.routes.draw do
  get '/' => 'pages#home'

  resources :categories
  get 'categories/:id/delete' => 'categories#delete', :as => :categories_delete
end

2. /app/views/categories/index.html.erb
<h1>Categories#index</h1>
<p>Find me in app/views/categories/index.html.erb</p>  
=end

=begin
/app/views/categories/index.html.erb
<h1>Listing categories</h1>

<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Thumburl</th>
      <th colspan="3"></th>
    </tr>
  </thead>

  <tbody>
    <% @categories.each do |category| %>
      <tr>
        <td><%= category.name %></td>
        <td><%= category.thumburl %></td>
        <td><%= link_to 'Show', category_path(category) %></td>
        <td><%= link_to 'Edit', edit_category_path(category) %></td>
        <td><%= link_to 'Destroy', category, method: :delete, data: { confirm: 'Are you sure?' } %></td>
      </tr>
    <% end %>
  </tbody>
</table>

<br>

<%= link_to 'New Category', new_category_path %>

localhost:3000/categories   
=end


=begin
<%= render 'shared/topnav' %>

<div class="categories">
      <div class="container">
        <div class="row">
          <div class="col-md-2">
            <h2>Categories</h2>
            <p>Explore our latest categories from around the world.</p>
          </div>
          <div class="col-md-8">
            <% @categories.in_groups_of(3).each do |categories| %>
              <% categories.select! {|x| !x.nil?} %>
              <div class='row'>
                <% categories.each do |category| %>
                  <div class='col-md-4'>
                    <div class="thumbnail">
                        <img src= <%= category.thumburl %> >
                        <div class="caption">
                          <span class="listing-title"><%= category.name %></span>
                          <span><%= link_to "Edit", edit_category_path(category.id) %></span>
                          <span><%= link_to 'Show', category %></span>
                          <td><%= link_to 'Delete', categories_delete_path(:id => category.id) %></td>
                        </div>
                      </div>
                    </div>
                <% end %>
              </div>
            <% end %>

          </div>
        </div>

      </div>
    </div>

<table>
  <thead>
    <tr>
      <th>Category name</th>
      <th colspan="3"></th>
    </tr>
  </thead>

  <tbody>
    <% @categories.each do |category| %>
      <tr>
        <td><%= category.name %></td>
        <div class="thumbnail">
           <img src= <%=category.thumburl %> >
        <div>
        <td><%= link_to 'Show', category %></td>
        <td><%= link_to 'Edit', edit_category_path(category) %></td>
        <td><%= link_to 'Delete', categories_delete_path(:id => category.id) %></td>
      </tr>
    <% end %>
  </tbody>
</table>
<br>

<%= link_to 'New Category', new_category_path %>

<%= render 'shared/footer' %>

localhost:3000/categories 
=end

=begin
class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
  end

  def edit
  end

  def delete
  end
  
  private
  def category_params
    params.require(:category).permit(:name, :thumburl)
  end
end
=end


=begin
/config/routes.rb
Rails.application.routes.draw do
  get '/' => 'pages#home'

  resources :categories
  get 'categories/:id/delete' => 'categories#delete', :as => :categories_delete
end

/app/views/categories/show.html.erb
<h1>Categories#show</h1>
<p>Find me in app/views/categories/show.html.erb</p>
=end


=begin
1. In categories show, show.html.erb, print out the name and the thumburl for the specific category. Remember to follow the example. Hit Run.

<%= render 'shared/topnav' %>
<p>
  <strong>Name:</strong>
  <%= @category.name %>
</p>

<p>
  <strong>Thumburl:</strong>
  <%= @category.thumburl %>
</p>

<%= link_to 'Edit', edit_category_path(@category) %> |
<%= link_to 'Back', categories_path %>

<%= render 'shared/footer' %>

2. localhost:3000/categories/1
=end

=begin
<%= form_for(@category) do |f| %>

  <div class="name">
    <%= f.label :name %><br>
    <%= f.text_field :name %>
  </div>
  <div class="thumburl">
    <%= f.label :thumburl %><br>
    <%= f.url_field :thumburl %>
  </div>
  <div class="actions">
    <%= f.submit %>
  </div>
<% end %> 
=end


=begin
1. In you Categories controller, categories_controller.erb. Fill in the method body for the new method. Under it, add def create and fill in the method body for the create method. Remember to end it. Hit Run.
checkmark

class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end
  
  def edit
  end

  def delete
  end
  
  private
  def category_params
    params.require(:category).permit(:name, :thumburl)
  end
end

2. In your browser, visit localhost:3000/categories/new to see the view.
=end

=begin
1. In Categories new.html.erb, render the form.

<%= render 'shared/topnav' %>

<h1>New Category</h1>

<%= render 'form' %>

<%= link_to 'Back', categories_path %>

<%= render 'shared/footer' %>

2. Visit the categories new at localhost:3000/categories/new in your browser to see the page you created.
=end


=begin
1. In categories_controller.rb, add the edit method to let the user edit the category. Add a method def update and the method body to update a category. Hit Run.
checkmark

/app/controllers/categories_controller.rb
class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end
  
  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(category_params)
      redirect_to(:action => 'show', :id => @category.id)
    else
      render('index')
    end
  end
  
  def delete
  end
  
  private
  def category_params
    params.require(:category).permit(:name, :thumburl)
  end
end

2. In your browser, visit localhost:3000/categories/1/edit to see what you created.
=end

=begin

<%= render 'shared/topnav' %>

<h1>Edit Category</h1>

<%= render 'form' %>

<%= link_to 'Back', categories_path %>

<%= render 'shared/footer' %>

=end

=begin
1. In categories_controller.rb, add the delete method to let the user delete the category. Add a method def destroy and the method body to destroy a category. Hit Run.
class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end
  
  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(category_params)
      redirect_to(:action => 'show', :id => @category.id)
    else
      render('index')
    end
  end
  
  def delete
      @category = Category.find(params[:id])
  end
  
  def destroy
    Category.find(params[:id]).destroy
    redirect_to(:action => 'index')
  end
  
  private
  def category_params
    params.require(:category).permit(:name, :thumburl)
  end
end 

2. Visit the categories delete at localhost:3000/categories/1/delete in your browser to see the page you created.
=end

=begin
1. In categories delete, print out the name and the thumburl for the specific category.
<p>
  <strong>Name:</strong>
  <%= @category.name %>
</p>

<p>
  <strong>Thumburl:</strong>
  <%= @category.thumburl %>
</p>

<%= link_to "Delete", categories_delete_path(:id => @category.id) %> |
<%= link_to 'Edit', edit_category_path(@category) %> |
<%= link_to 'Back', categories_path %>

2. In your browser, to see the show method in action, visit localhost:3000/categories/1/delete
=end


=begin
Congratulations! You created the Categories page of the Etsy app. We did this by creating the Model, Controller, and Views for Categories.

We first generated the Category Model using a terminal command. We added columns to our Categories Migration table and migrated and seeded our database.

We then generated a Categories Controller with the index, show, new, edit, and delete methods. This gave us a route and View for those methods.

We created Controller methods for eight of our CRUD actions, and Views for index, show, new, edit, and delete.

Nice job. We'll now build the Products page of the Etsy app.
=end