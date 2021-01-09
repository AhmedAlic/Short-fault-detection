V_abs_max;
[min_voltage,V_bus_number] = min(V_max(1:size(V,2),1:3));
bus_at_fault = [];
V_bus_number_temp = V_bus_number;

if min_voltage(1) < min_voltage(2) && min_voltage(1) < min_voltage(3)
    
    min_voltage = min_voltage(1);
    V_bus_number = V_bus_number(1);
    
    else if min_voltage(2) < min_voltage(1) && min_voltage(2) < min_voltage(3)
        
        min_voltage = min_voltage(2);
        V_bus_number = V_bus_number(2);
        
        else if min_voltage(3) < min_voltage(1) && min_voltage(3) < min_voltage(2)
            
            min_voltage = min_voltage(3);
            V_bus_number = V_bus_number(3);
            
            end
            
      end
        
end
            
Bus_temp_1 = V_max(V_bus_number_temp(1),:);
Bus_temp_2 = V_max(V_bus_number_temp(2),:);
Bus_temp_3 = V_max(V_bus_number_temp(3),:);
tolerance = (0.005);

if min_voltage > 0.9
    
    bus_at_fault = 0;
    
    else if min_voltage < 0.1
    
            bus_at_fault = V_bus_number;
    
        else if  abs ( Bus_temp_1(1) - Bus_temp_1(2) ) < tolerance || ...
                 abs ( Bus_temp_1(1) - Bus_temp_1(3) ) < tolerance || ...
                 abs ( Bus_temp_1(2) - Bus_temp_1(3) ) < tolerance 
         
                bus_at_fault = V_bus_number_temp(1);
        
            else if abs ( Bus_temp_2(1) - Bus_temp_2(2) ) < tolerance || ...
                    abs ( Bus_temp_2(1) - Bus_temp_2(3) ) < tolerance || ...
                    abs ( Bus_temp_2(2) - Bus_temp_2(3) ) < tolerance 
            
                    bus_at_fault = V_bus_number_temp(2);
            
                else if abs ( Bus_temp_3(1) - Bus_temp_3(2) ) < tolerance || ...
                        abs ( Bus_temp_3(1) - Bus_temp_3(3) ) < tolerance || ...
                        abs ( Bus_temp_3(2) - Bus_temp_3(3) ) < tolerance
                
                        bus_at_fault = V_bus_number_temp(3);
                        
                    end
                    
                end
                
            end
            
      end
        
end
               
               
clear Bus_temp_1;
clear Bus_temp_2;
clear Bus_temp_3;
clear V_bus_number_temp;
clear tolerance;
clear V_bus_number; 
clear min_voltage;
clear V;
       








        

