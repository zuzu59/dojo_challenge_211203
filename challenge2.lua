-- Test du challenge
-- approche force brute pour le générateur de nombres à digits uniques
-- zf211212.1212

num_min=12345678
num_max=98765432
compteur1=0
compteur2=0

function test_unique (N)
    T={0,0,0,0,0,0,0,0,0}
    for i=1,#N do
        a=tonumber(string.sub(N, i,i))
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

function test_challenge (N)
    R=0
--    print("Challenge:",N)
    for i=1,#N do
        R=R+1
        a=tonumber(string.sub(N, 1,i))
--        print("a:",a,i)
        if a%i~=0 then
--            print("false",i,R)
            return false
        end
    end
--    print("true",#num_string,R)
    return true
end

for i=num_min,num_max do
--    print(i)
    -- inverse le nombre pour optimiser la recherche, incrémentation de gauche à droite au lieu de droite à gauche
    n=string.reverse(tostring(i))
--    print(i,n)
    if test_unique(n)==true then
--        print("Bon nombre unique:",n)
        compteur1=compteur1+1
        if test_challenge(n) then
            print("Bingooooooooooooooooooooooooooooooooooooooo !",n)
            compteur2=compteur2+1
        end
    end
end

print("il y a ",compteur1,"nombres à digits uniques")
print("il y a ",compteur2,"solutions au challenge")

