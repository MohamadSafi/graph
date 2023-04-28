class Edge < ApplicationRecord
  belongs_to :first_node, class_name: 'Node'
  belongs_to :second_node, class_name: 'Node'
end
