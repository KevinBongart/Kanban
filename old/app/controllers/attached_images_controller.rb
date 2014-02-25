class AttachedImagesController < ApplicationController
  # GET /attached_images
  # GET /attached_images.json
  def index
    @attached_images = AttachedImage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @attached_images }
    end
  end

  # GET /attached_images/1
  # GET /attached_images/1.json
  def show
    @attached_image = AttachedImage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @attached_image }
    end
  end

  # GET /attached_images/new
  # GET /attached_images/new.json
  def new
    @attached_image = AttachedImage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @attached_image }
    end
  end

  # GET /attached_images/1/edit
  def edit
    @attached_image = AttachedImage.find(params[:id])
  end

  # POST /attached_images
  # POST /attached_images.json
  def create
    @attached_image = AttachedImage.new(params[:attached_image])

    respond_to do |format|
      if @attached_image.save
        format.html { redirect_to @attached_image, :notice => 'Attached image was successfully created.' }
        format.json { render :json => @attached_image, :status => :created, :location => @attached_image }
      else
        format.html { render :action => "new" }
        format.json { render :json => @attached_image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /attached_images/1
  # PUT /attached_images/1.json
  def update
    @attached_image = AttachedImage.find(params[:id])

    respond_to do |format|
      if @attached_image.update_attributes(params[:attached_image])
        format.html { redirect_to @attached_image, :notice => 'Attached image was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @attached_image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /attached_images/1
  # DELETE /attached_images/1.json
  def destroy
    @attached_image = AttachedImage.find(params[:id])
    @attached_image.destroy

    respond_to do |format|
      format.html { redirect_to attached_images_url }
      format.json { head :ok }
    end
  end
end
