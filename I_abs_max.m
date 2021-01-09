I = [V_I_Bus_1{2},V_I_Bus_2{2},V_I_Bus_3{2},V_I_Bus_4{2},V_I_Bus_5{2},V_I_Bus_6{2},V_I_Bus_7{2},V_I_Bus_8{2},V_I_Bus_9{2},V_I_Bus_10{2},V_I_Bus_11{2},V_I_Bus_12{2},V_I_Bus_13{2},V_I_Bus_14{2}];

I_max = [];

for i=1:size(I,2)
    
    R = I(i).Values.Data(1605:3200,1);
    S = I(i).Values.Data(1605:3200,2);
    T = I(i).Values.Data(1605:3200,3);

    max_R = max(R);
    max_S = max(S);
    max_T = max(T);
     
    min_R = abs(min(R));
    min_S = abs(min(S));
    min_T = abs(min(T));

    I_max_temp = [];
    
    if max_R > min_R
        
        I_max_temp = [I_max_temp,max_R];
        
    else
        
        I_max_temp = [I_max_temp,min_R];
        
    end
    
    if max_S > min_S
        
        I_max_temp = [I_max_temp,max_S];
        
    else
        
        I_max_temp = [I_max_temp,min_S];
        
    end
    
    if max_T > min_T
        
        I_max_temp = [I_max_temp,max_T];
        
    else
        
        I_max_temp = [I_max_temp,min_T];
        
    end
    
    I_max = [I_max;I_max_temp];
    
    clear I_max_temp;
    clear max_R;
    clear max_S;
    clear max_T;
    clear min_R;
    clear min_S;
    clear min_T;
    clear R;
    clear S;
    clear T;
    clear i;
    
end

clear I;