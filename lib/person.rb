class Person

  attr_reader :name, :hygiene, :happiness
  attr_accessor :bank_account
  
  def initialize(name)
    @name = name
    @hygiene = 8
    @happiness = 8
    @bank_account = 25
  end

  def happiness=(i)
    @happiness = i
    @happiness = 10 if i > 10 
    @happiness = 0 if i < 0
  end

  def hygiene=(i)
    @hygiene = i
    @hygiene = 10 if i > 10
    @hygiene = 0 if i < 0
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene = @hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene = @hygiene - 3
    self.happiness = @happiness + 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness = @happiness + 3
    friend.happiness = friend.happiness + 3
    "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness = @happiness - 2
      person.happiness = person.happiness - 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness = @happiness + 1
      person.happiness = person.happiness + 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
 
end