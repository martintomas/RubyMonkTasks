# Problem Statement
# A restaurant has incoming orders for which you need to compute the costs based on the menu.
# You might get multiple orders at times.

class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    # original code from rubymonk --> no need to declare sum
    # orders.inject(0) do |total_cost, order|
    #   total_cost + order.keys.inject(0) {|cost, key| cost + @menu[key]*order[key] }
    # end

    sum = 0
    orders.each do |order|
      order.each_pair { |key, value| sum += @menu[key] * value}
    end
    sum
  end
end