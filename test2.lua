
num_min=123
num_max=321
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
        T[tonumber(a)]=T[tonumber(a)]+1
    end
    -- for i=1,9 do
    --     print("T["..i.."]="..tostring(T[i]))
    -- end
    for i=1,9 do
        if T[i]>1 then
            -- y'a un chiffre multiple dans le nombre
            return false
        end
    end
    -- c'est bon tous les chiffres sont uniques
    return true
end

for i=num_min,num_max do
    print(i)
    if test_unique(i)==true then
        print("Bon nombre:",i)
        compteur=compteur+1
    end
end
print("il y a ",compteur,"nombres différents")
    