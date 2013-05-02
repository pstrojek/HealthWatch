class MainController < ApplicationController
  def index
    
  end
  
  def show
  end
  
  def startwork
    @work = Work.create(name: 'just test', start: DateTime.now)
    
  end
  
  def endwork
    @work = Work.find(params[:id])
    @work.end = DateTime.now
    @work.save
    @worktime = (@work.end - @work.start).round
    
  end
  
end
