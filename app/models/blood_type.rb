class BloodType
  include Neo4j::ActiveNode
  property :value, type: String
  self.mapped_label_name = "血液型"

  has_many :out, :player, type: :blood_type

end
