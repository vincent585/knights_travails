class Node
  attr_accessor :coordinates, :adjacent_nodes, :parent

  def initialize(coordinates)
    @coordinates = coordinates
    @adjacent_nodes = []
    @parent = nil
  end

  def add_edge(adjacent_node)
    @adjacent_nodes << adjacent_node
  end
end
