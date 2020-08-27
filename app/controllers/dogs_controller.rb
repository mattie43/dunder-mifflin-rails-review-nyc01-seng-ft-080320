class DogsController < ApplicationController

    def index
        @dogs = Dog.all
    end

    def show
        @dog = Dog.find(params[:id])
    end

    def sort_dogs
        @dogs = Dog.all
        @dogs.sort_by { |dog| dog.number_of_owners }
        render :index
    end
end
