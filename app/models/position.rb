class Position
  include Neo4j::ActiveNode
  property :value, type: String
  self.mapped_label_name = '守備'

  has_many :out, :player, type: :position

end
