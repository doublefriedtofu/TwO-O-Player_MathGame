class Question
  attr_accessor :rand1, :rand2, :answer
  
  def initialize
    @rand1 = rand(0..20)
    @rand2 = rand(0..20)
    @answer = @rand1 + @rand2
  end

end
