class ArticlesController < ApplicationController
    http_basic_authenticate_with name: "darker", password: "darker", except: [:index, :show]

    def new
    end

    def index
        @article = Article.all
    end

    def show
        @article = Article.find(params[:id])
    end

    def edit
        @article = Article.find(params[:id])
    end

    def create
        @article = Article.new(article_params)

        if @article.save
            redirect_to @article
        else
            render 'new'
        end
        # render plain: params[:article].inspect
    end

    def update
        @article = Article.find(params[:id])
       
        if @article.update(article_params)
          redirect_to @article
        else
          render 'edit'
        end
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy
       
        redirect_to articles_path
    end
    
    private
        def article_params
            params.require(:article).permit(:title, :text)
        end
end
