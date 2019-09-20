class TodosController < ApplicationController
    before_action :set_todo, only: [:show, :update, :destroy]

    def index
        @todos = current_user.todos
        json_response(@todos)
    end
    
    def create
        @todo = Todo.create!(todo_params)
        json_response(@todo, :created)
    end
    
    def show
        json_response(@todo)
    end
    
    def update
        @todo.update(todo_params)
        head :no_content
    end
    
    def destroy
        @todo.destroy
        json_response(:destroyed)
    end 
    
    private

    def todo_params
        params.require(:todo).permit(:text, :complete, :user_id, :id, :created_at, :updated_at)
        .with_defaults(user_id: current_user.id)
    end
    
    def set_todo
        @todo = Todo.find(params[:id])
    end

end
