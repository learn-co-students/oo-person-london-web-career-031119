class Person
  attr_accessor :bank_account, :happiness, :hygiene
  #maximum and minimum points for both happiness and hygiene should be 10 and 0 respectively
  attr_reader :name

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def hygiene=(new_hygiene)
    if new_hygiene >= 10
      @hygiene = 10
    elsif new_hygiene <= 0
      @hygiene = 0
    else @hygiene = new_hygiene
    end
  end

  def happiness=(new_happiness)
    if new_happiness >= 10
      @happiness = 10
    elsif new_happiness <= 0
      @happiness = 0
    else @happiness = new_happiness
    end
  end

  def happy?#return true if @happiness > 7
    @happiness > 7
  end

  def clean?#public instance method
    @hygiene > 7
  end

  def get_paid(salary)#public instance method
    @bank_account = @bank_account + salary
    "all about the benjamins"
  end

  def take_bath#public instance method
    self.hygiene = @hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene = @hygiene - 3
    self.happiness = @happiness + 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)#public instance method #friend.class = Person
    self.happiness = @happiness + 3
    friend.happiness = friend.happiness + 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend,topic)#public instance method
    if topic == "politics"
      self.happiness = @happiness - 2
      friend.happiness = friend.happiness - 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness = @happiness + 1
      friend.happiness = friend.happiness + 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end
