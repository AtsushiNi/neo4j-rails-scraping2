class CreateBloodType < Neo4j::Migrations::Base
  def up
    add_constraint :BloodType, :uuid
  end

  def down
    drop_constraint :BloodType, :uuid
  end
end
