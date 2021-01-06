module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end
end

class Rabbit
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Cricket
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")

peter.jump
jiminy.jump


# Create your module here!
module MartialArts
    def swordsman
        puts "I'm a swordsman"
    end
end

class Ninja
    include MartialArts
    def initialize(clan)
        @clan = clan
    end
end

class Samurai
    include MartialArts
    def initialize(shogun)
        @shogun = shogun
    end
end


module Languages
  FAVE = "Ruby"  # This is what you typed before, right? :D
end

class Master
    include Languages
    def initialize; end
    def victory
        puts FAVE
    end
end

total = Master.new
total.victory