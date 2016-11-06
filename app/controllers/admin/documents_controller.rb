class Admin::DocumentsController < AdminController
	
	before_action :find_document, only: [:edit, :update, :destroy]


	def index
		@documents = Document.all
	end

	def new
		@document = Document.new
	end

	def edit
	end

	def create
		@document = Document.new(document_params)

		if @document.save
			if params[:pictures]
				params[:pictures].each { |image| @document.pictures.create(image: image) }
			end
			redirect_to edit_admin_document_path(@document), method: :get
			flash[:success] = "Успешно создано"
		else
			render 'new'
			flash[:alert] = "Что-то пошло не так"
		end
	end

	def destroy
		if @@document.destroy
			
			redirect_to admin_documents_path
			flash[:alert] = 'Удалено успешно'
		else
			render 'index'
		end
	end

	def update
		if @document.update(document_params)
			# debug
			if params[:pictures]
				params[:pictures].each { |image| @document.pictures.create(image: image) }
			end
			redirect_to edit_admin_document_path(@document)
			flash[:success] = "Успешно обновлено"
		else
			render 'edit'
		end

	end


	private

	def document_params
		params.require(:document).permit(:title, :doctype_id, :description, { service_ids: [] }, 
			pictures_attributes: [ :id, :image, :document_id, :_destroy ]
			)
	end

	def find_document
		@document = Document.find(params[:id])
	end
end