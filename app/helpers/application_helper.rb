module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | Umbrellas"      
    end
  end
end
