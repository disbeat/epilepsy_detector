function data = normalizeData( data )

    minValue = min(min(data));
    maxValue = max(max(data)) ;
    
    data = (data - minValue) ./ maxValue;

end

