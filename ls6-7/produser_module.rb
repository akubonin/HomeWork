module Produser
  def set_produser(produser)
    @produser = produser
  end

  def produser
    puts "Veichle produser is #{@produser}."
    @produser
  end
end


