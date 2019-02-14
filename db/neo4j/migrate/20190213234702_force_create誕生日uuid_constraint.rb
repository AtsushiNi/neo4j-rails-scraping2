class ForceCreate誕生日uuidConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :誕生日, :uuid, force: true
  end

  def down
    drop_constraint :誕生日, :uuid
  end
end
