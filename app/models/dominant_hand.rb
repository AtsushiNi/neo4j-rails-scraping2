class DominantHand
  include Neo4j::ActiveNode
  property :value, type: String
  self.mapped_label_name = "投打"

  has_many :out, :player, type: :dominant_hand

end
