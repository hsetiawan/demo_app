class Micropost2sController < ApplicationController
  # GET /micropost2s
  # GET /micropost2s.json
  def index
    @micropost2s = Micropost2.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @micropost2s }
    end
  end

  # GET /micropost2s/1
  # GET /micropost2s/1.json
  def show
    @micropost2 = Micropost2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @micropost2 }
    end
  end

  # GET /micropost2s/new
  # GET /micropost2s/new.json
  def new
    @micropost2 = Micropost2.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @micropost2 }
    end
  end

  # GET /micropost2s/1/edit
  def edit
    @micropost2 = Micropost2.find(params[:id])
  end

  # POST /micropost2s
  # POST /micropost2s.json
  def create
    @micropost2 = Micropost2.new(params[:micropost2])

    respond_to do |format|
      if @micropost2.save
        format.html { redirect_to @micropost2, notice: 'Micropost2 was successfully created.' }
        format.json { render json: @micropost2, status: :created, location: @micropost2 }
      else
        format.html { render action: "new" }
        format.json { render json: @micropost2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /micropost2s/1
  # PUT /micropost2s/1.json
  def update
    @micropost2 = Micropost2.find(params[:id])

    respond_to do |format|
      if @micropost2.update_attributes(params[:micropost2])
        format.html { redirect_to @micropost2, notice: 'Micropost2 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @micropost2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micropost2s/1
  # DELETE /micropost2s/1.json
  def destroy
    @micropost2 = Micropost2.find(params[:id])
    @micropost2.destroy

    respond_to do |format|
      format.html { redirect_to micropost2s_url }
      format.json { head :no_content }
    end
  end
end
