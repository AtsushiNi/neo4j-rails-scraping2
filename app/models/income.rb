class Income
  include Neo4j::ActiveNode
  property :value, type: String
  self.mapped_label_name = "年俸"

  has_many :out, :player, type: :income

end
