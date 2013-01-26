class ProjectMessagesController < ApplicationController
  # GET /project_messages
  # GET /project_messages.json
  def index
    @project_messages = ProjectMessage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @project_messages }
    end
  end

  # GET /project_messages/1
  # GET /project_messages/1.json
  def show
    @project_message = ProjectMessage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project_message }
    end
  end

  # GET /project_messages/new
  # GET /project_messages/new.json
  def new
    @project_message = ProjectMessage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project_message }
    end
  end

  # GET /project_messages/1/edit
  def edit
    @project_message = ProjectMessage.find(params[:id])
  end

  # POST /project_messages
  # POST /project_messages.json
  def create
    @project_message = ProjectMessage.new(params[:project_message])

    respond_to do |format|
      if @project_message.save
        format.html { redirect_to @project_message, notice: 'Project message was successfully created.' }
        format.json { render json: @project_message, status: :created, location: @project_message }
      else
        format.html { render action: "new" }
        format.json { render json: @project_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /project_messages/1
  # PUT /project_messages/1.json
  def update
    @project_message = ProjectMessage.find(params[:id])

    respond_to do |format|
      if @project_message.update_attributes(params[:project_message])
        format.html { redirect_to @project_message, notice: 'Project message was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_messages/1
  # DELETE /project_messages/1.json
  def destroy
    @project_message = ProjectMessage.find(params[:id])
    @project_message.destroy

    respond_to do |format|
      format.html { redirect_to project_messages_url }
      format.json { head :no_content }
    end
  end
end
