class TagsController < ApplicationController
    before_action :require_login, only: [:destroy]

    def index
        @tags = Tag.all
    end

    def show
        @tag = Tag.find(params[:id])
    end

    def destroy
        @tag = Tag.find(params[:id])
        @tag.delete
        flash.notice = "Tag '#{@tag.name}' deleted"
    end
end
