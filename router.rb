class Router
  def initialize(meals_controller, customers_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
  end

  def run
    # @employee = @sessions_controller.sign_in

    loop do
      # if @employee.manager?
      #   print_actions_manager
      #   action = gets.chomp.to_i
      #   dispatch_manager(action)

      # else
      #   print_actions_rider
      #   action = gets.chomp.to_i
      #   dispatch_rider(action)
      # end

      print_actions
      action = gets.chomp.to_i
      dispatch(action)
    end
  end

  private

  def print_actions
    puts "1. Create a Meal"
    puts "2. List all Meals"
    puts "---------------------------"
    puts "3. Create a Customer"
    puts "4. List all Customers"

  end

  def dispatch(action)
    case action
    when 1 then @meals_controller.add
    when 2 then @meals_controller.list
    when 3 then @customers_controller.add
    when 4 then @customers_controller.list
    end
  end
end
