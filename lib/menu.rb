class Menu
  attr_reader :active, :home
    def initialize(game)
      @active = true
      @strings = StringOutputs.new
      @game = game
    end

    def active?
      @active
    end

    def open
      [@strings.welcome, :go]
    end

    def execute(input)
      case input
      when 'q' then [@strings.goodbye, :stop]
      when 'i' then [@strings.instructions, :go]
      when 'p' then play
      end
    end

    def play
      @active = false
      @game.start_game
    end
end
