require('rspec')
require('tamagotchi')

describe(Tamagotchi) do
  describe('#initialize') do
    it('sets the name and life levels for a new Tamagotchi') do
      my_pet = Tamagotchi.new('ddragon')
      expect(my_pet.name()).to(eq('ddragon'))
      expect(my_pet.food_level()).to(eq(20))
      expect(my_pet.sleep_level()).to(eq(20))
      expect(my_pet.activity_level()).to(eq(20))
      #expect(my_pet.birth()).to(eq(Time.now))
    end
  end
  describe('#is_alive?') do
    it "is alive if the food level is above 0" do
      my_pet = Tamagotchi.new('jdragon')
      expect(my_pet.is_alive?()).to(eq(true))
    end

    it('is dead if the food level is 0') do
      my_pet = Tamagotchi.new('jdragon')
      my_pet.set_food_level(0)
      expect(my_pet.is_alive?()).to(eq(false))
    end
    it('randomly kill because of reasons') do
      my_pet = Tamagotchi.new('jdragon')
      my_pet.kill()
      expect(my_pet.is_alive?()).to(eq(false))
    end
  end
  describe('#play') do
    it('raises activity_level') do
      my_pet = Tamagotchi.new('jdragon')
      my_pet.play()
      expect(my_pet.activity_level()).to(eq(25))
    end
  end
  describe('#eat') do
    it('raises food_level') do
      my_pet = Tamagotchi.new('jdragon')
      my_pet.feed()
      expect(my_pet.food_level()).to(eq(25))
    end
  end
  describe('#sleep') do
    it('raises sleep_level') do
      my_pet = Tamagotchi.new('jdragon')
      my_pet.sleep()
      expect(my_pet.make_sleep_level()).to(eq(30))
    end
  end

  # describe('#time_passes') do
  #   it('decreases the amount of food the Tamagotchi has left by 1') do
  #     my_pet =  Tamagotchi.new('ddragon')
  #     expect(my_pet.food_level()).to(eq((Time.now-my_pet.birth).floor))
  #   end
  # end


end
