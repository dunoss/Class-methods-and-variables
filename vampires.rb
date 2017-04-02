class Vampire

  attr_reader
  attr_accessor :name, :age, :in_coffin, :drank_blood_today

    @@coven = []

    def initialize(name,age)
      @name = name
      @age = age
      @in_coffin = true
      @drank_blood_today = true
    end

    def self.create(name,age)
      v = self.new(name,age)
      @@coven << v
      v
    end

    def drink_blood
      @drank_blood_today = true
    end

    def self.sunrise
      @@coven.delete_if {|v| v.in_coffin == false || v.drank_blood_today == false}
    end

    def self.sunset
      @@coven.each do |v|
        v.in_coffin = false
        v.drank_blood_today = false
      end
    end

    def go_home
     @in_coffin = true
    end
  end
