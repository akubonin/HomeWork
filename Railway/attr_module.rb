module Attr

  def attr_accessor_with_history(*new_vars)
    new_vars.each do |var|
      var_name = "@#{var}".to_sym # Cпросить зачем нужно to.sym
      define_method(var) {instance_variable_get(var_name)}
      define_method("#{var}=") do |value|
        instance_variable_set(var_name, value)

        history = instance_variable_get("#{var_name}_all")
        instance_variable_set("@#{var}_all",[]) unless history
        history = instance_variable_get("#{var_name}_all")

        history << value
        instance_variable_set("@#{var}_all",history)
      end
      define_method("#{var}_history") {instance_variable_get("@#{var}_all")}
    end
  end

  def strong_attr_accessor(var, type)
    var_name = "@#{var}".to_sym
    define_method(var) {instance_variable_get(var_name)}
    define_method("#{var}=") do |value|
      raise ArgumentError, "Wrong object class" if type != value.class
      instance_variable_set(var_name, value)
    end
  end
end
