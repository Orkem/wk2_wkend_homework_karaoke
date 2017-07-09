class BarTab
  attr_reader :guest_tabs
  def initialize
    @guest_tabs = {}
  end

  def add_to_customer_tab(guest, amount)
   !@guest_tabs[guest] ? @guest_tabs[guest] = amount : @guest_tabs[guest] += amount 
  end

  #function which iterates through guest tabs
  def find_tab(guest_obj)
    guest = @guest_tabs.find{|guest_tab| guest_tab == guest_obj}
    return guest.nil? ? false : guest
    #if no customer potentially return false and ask if you want to create a tab
  end











end