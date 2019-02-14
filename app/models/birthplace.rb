class Birthplace
  include Neo4j::ActiveNode
  property :value, type: String
  self.mapped_label_name = "出身地"

  has_many :out, :player, type: :birth_place

end
