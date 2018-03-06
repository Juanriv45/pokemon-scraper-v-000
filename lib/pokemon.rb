class Pokemon
  attr_accessor :name, :type, :db, :id
  def initialize(name:, type:, db:,id:)
    @name = name
    @type = type
    @db = db
    @id = id
  end
  def self.save(id:,name:,type:)
    @db.execute("INSERT INTO pokemon (id, name, type) VALUES (?, ?, ?);", @id, @name, @type)
    #db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end
  def self.find

  end
end
