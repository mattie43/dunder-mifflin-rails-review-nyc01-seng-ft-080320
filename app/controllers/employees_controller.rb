class EmployeesController < ApplicationController
    def index
        @employees = Employee.all
    end

    def show
        @employee = Employee.find(params[:id])
    end

    def new
        @employee = Employee.new
    end

    def create
        employee = Employee.create(employee_params)
        redirect_to employee_path(employee)
    end

    def edit
        @employee = Employee.find(params[:id])
    end

    def update
        employee = Employee.find(params[:id])
        e_alias = params[:employee][:alias]
        e_title = params[:employee][:title]

        if (employee.alias_check?(e_alias) == nil || employee.job_title?(e_title) == nil) || (employee.alias_check?(e_alias) == nil && employee.job_title?(e_title) == nil)
            employee.update(employee_params)
            redirect_to employee_path(employee)
        elsif employee.alias_check?(e_alias).alias.downcase == "none"
            employee.update(params.require(:employee).permit(:alias))
            redirect_to employee_path(employee)
        else
            redirect_to employee_path(employee)
        end
    end

    private

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
    end
end
