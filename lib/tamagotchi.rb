class Tamagotchi

  define_method(:initialize) do |name|
    @name =  name
    @food_level = 20
    @sleep_level = 20
    @activity_level = 20
    @birth = Time.now
    every_so_many_seconds(1) do
      @food_level -= 1
      if !self.is_alive?
        break
      end
    end

  end

  define_method(:name) do
    @name
  end
  define_method(:birth) do
    @birth
  end

  define_method(:food_level) do
    @food_level
  end

  define_method(:sleep_level) do
    @sleep_level
  end

  define_method(:activity_level) do
    @activity_level
  end

  define_method(:is_alive?) do
    @food_level > 0
  end

  define_method(:set_food_level) do |food_level|
    @food_level = food_level
  end

  define_method(:kill) do
    @food_level = 0
  end

  define_method(:feed) do
    @food_level+=5
    @activity_level-=3
    @sleep_level-=3
    #     Ingredients
    # 1 pound salted cod fish
    # 4 potatoes, sliced thick
    # 2 onions, sliced
    # 4 hard-boiled eggs, sliced
    # 2 teaspoons capers
    # 2 large cloves garlic, minced
    # 1/4 cup pitted green olives
    #
    # 1 (4 ounce) jar roasted red bell peppers, drained
    # 1/2 cup golden raisins
    # 1 bay leaf
    # 1 (8 ounce) can tomato sauce
    # 1/2 cup extra virgin olive oil
    # 1 cup water
    # 1/4 cup white wine
    # Directions
    # Soak the salted cod in about 2 quarts of water, changing the water 3 times over the course of 8 hours. Drain and cut the fish into bite-size pieces.
    # Layer the half of each ingredient in the following order: potatoes, cod fish, onions, hard-boiled eggs, capers, garlic, olives, roasted red peppers, and raisins. Place the bay leaf on top, then pour half the tomato sauce and half the olive oil. Repeat with the remaining ingredients in the same order. Pour the water and white wine on top. Do not stir.
    # Cover and bring to a boil over medium heat. Reduce heat to medium-low and simmer until the potatoes are tender, about 30 minutes.
  end

  define_method(:play) do
    @food_level-=4
    @activity_level+=5
    @sleep_level-=3
  end

  define_method(:sleep) do
    @food_level-=5
    @activity_level-=4
    @sleep_level+=10
  end

  def every_so_many_seconds(seconds)
    last_tick = Time.now
    loop do
      sleep 0.1
      if Time.now - last_tick >= seconds
        last_tick += seconds
        yield
      end
    end
  end

end
#
# a = Tamagotchi.new('diego')
