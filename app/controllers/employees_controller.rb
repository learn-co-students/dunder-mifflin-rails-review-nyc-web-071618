class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
  end

  def create

    @employee = Employee.new(employee_params)

    if @employee.save
      redirect_to employee_path(@employee)
    else
      render :new
    end

  end

  def show
    @employee = Employee.find(params[:id])
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.new(employee_params)
    if @employee.save
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

end # end of EmployeesController class
