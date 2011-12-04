function cr = control_rod(i,cr)

% put CR in
if i >= 50 && i < 100
    if mod(i,5) == 0
        if cr(1) == 0
            cr(1:2) = 1;
        else
            cr(find(cr,1,'last')+1:find(cr,1,'last')+10) = 1;
        end
    end
end

% remove control rod

if i >=500

    if mod(i,5) == 0
            lastidx = find(cr,1,'last')-10;
            if lastidx < 0
                cr(:) = 0;
            else
              cr(find(cr,1,'last'):-1:find(cr,1,'last')-4) = 0;
            end
    end
    
end


end