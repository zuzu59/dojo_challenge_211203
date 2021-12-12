-- Tests de performance du générateur de nombres à digits uniques
-- approche math pour trouver le digit
-- 36 secondes pour un nombre à 7 digits
-- zf211212.1130

num_min=1234567
num_max=7654321
compteur=0

function test_unique (N)
    T={0,0,0,0,0,0,0,0,0}
    l=#tostring(N)
    for n=l,1,-1 do
        o=( math.floor(N/(10^(n-1))) * (10^(n-1)))
        p=( math.floor(o/(10^n)) * (10^n))
        q=math.floor((o-p)/10^(n-1))
        if q==0 then
            -- y'a un zéro dans le nombre
            return false
        end
        if T[q]>0 then
            -- y'a un chiffre multiple dans le nombre
            return false
        end
        T[tonumber(q)]=T[tonumber(q)]+1
    end    
    -- c'est bon tous les chiffres sont uniques
    return true
end

for i=num_min,num_max do
    --print(i)
    if test_unique(i)==true then
--        print("Bon nombre:",i)
        compteur=compteur+1
    end
end

print("il y a ",compteur,"nombres différents")
    