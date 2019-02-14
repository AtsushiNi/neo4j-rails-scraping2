class ForceCreate年俸uuidConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :年俸, :uuid, force: true
  end

  def down
    drop_constraint :年俸, :uuid
  end
end
