class BeatsController < ApplicationController

before_filter :login_required

layout "application"  
  
  # GET /beats
  # GET /beats.xml
  def index
    @lesson = Lesson.find(params[:lesson_id])
    @beats = @lesson.beats
  end

  # GET /beats/1
  # GET /beats/1.xml
  def show
    @beat = Beat.find(params[:id])
  end

  # GET /beats/new
  # GET /beats/new.xml
  def new
    @lesson = Lesson.find(params[:lesson_id])
    @beat = @lesson.beats.build
  end

  # GET /beats/1/edit
  def edit
    @beat = Beat.find(params[:id])
  end

  # POST /beats
  # POST /beats.xml
  def create
    
    @beat = Beat.new(params[:beat])
    respond_to do |format| 
    if @beat.save
        flash[:notice] = 'Beat was successfully created.'
        format.html { redirect_to (@beat) }
     else
        format.html { render :action => "new" }
      end
     end 
  end

  # PUT /beats/1
  # PUT /beats/1.xml
  def update
    @beat = Beat.find(params[:id])

        if @beat.update_attributes(params[:beat])
            flash[:notice] = 'Beat was successfully created.'
            redirect_to(@beat) 
        else
            render :action => "edit" 
        end
     
  end

  # DELETE /beats/1
  # DELETE /beats/1.xml
  def destroy
    @beat = Beat.find(params [:id])
    @beat.destroy

    respond_to do |format|
      format.html { redirect_to post_comment_url(@lesson) }
      format.xml  { head :ok }
    end
  end
  
  
  private
  def
  find_lesson
  @lesson = Lesson.find(params[:lesson_id]) 
  end
  
end
