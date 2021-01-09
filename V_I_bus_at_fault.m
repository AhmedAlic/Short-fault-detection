I_abs_max;
if bus_at_fault == 0
    
    disp('No fault detected!');
    
else
    
    t = [1];
    I_max_bus_at_fault = [I_max(bus_at_fault,:)];
    V_max_bus_at_fault = [V_max(bus_at_fault,:)];
    
    I_maximum = max(I_max_bus_at_fault);
    I_max_bus_at_fault = [I_max_bus_at_fault(1)/I_maximum, ...
                          I_max_bus_at_fault(2)/I_maximum, ...
                          I_max_bus_at_fault(3)/I_maximum];
    
    I_max_bus_at_fault_R = [t I_max_bus_at_fault(1)];
    I_max_bus_at_fault_S = [t I_max_bus_at_fault(2)];
    I_max_bus_at_fault_T = [t I_max_bus_at_fault(3)];
    V_max_bus_at_fault_R = [t V_max_bus_at_fault(1)];
    V_max_bus_at_fault_S = [t V_max_bus_at_fault(2)];
    V_max_bus_at_fault_T = [t V_max_bus_at_fault(3)];
    
    %clear I_max_bus_at_fault;
    %clear V_max_bus_at_fault;
    clear I_maximum;
    
end
    





