class CreateYear < Neo4j::Migrations::Base
  def up
    add_constraint :Year, :uuid
  end

  def down
    drop_constraint :Year, :uuid
  end
end
