class BodyWeight
  include Neo4j::ActiveNode
  property :value, type: String
  self.mapped_label_name = "体重"

  has_many :out, :player, type: :body_weight

end
