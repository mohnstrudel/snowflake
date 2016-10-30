class Admin::Settings::GeneralsController < AdminController
	before_action :find_general, only: [:edit, :update, :destroy]

	def index
		@generals = General.all
	end

	def new
		@general = General.new
	end

	def create
		@general = General.new(general_params)
		if @general.save
			redirect_to edit_admin_settings_general_path(@general), method: :get
			flash[:success] = "Успешно создано"
		else
			render 'new'
			flash[:alert] = "Что-то пошло не так"
		end
	end

	def edit
	end

	def update
		if @general.update(general_params)
			redirect_to edit_admin_settings_general_path(@general), method: :get
			flash[:success] = "Успешно обновлено"
		else
			render 'edit'
			flash[:alert] = "Что-то пошло не так"
		end
	end

	def destroy
		if @general.destroy
			redirect_to admin_settings_general_path, method: :get
			flash[:success] = "Удалено успешно"
		else
			render 'index'
			flash[:alert] = "Что-то пошло не так"
		end
	end


	private

	def general_params
		params.require(:general).permit(:name, :picture, :description, :email, :phone, :vk, :fb, :instagram,
			:monday, :thuesday, :wednesday, :thursday, :friday, :saturday, :sunday, :address,
			:upper_text, :lower_text, :first_image, :second_image)
	end

	def find_general
		@general = General.find(params[:id])
	end
end
