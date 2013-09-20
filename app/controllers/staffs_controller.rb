class StaffsController < ApplicationController
  # GET /staffs
  # GET /staffs.json
  before_filter :get_department
  def get_department
@department = Department.find(params[:department_id])

  end
  def index
    @staffs = @department.staffs.order_firstname

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @staffs }
    end
  end

  # GET /staffs/1
  # GET /staffs/1.json
  def show
    @staff = @department.staffs.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @staff }
    end
  end

  # GET /staffs/new
  # GET /staffs/new.json
  def new
    @staff = @department.staffs.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @staff }
    end
  end

  # GET /staffs/1/edit
  def edit
    @staff = @department.staffs.find(params[:id])
  end

  # POST /staffs
  # POST /staffs.json
def create
    @staff = @department.staffs.new(params[:staff])

    respond_to do |format|
      if @staff.save
        format.html { redirect_to ([@department, @staff]), notice: 'Staff was successfully created.' }
        format.json { render json: @staff, status: :created, location: @staff }
      else
        format.html { render action: "new" }
        format.json { render json: @staff.errors, status: :unprocessable_entity }
      end
    end
  end


  # PUT /staffs/1
  # PUT /staffs/1.json
  def update
    @staff = @department.staffs.find(params[:id])

    respond_to do |format|
      if @staff.update_attributes(params[:staff])
        format.html { redirect_to [@department,@staff], notice: 'Staff was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /staffs/1
  # DELETE /staffs/1.json
  def destroy
    @staff = @department.staffs.find(params[:id])
    @staff.destroy

    respond_to do |format|
      format.html { redirect_to staffs_url }
      format.json { head :no_content }
    end
  end
end
