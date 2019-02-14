class Project
  attr_reader :backers, :title
  
  def initialize(title)
  @backers = []
  @title = title
  end
  
  def add_backer(backer)
  @backers << backer
  Backer.project = self
  Backer.back_project(project)
  end
end