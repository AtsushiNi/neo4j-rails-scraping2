class CreateBodyHeight < Neo4j::Migrations::Base
  def up
    add_constraint :BodyHeight, :uuid
  end

  def down
    drop_constraint :BodyHeight, :uuid
  end
end
