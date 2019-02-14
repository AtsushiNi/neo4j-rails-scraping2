class Birthday
  include Neo4j::ActiveNode
  property :value, type: String
  self.mapped_label_name = "生年月日"

  has_many :out, :player, type: :birthday

end
