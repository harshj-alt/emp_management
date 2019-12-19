class StudentsController < ApplicationController

  before_action :set_student,  only: [:edit, :update, :show, :destroy]

  def index 
    @student= Student.all
  end 


  def new 
    @student =Student.new
  end

  def edit
    
  end 

  def update
    
      if @student.update(student_params)
        flash[:success] = "Student was successfully updated"
        redirect_to student_path(@student)
      else 
        render 'edit'
      end
  end
  
  
  def create 
    #   byebug
    # render html: params[:student].inspect
    @student =Student.new(student_params)
    @student.user=User.first
      if @student.save
        flash[:success]="student is created"
        redirect_to student_path(@student)
      else
        render 'new'
      end
  
  end

  def destroy
    
    @student.destroy
    flash[:danger] = "student is successfully deleted"

    redirect_to students_path
  end 
  def show
    #byebug
    
    puts "#{@student}"
  end
 
   

  private
    def set_student
      @student = Student.find(params[:id])
    end
    
    def student_params
      params.require(:student).permit(:name,:age,:city,:Address,:postal_code)
    end
  
  end