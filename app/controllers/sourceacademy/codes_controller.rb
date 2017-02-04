require_dependency "sourceacademy/application_controller"

module Sourceacademy
  class CodesController < ApplicationController
    before_action :set_code, only: [:show]
    before_action :authorize, only: [:edit, :update, :destroy]
    # GET /codes
    def index
	@q = Course::Assessment::Submission.ransack(params[:q])
	@codes = @q.result(distinct: true)	
    end

    # GET /codes/1
    def show
    end

    # GET /codes/new
    def new
      @code = Code.new
    end

    # GET /codes/1/edit
    def edit
    end

    # POST /codes
    def create
      @code = Code.new(code_params)

      if @code.save
        redirect_to @code, notice: 'Code was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /codes/1
    def update
      if @code.update(code_params)
        redirect_to @code, notice: 'Code was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /codes/1
    def destroy
      @code.destroy
      redirect_to codes_url, notice: 'Code was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_code
        @code = Code.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def code_params
        params.require(:code).permit(:name, :body, :author_mail)
      end

      def authorize
	 @code = Code.find(params[:id])
	 if (@code.author_email != current_user.email) 
	     flash[:danger] = "Only the author of the code can edit or destroy"
	     # redirect to main page
	else 
	end
      end
  end 
end
