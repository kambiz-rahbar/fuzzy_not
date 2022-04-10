function n = fuzzy_not(a, not_pram, not_type)
not_type = upper(not_type);
switch not_type
    case 'STANDARD'
        n = 1-a;
    case 'YAGER'
        p = not_pram; %p>0
        n = (1-a.^p).^(1./p);
    case 'SAGENO'
        lambda = not_pram; %lambda>-1
        n = (1-a)./(1+lambda*a);
end
end
