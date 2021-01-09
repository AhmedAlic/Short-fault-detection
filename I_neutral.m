if bus_at_fault == 0
    
 else
        
    t = [1];
    
    I_N_bus_at_fault = sqrt ( (I_max_bus_at_fault_R(2))^2 + ...
                              (I_max_bus_at_fault_S(2))^2 + ...
                              (I_max_bus_at_fault_T(2))^2   ...
                            - (I_max_bus_at_fault_R(2) * I_max_bus_at_fault_S(2)) ...
                            - (I_max_bus_at_fault_R(2) * I_max_bus_at_fault_T(2)) ...
                            - (I_max_bus_at_fault_S(2) * I_max_bus_at_fault_T(2)) );
    
    I_N_bus_at_fault = [t I_N_bus_at_fault];
    
    clear t;
    
end
         