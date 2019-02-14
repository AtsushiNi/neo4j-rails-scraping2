class ForceCreate選手名uuidConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :選手名, :uuid, force: true
  end

  def down
    drop_constraint :選手名, :uuid
  end
end
