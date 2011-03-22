function targetSet = setTargetToNum(target, nCases)
% [1 0 0 0 ; 0 1 0 0 ; 0 0 1 0] to 1, 2, 3
    targetSet = zeros(nCases,1);
    for c = 1:nCases
        result = target(:,c);
        [value pos] = max(result);
        targetSet(c) = pos;
    end
end