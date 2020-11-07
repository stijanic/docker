=begin
1. In your terminal, use the rails command to generate the model product. Press Enter.

$ rails generate model product
=end


=begin
1. In the Category model, category.rb, define a has_many relationship between a category and a products. Hit Run.
category.rb
class Category < ActiveRecord::Base
	has_many :products
end

2. In the the Product model, product.rb, define a belongs_to relationship between a product and a category. Hit Run.
product.rb
class Product < ActiveRecord::Base
	belongs_to :category
end
=end


=begin
1. In your Products Migration table, which ends in _create_products.rb, add the following columns. A :product_name (string), :description (text), :price (float), and :thumburl (string). Also remember to add :category (references). Hit Run.

class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
			t.string :product_name
			t.text :description
			t.float :price
			t.string :thumburl
			t.references :category
	    t.timestamps
    end
  end
end

2. In your terminal, run rake db:migrate to migrate your database. Press Enter.

$ rake db:migrate
=end


=begin
1. In seeds.rb, on line 20, add a seed entry for the Art Product. It should have the following information: a product_name of "Russian Acrylic", a description "Acrylic on Canvas", a price of 59.00 and a thumburl of http://bit.ly/1nDkJZw. It will also have a category_id of art.id. It does not need a variable. Hit Run.
seeds.rb
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
   craft_supplies = Category.create(name: 'Craft Supplies', thumburl: 'http://bit.ly/1w1uPow')

   #Art
   Product.create(product_name: 'Russian Acrylic', description: "Acrylic on Canvas", price: 59.00, thumburl: 'http://bit.ly/1nDkJZw',
      category_id: art.id)

   Product.create(product_name: 'Spanish Canvas Painting', description: "La Fuente de Monteforte Painting Acrylic", price: 79.00, thumburl: 'http://upload.wikimedia.org/wikipedia/commons/e/eb/144-la_fuente_de_Monforte_V.jpg',
      category_id: art.id)
   Product.create(product_name: 'French Acrylics & Pastel Canvas', description: "Jeanne d'Arc Arrivant a l'ile Bouchard", price: 122.00, thumburl: 'http://upload.wikimedia.org/wikipedia/commons/3/36/2004_Yuri-Yudaev_Before-the-City-Gate_Acrylic-on-canvas_40x40cm.jpg', category_id: art.id)

   # Home & Living

  Product.create(product_name: 'Art Deco Glass', description: "Before-the-City-Gate Acrylic-on-canvas", price: 1599.00, thumburl: 'http://ihomedecorsideas.com/wp-content/uploads/2014/04/diy_network_homemade_coat_rack_.jpg', category_id: home_and_living.id)
   Product.create(product_name: 'Rustic Homemade Coatrack', description: "Coatrack made of Maple Tree Branches", price: 288.00, thumburl: 'https://c2.staticflickr.com/6/5308/5821079295_4580e3c8d3_z.jpg', category_id: home_and_living.id)
   Product.create(product_name: 'Forest Wood Coffee Table', description: "Chista Natural Wood Rustic Collection", price: 299.00, thumburl: 'https://c1.staticflickr.com/3/2777/4033647409_3c04157d86.jpg', category_id: home_and_living.id)

   # Jewelry

   Product.create(product_name: 'Vintage Rhinestone Earrings', description: "Lightweight Rhinestone Earrings in Sterling Silver Setting", price: 9.00, thumburl: 'http://fc03.deviantart.net/fs70/f/2011/340/0/5/dangle_ear_rings_stock_png_by_doloresdevelde-d4idyev.png', category_id: jewelry.id)
   Product.create(product_name: 'Moon Turquoise Ring', description: "Mediyat Silver" , price: 39.99, thumburl: 'http://upload.wikimedia.org/wikipedia/commons/f/ff/Midyat_Silver_Jewelry_1310103_Nevit.jpg', category_id: jewelry.id)
   Product.create(product_name: 'Greek Gold Necklace', description: "Greek Gold Plated Necklace", price: 4570.00, thumburl: 'http://upload.wikimedia.org/wikipedia/commons/0/02/Ancient_greek_jewelry_Staatliche_Antikensammlungen_Room_10_06.jpg', category_id: jewelry.id)


   # Women

   Product.create(product_name: 'Chloe Frill Yellow Dress' , description: "Vintage yellow dress with floral design. Lightweight with frill on skirt.", price: 59.99, thumburl: 'https://c1.staticflickr.com/9/8255/8660920433_57a184d9d1_z.jpg', category_id: women.id, )
   Product.create(product_name: 'Autumn Knitted Sweater with Silver Buttons', description: "Knitted Crop Sweater with Silver Buttons", price: 45.99, thumburl: 'https://c2.staticflickr.com/4/3049/2353463988_c9d8cde436_z.jpg?zz=1', category_id: women.id)
   Product.create(product_name: 'Rucksack', description: "Rucksack Schweizer Armee 1960.", price: 39.99, thumburl: 'http://upload.wikimedia.org/wikipedia/commons/a/a1/Image-2D_and_3D_modulor_Origami.jpg', category_id: women.id)

   # Men

   Product.create(product_name: 'Grenson Shoes', description: "Fullbrogue Grenson Shoes.", price: 105.00, thumburl: 'http://upload.wikimedia.org/wikipedia/commons/d/d5/Fullbrogue_(Grenson).jpg', category_id: men.id)
   Product.create(product_name: 'Color Fringed Scarf', description: "Men’s Fringed Scarf in Pumpkin Toffee Grey.", price: 19.99, thumburl: 'https://c2.staticflickr.com/4/3437/3832752067_c6c3631d44_z.jpg?zz=1', category_id: men.id)
   Product.create(product_name: 'Pork Pie Hat', description: "Classic Pork Pie Hat from the 1940s.", price: 110.00, thumburl: 'http://upload.wikimedia.org/wikipedia/commons/0/05/Brown_Porkpie_Hat.JPG', category_id: men.id)


   # Kids

   Product.create(product_name: 'Peruvian Hats', description: "Handmade Peruvian Winter Hats for Children.", price: 15.00, thumburl: 'https://c2.staticflickr.com/8/7020/6498656815_3937483e21_z.jpg', category_id: kids.id)
   Product.create(product_name: 'Norev Toy Car', description: "Classic Norev Model Toy Car for Children", price: 17.00, thumburl: 'http://upload.wikimedia.org/wikipedia/commons/6/61/Norev_4cv.jpg', category_id: kids.id)
   Product.create(product_name: 'Stickle Bricks', description: 'Toy Stickle Brick Building Blocks Set', price: 21.99, thumburl: 'http://upload.wikimedia.org/wikipedia/commons/f/f1/Stickle_bricks.jpg', category_id: kids.id)


   # Vintage

   Product.create(product_name: 'Anders Brown Leather Bag', description: "Vintage Leather with White Trim.", price: 79.99, thumburl: 'http://upload.wikimedia.org/wikipedia/commons/3/3d/Gesellenst%C3%BCck_Lederhandwerk.jpg', category_id: vintage.id)
   Product.create(product_name: 'Cambridge Red Footsies', description: "Red Vintage Leather Shoes Children with Brown Laces and White Trim", price: 45.99, thumburl: 'https://c1.staticflickr.com/3/2587/3797274851_8199f17d01.jpg', category_id: vintage.id)
   Product.create(product_name: 'Voightlander Camera', description: "Voightlander Vintage Camera with Metal Case", price: 179.00, thumburl: 'http://upload.wikimedia.org/wikipedia/commons/6/67/A_vintage_Voigtl%C3%A4nder_Vito_B_camera.jpg', category_id: vintage.id)

   # Weddings

   Product.create(product_name: 'Green Wedding Decor', description: "Forest Dream Wedding Decoration Ideas", price: 27.00, thumburl: 'http://hostingessence.com/wp-content/uploads/2012/04/green-wedding.jpg', category_id: weddings.id)
   Product.create(product_name: 'Embossed Soap Wedding Favors', description: "Lavendar Handmade Soap decorated with elegant nature design. ", price: 4.50, thumburl: 'https://c1.staticflickr.com/1/203/518233215_cb4d2af38f_z.jpg?zz=1', category_id: weddings.id)
   Product.create(product_name: 'Handmade Centerpieces', description: "Handmade Wedding Tea Cup Centerpieces for Your Guests", price: 35.00, thumburl: 'http://indiefixx.com/wp-content/uploads/2011/06/GR_teacupcenterpieces.jpg', category_id: weddings.id)

   # Craft Supplies

   Product.create(product_name: 'Korean Indasong Craft Paper', description: "Origami Paper Kit", price: 17.00, thumburl: 'http://commons.wikimedia.org/wiki/File:Vesta_sewing_machine_IMGP0718.jpg', category_id: craft_supplies.id)
   Product.create(product_name: 'Handmade Gift Wrap', description: "Esoterica Handmade Supplies", price: 14.00, thumburl: 'http://commons.wikimedia.org/wiki/File:Vesta_sewing_machine_IMGP0718.jpg', category_id: craft_supplies.id)
   Product.create(product_name: 'Lollipot Flavor Kit', description: "Flavor Kit for Celebration Lollipops and Gifts", price: 21.00, thumburl: 'http://commons.wikimedia.org/wiki/File:Vesta_sewing_machine_IMGP0718.jpg', category_id: craft_supplies.id)

