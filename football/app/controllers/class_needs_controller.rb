class ClassNeedsController < ApplicationController
  # GET /class_needs
  # GET /class_needs.json
  def index
    @class_needs = ClassNeed.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @class_needs }
    end
  end

  # GET /class_needs/1
  # GET /class_needs/1.json
  def show
    @class_need = ClassNeed.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @class_need }
    end
  end

  # GET /class_needs/new
  # GET /class_needs/new.json
  def new
    @class_need = ClassNeed.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @class_need }
    end
  end

  # GET /class_needs/1/edit
  def edit
    @class_need = ClassNeed.find(params[:id])
  end

  # POST /class_needs
  # POST /class_needs.json
  def create
    @class_need = ClassNeed.new(params[:class_need])

    respond_to do |format|
      if @class_need.save
        format.html { redirect_to @class_need, notice: 'Class need was successfully created.' }
        format.json { render json: @class_need, status: :created, location: @class_need }
      else
        format.html { render action: "new" }
        format.json { render json: @class_need.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /class_needs/1
  # PUT /class_needs/1.json
  def update
    @class_need = ClassNeed.find(params[:id])

    respond_to do |format|
      if @class_need.update_attributes(params[:class_need])
        format.html { redirect_to @class_need, notice: 'Class need was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @class_need.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_needs/1
  # DELETE /class_needs/1.json
  def destroy
    @class_need = ClassNeed.find(params[:id])
    @class_need.destroy

    respond_to do |format|
      format.html { redirect_to class_needs_url }
      format.json { head :no_content }
    end
  end
end
