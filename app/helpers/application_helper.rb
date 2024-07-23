module ApplicationHelper
  def priority_element(priority) 
    case priority
    when 'low'
      return '<span class="badge rounded-pill text-bg-success">Low Priority</span>'
    when 'medium'
      return '<span class="badge rounded-pill text-bg-warning">Medium Priority</span>'
    when 'high'
      return '<span class="badge rounded-pill text-bg-danger">High Priority</span>'
    end
  end
end