2. In your terminal, type rake db:seed to seed the database. Hit Enter.

$ rake db:seed
=end


=begin
1. In your terminal, generate a products controller with five methods that require a view: index, show, new, edit, and delete. Press Enter.

$ rails generate controller products index show new edit delete
=end


=begin
1. In products_controller.rb, declare a private method called product_params. In your method, require the model product and permit the columns product_name, description, price, and thumburl. Make sure to end the method. Hit Run.
products_controller.rb
class ProductsController < ApplicationController
	private
  def product_params
  	params.require(:product).permit(:product_name, :description, :price, :thumburl)
  end
  
  def index

  end

  def show

  end

  def new

  end

  def edit

  end
end
=end


=begin
1. In Products Controller, products_controller.rb, under def index, complete the index method for products. Refer to the example code above. Hit the Run button.
products_controller.rb
class ProductsController < ApplicationController
	private
  def product_params
  	params.require(:product).permit(:product_name, :description, :price, :thumburl)
  end
  
  public
  def index
  	@products = Product.all
  end

  def show

  end

  def new

  end

  def edit

  end
end

2. Open routes.rb to see resources :products. This takes care of our main controller routes for products. Can you find it?
routes.rb

Rails.application.routes.draw do
  get '/' => 'pages#home'

  resources :categories
  get 'categories/:id/delete' => 'categories#delete', :as => :categories_delete

  resources :products
  get 'products/:id/delete' => 'products#delete', :as => :products_delete
