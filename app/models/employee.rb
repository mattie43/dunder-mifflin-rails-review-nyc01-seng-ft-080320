class Employee < ApplicationRecord
    belongs_to :dog

    def full_name
        first_name + " " + last_name
    end

    def alias_check?(str)
        Employee.all.find_by(alias: str)
    end

    def job_title?(str)
        Employee.all.find_by(title: str)
    end
end
