class ForceCreate生年月日uuidConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :生年月日, :uuid, force: true
  end

  def down
    drop_constraint :生年月日, :uuid
  end
end
