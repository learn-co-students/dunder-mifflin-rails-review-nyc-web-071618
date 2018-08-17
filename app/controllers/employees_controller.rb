class EmployeesController < ApplicationController
  before_action :find_employee, only:[:show, :edit, :update, :destory]


  def index
   @employees = Employee.all
  end

  def new
   @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.valid?
      @employee.save
     redirect_to employee_path(@employee)
   else
     render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @employee.update(employee_params)
     redirect_to employee_path(@employee)
   else
     render :edit
    end
  end

  def destroy
  end

  private

  def employee_params
   params.require(:employee).permit(:first_name,:last_name,:alias,:title,:office,:dog_id,:img_url)
  end

  def find_employee
    @employee = Employee.find(params[:id])
  end
end
