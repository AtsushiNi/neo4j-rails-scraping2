class CreateIncome < Neo4j::Migrations::Base
  def up
    add_constraint :Income, :uuid
  end

  def down
    drop_constraint :Income, :uuid
  end
end
