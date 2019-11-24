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
        @language = Language.find_by(id: params[:id])
        if @language.update(language_params)
            redirect_to language_path(@language)
        else
            render :edit
        end
    end

    def destroy
        session.clear
        redirect_to root_path
    end
    
    private

    def language_params
        params.require(:language).permit(:language, :name)
    end
end
