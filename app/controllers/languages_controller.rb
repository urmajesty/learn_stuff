class LanguagesController < ApplicationController
    
    def index
        @languages = current_learner.languages
    end

    def show
        @language = Language.find_by(id: params[:id])
    end

    def new
        @language = Language.new
    end

    def create
        @language = current_learner.languages.build(language_params)
        if @language.save
                redirect_to language_path(@language)
        else
            render :new
        end
    end
    
    def edit
        @language = Language.find_by(id: params[:id])
    end

    def update
        params.require(:language.permit(:title, :distance, :category))
    end
end
