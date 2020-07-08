class Show
attr_reader :name,
            :creator,
            :characters
  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    @characters.sum do |character|
      character.salary
    end
  end

  def highest_paid_actor
    result = @characters.max_by do |character|
      character.salary
    end
    result.actor
  end

  def actors
      @characters.map do |character|
        character.actor

    # @characters.collect_concat do |character|
    #   character.actor
    # flat_map would be the same as collect_concat.  It's better if you use it for nested arrays.
    end
  end




end
