class Admin::Settings::DashboardController < AdminController
  def index
  	@categories = Category.all
  	@subcategories = Subcategory.all
  	@general = General.all
  end
end
