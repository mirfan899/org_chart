class GetOrgData
  attr_accessor :id, :name, :parent_id, :title, :image

  def self.to_start
    table_start = ""
    table_start << "<table id='orgChartData' style='display: none;'>"
    table_start<< "<tr>"
    table_start<< "<th>id</th>"
    table_start<<"<th>parent id</th>"
    table_start<<"<th>name</th>"
    table_start<<"<th>title</th>"
    table_start<<"<th>image</th>"
    table_start<<"</tr>"
    table_start.html_safe
  end

  def self.to_end
    table_end = ""
    table_end << "</table>"
    table_end.html_safe
  end

  def to_node
    node = ""
    node << "<tr>"
    node << "<td>#{id}</td>"
    node << "<td>#{parent_id}</td>"
    node << "<td>#{name}</td>"
    node << "<td>#{title}</td>"
    node << "<td>#{image}{</td>"
    node << "</tr>"
    node.html_safe
  end
end