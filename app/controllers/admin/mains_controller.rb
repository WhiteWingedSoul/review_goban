class Admin::MainsController < ApplicationController
  load_and_authorize_resource :user, :category
  def index
  end
end
