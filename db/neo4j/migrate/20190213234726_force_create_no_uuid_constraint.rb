class ForceCreateNoUuidConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :No, :uuid, force: true
  end

  def down
    drop_constraint :No, :uuid
  end
end
