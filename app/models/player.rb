class Player
  include Neo4j::ActiveNode
  property :value, type: String
  self.mapped_label_name = "選手名"

  has_one :in, :number, origin: :player
  has_one :in, :position, origin: :player
  has_one :in, :birthday, origin: :player
  has_one :in, :age, origin: :player
  has_one :in, :year, origin: :player
  has_one :in, :body_height, origin: :player
  has_one :in, :body_weight, origin: :player
  has_one :in, :blood_type, origin: :player
  has_one :in, :dominant_hand, origin: :player
  has_one :in, :birthplace, origin: :player
  has_one :in, :income, origin: :player

end
