class Year
  include Neo4j::ActiveNode
  property :value, type: String
  self.mapped_label_name = "年数"

  has_many :out, :player, type: :year
    
end
