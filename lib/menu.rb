class Menu
attr_reader :active, :home
  def initialize
    @active = true
  end

  def active?
    @active
  end

  def play
    @active = !@active
  end

  def home
     @strings.welcome
  end

end
