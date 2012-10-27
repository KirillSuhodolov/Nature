require 'carrierwave'
class PhotosController < ApplicationController
  # GET /photos
  # GET /photos.json
  def index
    @photos = Photo.all
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
    @photo = Photo.find(params[:id])
  end

  # GET /photos/new
  # GET /photos/new.json
  def new
    @photo = Photo.new(:article_id => params[:article_id])
  end

  # GET /photos/1/edit
  def edit
    @photo = Photo.find(params[:id])
  end

  # POST /photos
  # POST /photos.json
  def create
    @photo = Photo.create(params[:photo])
  end

  # PUT /photos/1
  # PUT /photos/1.json
  def update
    @photo = Photo.find(params[:id])
    if @photo.update_attributes(params[:photo])
      redirect_to @photo.article, notice: 'Photo was successfully updated.' 
    else
      render :edit
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to photos_url, notice: "Photo was successfully destroyed."
  end
end