end

3. In your browser visit localhost:3000/products to see the products index page.
index.html.erb	

<h1>Products#index</h1>
<p>Find me in app/views/products/index.html.erb</p>

=end


=begin
1. In your Product index View, index.html.rb, add the correct code. Iterate through products, print out the attributes product_name, description, price, thumburl, and end your code block. Hit Run.
index.html.erb
<h1>Listing products</h1>

<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Description</th>
      <th>Price</th>
      <th>Thumburl</th>
      <th colspan="3"></th>
    </tr>
  </thead>

  <tbody>
    <% @products.each do |product| %>
      <tr>
        <td><%= product.product_name %></td>
        <td><%= product.description %></td>
        <td><%= product.price %></td>
        <% if product.thumburl %>
          <%= product.thumburl %>
        <% end %>
        <td><%= link_to 'Show', product %></td>
        <td><%= link_to 'Edit', edit_product_path(product) %></td>
        <td><%= link_to 'Destroy', product, method: :delete, data: { confirm: 'Are you sure?' } %></td>
      </tr>
    <% end %>
  </tbody>
</table>

<br>

<%= link_to 'New Product', new_product_path %>

2. In your browser, visit localhost:3000/products to see the page you created.
=end


=begin
1. We've added the correct code to iterate through products and print out the product_name, description, price, and thumburl. Take a look. Do you see it? Hit Run.

<%= render 'shared/topnav' %>
<br>
<br>
<br>

<h1>Listing products</h1>

