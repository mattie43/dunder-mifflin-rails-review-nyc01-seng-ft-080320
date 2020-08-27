class Dog < ApplicationRecord
    has_many :employees

    def number_of_owners
        self.employees.count
    end
end
