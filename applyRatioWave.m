function data = applyRatioWave( data )

    data = data(2:2:end, :) ./ data(1:2:end-1, :);

end

