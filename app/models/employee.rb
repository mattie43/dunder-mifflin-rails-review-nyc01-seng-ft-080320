class Employee < ApplicationRecord
    belongs_to :dog

    def full_name
        first_name + " " + last_name
    end

    def alias_check?(alias)
        Employee.all.find_by(alias: alias)
    end

    def job_title_check
    end
end
