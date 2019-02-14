class CreateDominantHand < Neo4j::Migrations::Base
  def up
    add_constraint :DominantHand, :uuid
  end

  def down
    drop_constraint :DominantHand, :uuid
  end
end
