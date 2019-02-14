class Age
  include Neo4j::ActiveNode
  property :value, type: String
  self.mapped_label_name = "年齢"

  has_many :out, :player, type: :age

end
