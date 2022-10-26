def alquiler_por_dia (dias, vehiculo)
    if vehiculo == 1
      dias * 20
    elsif vehiculo == 2
      dias * 35
    else
      nil
    end  
end

def precio_con_descuento(dias, vehiculo)
    if vehiculo == 1
      alquiler_descuento = alquiler_por_dia(dias, vehiculo) - (alquiler_por_dia(dias, vehiculo) * 0.15)
    elsif vehiculo == 2
      alquiler_descuento = alquiler_por_dia(dias, vehiculo) - (alquiler_por_dia(dias, vehiculo) * 0.20)
    else
      nil
    end
  
end

def total_kilometros (odometro_inicio, odometro_fin)
    kilometros = odometro_fin - odometro_inicio
end