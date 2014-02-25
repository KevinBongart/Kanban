class AttachedCopiesController < ApplicationController
  # GET /attached_copies
  # GET /attached_copies.json
  def index
    @attached_copies = AttachedCopy.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @attached_copies }
    end
  end

  # GET /attached_copies/1
  # GET /attached_copies/1.json
  def show
    @attached_copy = AttachedCopy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @attached_copy }
    end
  end

  # GET /attached_copies/new
  # GET /attached_copies/new.json
  def new
    @attached_copy = AttachedCopy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @attached_copy }
    end
  end

  # GET /attached_copies/1/edit
  def edit
    @attached_copy = AttachedCopy.find(params[:id])
  end

  # POST /attached_copies
  # POST /attached_copies.json
  def create
    @attached_copy = AttachedCopy.new(params[:attached_copy])

    respond_to do |format|
      if @attached_copy.save
        format.html { redirect_to @attached_copy, :notice => 'Attached copy was successfully created.' }
        format.json { render :json => @attached_copy, :status => :created, :location => @attached_copy }
      else
        format.html { render :action => "new" }
        format.json { render :json => @attached_copy.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /attached_copies/1
  # PUT /attached_copies/1.json
  def update
    @attached_copy = AttachedCopy.find(params[:id])

    respond_to do |format|
      if @attached_copy.update_attributes(params[:attached_copy])
        format.html { redirect_to @attached_copy, :notice => 'Attached copy was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @attached_copy.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /attached_copies/1
  # DELETE /attached_copies/1.json
  def destroy
    @attached_copy = AttachedCopy.find(params[:id])
    @attached_copy.destroy

    respond_to do |format|
      format.html { redirect_to attached_copies_url }
      format.json { head :ok }
    end
  end
end