<% @products.in_groups_of(3).each do |products| %>
  <% products.select! {|x| !x.nil?} %>
  <div class='row'>
    <% products.each do |product| %>
      <div class='col-md-4'>
        <div class="thumbnail">
            <img src= <%= product.thumburl %> >
            <div class="caption">
              <span class="listing-title"><%= product.product_name %></span>
              <span class="listing-desc"><%= product.description %></span>
              <span class="listing-price"><%= number_to_currency(product.price) %></span>
              <span><%= link_to "Edit", edit_product_path(product.id) %></span>
              <span><%= link_to "Delete", products_delete_path(:id => product.id) %></span>
            </div>
          </div>
      </div>
    <% end %>
  </div>
<% end %>
<br>

<%= link_to 'New Product', new_product_path %>



<%= render 'shared/footer' %>

2. Visit localhost:3000/products to see the products index page, now structured and styled.
=end


=begin
1. In products_controller.rb, add the show method to display a single product. Hit Run.
products_controller.rb
class ProductsController < ApplicationController
	private
  def product_params
  	params.require(:product).permit(:product_name, :description, :price, :thumburl)
  end
  
  public
  def index
  	@products = Product.all
  end

  def show
		@product = Product.find(params[:id])
  end

  def new

  end

  def edit

  end
end

2. Check out routes.rb to see the route resources :products which takes care of the show route. Then, in your browser type localhost:3000/products/1 to see the products show page.
show.html.erb
<h1>Products#delete</h1>
<p>Find me in show/views/products/show.html.erb</p>

routes.rb
Rails.application.routes.draw do
  get '/' => 'pages#home'

  resources :categories
  get 'categories/:id/delete' => 'categories#delete', :as => :categories_delete

  resources :products
  get 'products/:id/delete' => 'products#delete', :as => :products_delete
end
=end


=begin
1. In your View for Products show, show.html.erb, add the correct code to show a single product. It needs a product_name, description, price, and thumburl. Hit Run.
show.html.erb
<p>
  <strong>Product name:</strong>
	<%= @product.product_name %>
</p>

<p>
  <strong>Description:</strong>
	<%= @product.description %>
</p>

<p>
  <strong>Price:</strong>
	<%= @product.price %>
</p>

<p>
  <strong>Thumburl:</strong>
	<%= @product.thumburl %>
</p>

<%= link_to 'Edit', edit_product_path(@product) %> |
<%= link_to 'Back', products_path %>

2. In your browser, to see the show method in action, visit localhost:3000/products/1
=end


=begin
1. In _form.html.erb, create the form for Products.Remember that our labels will be product_name, description, price, and thumburl. The first three will required a text_field and thumburl will require a url_field. Finally, add a submit feature. Hit Run.
_form.html.erb
<%= form_for(@product) do |f| %>
  <%= f.label :product_name %><br>
  <%= f.text_field :product_name %>
  <%= f.label :description %><br>
  <%= f.text_field :description %>
  <%= f.label :price %><br>
  <%= f.text_field :price %>
  <%= f.label :thumburl %><br>
  <%= f.url_field :thumburl %>
  
  <div class="product_name">

  </div>
  <div class="description">

  </div>
  <div class="price">

  </div>
  <div class="thumburl">

  </div>
  <div class="actions">
		<%= f.submit %>
  </div>
<% end %>
=end


=begin
1. In your code editor, update the controller code for new. Under the new method, add def create and the create method to process the new product. Remember to end your method. Hit Run.
products_controller.rb

class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit

  end
  
  private
  def product_params
    params.require(:product).permit(:product_name, :description, :price, :thumburl)
  end
end

2. In your browser, visit localhost:3000/products/new to see the view.
=end


=begin
1. In the View for Products new, new.html.erb, render the form in the appropriate place. Hit Run.
new.html.erb

<%= render 'shared/topnav' %>

<h1>New Product</h1>

<%= render 'form' %>

<%= link_to 'Back', products_path %>

<%= render 'shared/footer' %>

2. In your browser, visit localhost:3000/products/new to see the page you created.
=end


=begin
1. Create the edit method. Now create a method def update. The update method should let the user update a product. Remember to end your method. Hit Run.
products_controller.rb

