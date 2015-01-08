class Generator
  def generate
    @mastercode = []
    palate = ['r','g','b','y']
    4.times do
      @mastercode << palate.sample
    end
    @mastercode = @mastercode.join
  end
end
