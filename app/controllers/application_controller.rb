class ApplicationController < ActionController::Base

  private
    
    def set_employee_table
      @employee_table = EmployeeTable.find(params[:id])
    end

    
    def employee_table_params
      params.require(:employee_table).permit(:name, :email, :address)
    end
end
