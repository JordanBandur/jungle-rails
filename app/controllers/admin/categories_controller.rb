module Admin
  class CategoriesController < ApplicationController
    include HttpAuthenticatable

    def index # Fetches all categories and makes them available to the view
      @categories = Category.all
    end

    def new # Initializes a new Category object
      @category = Category.new 
    end

    # Handles the form submission for creating a new category. If the category is valid and saved, it
    # redirects to the index page with a success message. If not, it re-renders the 'new' template
    def create
      @category = Category.new(category_params)
      if @category.save
        redirect_to admin_categories_path, notice: 'Category created!'
      else
        render :new
      end
    end

    private

    # Strong parameter(interface for protecting attributes from end-user assignment) method to permit
    # only the name attribute for the category creation
    def category_params
      params.require(:category).permit(:name)
    end
  end
end
