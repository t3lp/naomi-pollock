class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def create
  end
end
