V = [V_I_Bus_1{1},V_I_Bus_2{1},V_I_Bus_3{1},V_I_Bus_4{1},V_I_Bus_5{1},V_I_Bus_6{1},V_I_Bus_7{1},V_I_Bus_8{1},V_I_Bus_9{1},V_I_Bus_10{1},V_I_Bus_11{1},V_I_Bus_12{1},V_I_Bus_13{1},V_I_Bus_14{1}];

V_max = [];

for i=1:size(V,2)
    
    R = V(i).Values.Data(1605:3200,1); % Interval 4200:5000 se mijenja u ovisnosti od početka i dužine trajanja KS
    S = V(i).Values.Data(1605:3200,2);
    T = V(i).Values.Data(1605:3200,3);
    
    max_R = max(R);
    max_S = max(S);
    max_T = max(T);
       
    min_R = abs(min(R));
    min_S = abs(min(S));
    min_T = abs(min(T));

    V_max_temp = [];

    if max_R > min_R
        
        V_max_temp = [V_max_temp,max_R];
        
    else
        
        V_max_temp = [V_max_temp,min_R];
        
    end
    
    if max_S > min_S
        
        V_max_temp = [V_max_temp,max_S];
        
    else
        
        V_max_temp = [V_max_temp,min_S];
        
    end
    
    if max_T > min_T
        
        V_max_temp = [V_max_temp,max_T];
        
    else
        
        V_max_temp = [V_max_temp,min_T];
        
    end
        
    V_max=[V_max;V_max_temp];
    
    clear max_R;
    clear max_S;
    clear max_T;
    clear min_R;
    clear min_S;
    clear min_T;
    clear V_max_temp;
    clear R;
    clear S;
    clear T;
    clear i;
    
end

