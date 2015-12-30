class EmployeesController < ApplicationController

  def index
    current_user
    @employees = Employee.all
    @employee = Employee.new
  end

  def create
    Employee.create( employee_params )
    redirect_to employees_path
  end

  def edit
    current_user
    @employee = Employee.find(params[:id])
  end

  def update
    employee = Employee.find(params[:id])
    employee.update( employee_params )
    redirect_to employees_path
  end

  def destroy
    Employee.destroy(params[:id])
    redirect_to employees_path
  end


  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :position, :phone, :email)
  end
end
