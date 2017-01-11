class SessionsController < ApplicationController
    include ApplicationHelper

    def new
    end

    def create
        render 'new'
    end

    def show
        @features = @session[:list][:features]
    end

    def add_to_list(feature)
        session[:list] << feature
    end

    # Index
    def index
        @items = list_session.list_contents
    end

    # Add
    def add
        session[:list] ||= {}
        features = session[:list][:features]

        # If exists, add new, else create new variable
        if features && features != {}
            session[:list][:features] << params[:id]
        else
            session[:list][:features] = Array(params[:id])
        end

        # Handle the request
        respond_to do |format|
            format.json { render json: list_session.build_json }
            format.html { redirect_to list_index_path }
        end
    end

    # Delete
    def delete
        session[:list] ||= {}
        features = session[:list][:features]
        id = params[:id]
        all = params[:all]

        # Is ID present?
        if id.blank?
            features.delete
        else
            if all.blank?
                features.delete_at(features.index(id) || features.length)
            else
                features.delete(params['id'])
            end
        end

        # Handle the request
        respond_to do |format|
            format.json { render json: list_session.build_json }
            format.html { redirect_to list_index_path }
        end
    end
end
