def alquiler_por_dia (dias, vehiculo)
    if vehiculo == 1
      dias * 20
    elsif vehiculo == 2
      dias * 35
    else
      nil
    end  
end