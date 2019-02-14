class CreateBodyWeight < Neo4j::Migrations::Base
  def up
    add_constraint :BodyWeight, :uuid
  end

  def down
    drop_constraint :BodyWeight, :uuid
  end
end
