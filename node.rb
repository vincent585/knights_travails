class Node
  attr_reader :coordinates

  def initialize(coordinates)
    @coordinates = coordinates
    @adjacent_nodes = []
  end

  def add_edge(adjacent_node)
    @adjacent_nodes << adjacent_node
  end
end
