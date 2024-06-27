# Jungle

Jungle is an e-commerce web application designed for plant enthusiasts, providing a platform where users can browse, purchase, and manage their plant-related products. Developed using Ruby on Rails, the application leverages several features to deliver a comprehensive shopping experience.

## Key Features

### Product Catalog:

- Users can browse through a variety of products categorized under different plant types.
- Each product listing includes detailed information such as name, description, price, and quantity available.

### User Authentication:

- Users can sign up with their email, password, and personal details.
- Login functionality allows users to securely access their accounts.
- Session management ensures that users can stay logged in and log out when needed.

### Shopping Cart:

- Users can add products to their shopping cart.
- The cart displays a summary of selected products, including the total price and quantity.
- Users can update the cart by adding or removing items before proceeding to checkout.

### Order Management:

- Once users finalize their cart, they can place orders.
- Users can view their order details, including the list of purchased items, quantities, and the total amount paid.
- The application handles the creation and tracking of orders seamlessly.

### Admin Interface:

- Admins have access to a special interface for managing products and categories.
- Admins can add, edit, and delete products and categories.
- The admin dashboard provides an overview of the product inventory and category management.

## Tech Stack

### **Backend**
- Ruby
- Rails
- PostgreSQL (pg)
- Puma
- Sass (sass-rails)
- Webpacker
- Turbolinks
- Jbuilder
- jQuery (jquery-rails)
- bcrypt
- Bootstrap
- FontAwesome (font-awesome-rails)
- Money-rails
- Stripe
- RMagick
- Faker
- CarrierWave
- Bootsnap
- Redis (optional for Action Cable)
- Active Storage (optional for image processing)
### **Development and Testing Tools**
- Cypress
- Database Cleaner (database_cleaner-active_record)
- Byebug
- dotenv-rails
- RSpec (rspec-rails)
- net-smtp
- Web Console
- Rack Mini Profiler (rack-mini-profiler)
- Listen
- Spring
- Capybara
- Selenium WebDriver
- Webdrivers
### **Frontend**
- ActionCable (via @rails/actioncable)
- ActiveStorage (via @rails/activestorage)
- UJS (Unobtrusive JavaScript, via @rails/ujs)
- Webpacker
- Turbolinks
- Webpack
- jQuery
- SCSS (via sass-rails)
- Bootstrap
- FontAwesome
### **Development Tools for Frontend**
- Webpack Dev Server
- Cypress

## Screenshots
![Home 1](https://github.com/JordanBandur/jungle-rails/blob/master/sceenshots/home-1.png)
![Home 2](https://github.com/JordanBandur/jungle-rails/blob/master/sceenshots/home-2.png)
![Home 3](https://github.com/JordanBandur/jungle-rails/blob/master/sceenshots/home-3.png)
![sign-up](https://github.com/JordanBandur/jungle-rails/blob/master/sceenshots/sign-up.png)
![admin dashboard](https://github.com/JordanBandur/jungle-rails/blob/master/sceenshots/admin-dash.png)
![admin categories page](https://github.com/JordanBandur/jungle-rails/blob/master/sceenshots/admin-cat.png)
![admin products page](https://github.com/JordanBandur/jungle-rails/blob/master/sceenshots/admin-product.png)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
