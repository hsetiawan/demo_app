class HendrapostsController < ApplicationController
  # GET /hendraposts
  # GET /hendraposts.json
  def index
    @hendraposts = Hendrapost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hendraposts }
    end
  end

  # GET /hendraposts/1
  # GET /hendraposts/1.json
  def show
    @hendrapost = Hendrapost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hendrapost }
    end
  end

  # GET /hendraposts/new
  # GET /hendraposts/new.json
  def new
    @hendrapost = Hendrapost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hendrapost }
    end
  end

  # GET /hendraposts/1/edit
  def edit
    @hendrapost = Hendrapost.find(params[:id])
  end

  # POST /hendraposts
  # POST /hendraposts.json
  def create
    @hendrapost = Hendrapost.new(params[:hendrapost])

    respond_to do |format|
      if @hendrapost.save
        format.html { redirect_to @hendrapost, notice: 'Hendrapost was successfully created.' }
        format.json { render json: @hendrapost, status: :created, location: @hendrapost }
      else
        format.html { render action: "new" }
        format.json { render json: @hendrapost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hendraposts/1
  # PUT /hendraposts/1.json
  def update
    @hendrapost = Hendrapost.find(params[:id])

    respond_to do |format|
      if @hendrapost.update_attributes(params[:hendrapost])
        format.html { redirect_to @hendrapost, notice: 'Hendrapost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hendrapost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hendraposts/1
  # DELETE /hendraposts/1.json
  def destroy
    @hendrapost = Hendrapost.find(params[:id])
    @hendrapost.destroy

    respond_to do |format|
      format.html { redirect_to hendraposts_url }
      format.json { head :no_content }
    end
  end
end
