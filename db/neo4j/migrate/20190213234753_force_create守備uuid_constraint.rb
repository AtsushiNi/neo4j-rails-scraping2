class ForceCreate守備uuidConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :守備, :uuid, force: true
  end

  def down
    drop_constraint :守備, :uuid
  end
end
