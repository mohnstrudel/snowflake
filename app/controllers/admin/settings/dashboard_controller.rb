class Admin::Settings::DashboardController < AdminController
  def index
  	@categories = Category.all
  	@subcategories = Subcategory.all
  	@general = General.all
  	@postcategories = Postcategory.all
  	@doctypes = Doctype.all
  end
end
