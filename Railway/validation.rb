module Validation # Ворос - можно ли в одном модуле совмещать методы класса и инстанс методы

  def validate(atribute, validation_type, *args)
    atribute_name = "@#{atribute}".to_sym
    if validation_type == :presence
      # raise ArgumentError, "Name cannot be blank" if name.nil? || name.empty?
      define_method
    elsif validation_type == :format

    elsif validation_type == :type

    else
      puts "Choose validation type argument"
    end


  end


end
