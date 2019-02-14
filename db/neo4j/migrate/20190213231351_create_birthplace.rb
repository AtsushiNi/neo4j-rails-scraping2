class CreateBirthplace < Neo4j::Migrations::Base
  def up
    add_constraint :Birthplace, :uuid
  end

  def down
    drop_constraint :Birthplace, :uuid
  end
end
