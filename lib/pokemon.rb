class Pokemon
  attr_accessor :name, :type, :db, :id
  def initialize(name:, type:, db:,id:)
    @name = name
    @type = type
    @db = db
    @id = id
  end
  def save
    @db.execute("INSERT INTO pokemon (name, type, id) VALUES (?, ?, ?)", name, type, id)
  end
  def find

  end
end
