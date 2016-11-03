class Admin::StaticPagesController < AdminController
	before_action :find_static_page, only: [:edit, :update]

	def index
		@static_pages = StaticPage.all
	end

	def new
		@static_page = StaticPage.new
	end

	def create
		@static_page = StaticPage.new(static_page_params)

		if @static_page.save
  			redirect_to admin_static_pages_path, method: :get
      		flash[:success] = "Успешно создано"
  		else
  			render 'new'
  		end
	end

	def edit
	end

	def update
		if @static_page.update(static_page_params)
			redirect_to edit_admin_static_page_path(@static_page), method: :get
			flash[:success] = "Успешно обновлено"
		else
			render "edit"
		end
	end


	private

	def find_static_page
		@static_page = StaticPage.find(params[:id])
	end

	def static_page_params
		params.require(:static_page).permit(:title, :body, :slug, :sp_category)
	end
end
