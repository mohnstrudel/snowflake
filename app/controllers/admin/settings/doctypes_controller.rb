class Admin::Settings::DoctypesController < AdminController

	before_action :find_doctype, only: [:edit, :update, :destroy]

	def index
		@doctypes = Doctype.all
	end

	def new
		@doctype = Doctype.new
	end

	def create
		@doctype = Doctype.new(doctype_params)
		if @doctype.save
			redirect_to edit_admin_settings_doctype_path(@doctype), method: :get
			flash[:success] = "Успешно создано"
		else
			render 'new'
			flash[:alert] = "Что-то пошло не так"
		end
	end

	def edit
	end

	def update
		if @doctype.update(doctype_params)
			redirect_to edit_admin_settings_doctype_path(@doctype), method: :get
			flash[:success] = "Успешно обновлено"
		else
			render 'edit'
			flash[:alert] = "Что-то пошло не так"
		end
	end

	def destroy
		if @doctype.destroy
			redirect_to admin_settings_doctypes_path, method: :get
			flash[:success] = "Удалено успешно"
		else
			render 'index'
			flash[:alert] = "Что-то пошло не так"
		end
	end


	private

	def doctype_params
		params.require(:doctype).permit(:title)
	end

	def find_doctype
		@doctype = Doctype.find(params[:id])
	end
end

