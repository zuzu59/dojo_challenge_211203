-- Test1 du challenge
-- zf211211.1052

N={1,2,3,4,5,6,7,8,9}
N={1,2,3,4}
compteur=0

function print_N ()
    io.write("Nombre: ")
    for i=1,#N do
        io.write(tostring(N[i]))
    end
    print("")
    compteur=compteur+1
end

function get_N(n)
    T=""
    for i=1,n do
        T=T..tostring(N[i])
    end
    return tonumber(T)
end



function test_N ()
    R=0   F=1
    for i=1,#N do
        T=get_N(i)
        print("T:",T,i)
        if T%i~=0 then
            F=0  R=i-1
            break
        end
    end
        print("Résultat:            ",R)
        if R==4 then
            print("Bingooooooooooooooooooooooooooooooooooooooo !")
        end
        print("")
end


for j=1,#N do
    for i=1,#N-1 do
        T=N[i+1]  N[i+1]=N[i]  N[i]=T
        print_N()
--        test_N ()
    end
end

print("il y a ",compteur,"nombres différents")
