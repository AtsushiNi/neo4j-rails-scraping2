class BodyHeight
  include Neo4j::ActiveNode
  property :value, type: String
  self.mapped_label_name = "身長"

  has_many :out, :player, type: :body_height

end
