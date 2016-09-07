class EmployeesController < ApplicationController
  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to employees_index_path
    else
      render 'new'
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update(employee_params)
      redirect_to root_path
    end

  end

  def delete
    @employee = Employee.find(params[:id])
    if @employee.delete
      redirect_to root_path
    end
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def index
    @employees = Employee.all
  end

private
  def employee_params
    params.require(:employee).permit(:name,:age,:salary,:gender,:email,:phone)
  end

end
