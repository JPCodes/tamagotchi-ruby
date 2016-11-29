class Tamagotchi

  define_method(:initialize) do |name|
    @name =  name
    @food_level = 20
    @sleep_level = 20
    @activity_level = 20
    @birth = Time.now

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
  end

  define_method(:play) do
    @food_level-=4
    @activity_level+=5
    @sleep_level-=3
  end

  define_method(:make_sleep) do
    @food_level-=4
    @activity_level-=4
    @sleep_level+=10
  end
end