class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
  @product = Product.find(params[:id])
  end
  
  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      redirect_to(:action => 'show', :id => @product.id)
    else
      render('index')
    end
  end
  
  private
  def product_params
    params.require(:product).permit(:product_name, :description, :price, :thumburl)
  end
end

2. In your browser visit localhost:3000/products/1/edit to see the products new page.
=end


=begin
1. In the View for Products edit, edit.html.erb, render the form in the appropriate place. Hit Run.
edit.html.erb

<%= render 'shared/topnav' %>

<h1>Edit Product</h1>

<%= render 'form' %>

<%= link_to 'Back', products_path %>

<%= render 'shared/footer' %>

2. In your browser, visit localhost:3000/products/1/edit to see the page you created.
=end


=begin
1. Write the methods for delete, under the delete method add the destroy method to permanently delete the product. Hit Run.
products_controller.rb

class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
  @product = Product.find(params[:id])
  end
  
  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      redirect_to(:action => 'show', :id => @product.id)
    else
      render('index')
    end
  end
  
  def delete
    @product = Product.find(params[:id])
  end

  def destroy
    Product.find(params[:id]).destroy
    redirect_to(:action => 'index')
  end

  private
  def product_params
    params.require(:product).permit(:product_name, :description, :price, :thumburl)
  end
end 

2. In your browser, to see the show method in action, visit localhost:3000/products/1/delete
=end


=begin
1. In products delete, print out the product_name, the description, the price, and the thumburl for the specific product.
delete.html.erb

<p>
  <strong>Product name:</strong>
  <%= @product.product_name %>
</p>

<p>
  <strong>Description:</strong>
  <%= @product.description %>
</p>

<p>
  <strong>Price:</strong>
  <%= @product.price %>
</p>

<p>
  <strong>Thumburl:</strong>
  <%= @product.thumburl %>
</p>

<%= link_to 'Delete', products_delete_path(:id => @product.id) %> |
<%= link_to 'Edit', edit_product_path(@product) %> |
<%= link_to 'Back', products_path %>

2. In your browser, to see the show method in action, visit localhost:3000/products/1/delete
=end


=begin
1. In categories_controller.rb, in the Categories show method, add code to store the products of a given category in an instance variable @product. Hit Run.
categories_controller.rb

class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @products = @category.products
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
=end


=begin
1. Copy all the code from your Products index in index.html.erb and paste it into your Categories show View in show.html.erb. All your previous code in Categories show can be replaced. Hit Run.
show.html.erb

<%= render 'shared/topnav' %>
<br>
<br>
<br>

<h1>Listing products</h1>

<% @products.in_groups_of(3).each do |products| %>
  <% products.select! {|x| !x.nil?} %>
  <div class='row'>
    <% products.each do |product| %>
      <div class='col-md-4'>
        <div class="thumbnail">
            <img src= <%= product.thumburl %> >
            <div class="caption">
              <span class="listing-title"><%= product.product_name %></span>
              <span class="listing-desc"><%= product.description %></span>
              <span class="listing-price"><%= number_to_currency(product.price) %></span>
              <span><%= link_to "Edit", edit_product_path(product.id) %></span>
              <span><%= link_to "Delete", products_delete_path(:id => product.id) %></span>
            </div>
          </div>
      </div>
    <% end %>
  </div>
<% end %>
<br>

<%= link_to 'New Product', new_product_path %>



<%= render 'shared/footer' %>

2. In your browser, visit localhost:3000/categories. On the Index page, under Art, click on Show. This will now show the Art Products in that Category.
=end


=begin
 Congratulations! You created the Products page of the Etsy app. We created the Model, Controller, and Views for Products.

We generated the Product Model using our terminal. We used associations to define the relationship between the Category and Product table. We added Migration columns and migrated and seeded our database.

We then generated a Products Controller with the index, show, new, edit, and delete methods. This gave us route and View for those methods.

We created Controller methods for all eight of our CRUD actions, and Views for index, show, new, edit, and delete. We also nested our Products in our Categories show View.

Nice job. Now we'll finish our Etsy app by adding Authentication.
=end


