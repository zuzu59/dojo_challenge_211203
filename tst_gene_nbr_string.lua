-- Tests de performance du générateur de nombres à digits uniques
-- approche string pour trouver le digit
-- 22 secondes pour un nombre à 7 digits
-- zf211212.1130

num_min=1234567
num_max=7654321
compteur=0

function test_unique (N)
    num_string=tostring(N)
    T={0,0,0,0,0,0,0,0,0}
    for i=1,#num_string do
        a=tonumber(string.sub(num_string, i,i))
        if a==0 then
            -- y'a un zéro dans le nombre
            return false
        end
        if T[a]>0 then
            -- y'a un chiffre multiple dans le nombre
            return false
        end
        T[tonumber(a)]=T[tonumber(a)]+1
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
    