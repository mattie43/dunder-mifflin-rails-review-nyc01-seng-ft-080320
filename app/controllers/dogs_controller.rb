class DogsController < ApplicationController

    def index
        @dogs = Dog.all
    end

    def show
        @dog = Dog.find(params[:id])
    end

    def sort_dogs
        @temp_dogs = Dog.all
        @dogs = @temp_dogs.sort_by { |dog| dog.number_of_owners }.reverse
        render :index
    end
end
