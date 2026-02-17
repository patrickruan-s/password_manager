class EntriesController < ApplicationController
    def index
        if current_user
            @entries = current_user.entries
        else
            @entries = []
        end
    end

    def new
        @entry = Entry.new
    end

    def create
        @entry = current_user.entries.new(entry_params)

        if @entry.save
            flash[:notice] = "Entry has been saved!"
            redirect_to root_path
        else
            flash[:alert] = "Entry save failed"
        end
    end

    def show
        @entry = current_user.entries.find_by(id: params[:id])
    end

    private

        def entry_params
            params.expect(entry: [:name, :url, :username, :password])
        end
end