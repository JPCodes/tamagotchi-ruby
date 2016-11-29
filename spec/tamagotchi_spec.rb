require('rspec')
require('tamagotchi')

describe(Tamagotchi) do
  describe('#initialize') do
    it('sets the name and life levels fo a new Tamagotchi') do
      my_pet = Tamagotchi.new('ddragon')
      expect(my_pet.name()).to(eq('ddragon'))
      expect(my_pet.food_level()).to(eq(10))
      expect(my_pet.sleep_level()).to(eq(10))
      expect(my_pet.activity_level()).to(eq(10))
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


end
