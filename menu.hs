main = do
    putStrLn (" ----------------------------------------")
    putStrLn ("|        M       E       N       U       |")
    putStrLn (" ----------------------------------------")
    putStrLn ("1. Fibonacci")
    putStrLn ("2. Presentar números del 1 al 10")
    putStrLn ("3. Factorial")
    putStrLn ("4. Desaparecer numeros *No funciona*")
    putStrLn ("5. Palindromo")
    putStrLn ("6. Calculadora")
    putStrLn ("7. Salir")
    n <- getLine
    casos(read n)
    
casos n = do
    case n of
       1 ->fib --creo que ya owo
       2 ->numeros --ya
       3 ->fac --ya
     --  4 ->des No funcionó :(
       5 ->pal --ya
       6 ->calcu --ya
       7 ->salir --ya :u

fib = do 
    putStrLn ("----------------Fibonacci----------------")
    putStrLn ("Ingresa posición: ")
    pos <- getLine
    print("El numero es: "++show(fibo(read pos)))
    --if
    --nu <- getLine
    main

fibo n =
    if n==0
        then 0
        else if n==1
            then 1
        else 
            fibo (n-1) + fibo (n-2)



numeros = do 
    putStrLn ("------Presentar números del 1 al 10------")
    cond 1
    main

cond x = do
    if x <= 10
        then do
            print x
            cond(x+1)
    else
        putStrLn("Termina presentación de números")

fac = do
    putStrLn ("----------------Factorial----------------")
    putStrLn("Ingresa número: ")
    xs <- getLine
    print("Número factorial: " ++show(facto(read xs)))
    main

facto n = do
    if n == 0
        then 1
    else 
        n * facto(n-1)


--des [1,2,3,4,5,6,7,8,9,10]


--des x = do
    -- putStrLn ("-----------Desaparecer números-----------")
    --print(x)
    -- if x==0
    --then do
    --   putStrLn("Todos los números han desaparecido")
    --    main
    --   else do
    --     let lis = init x
    --    des(lis) 

pal = do
    putStrLn ("----------------Palindromo---------------")
    putStrLn ("Ingresa palabra: ")
    p <- getLine
    let variable = p == reverse p
    print(variable)
    main

calcu = do
    putStrLn ("---------------Calculadora---------------")
    putStrLn ("1. Suma")
    putStrLn ("2. Resta")
    putStrLn ("3. Multiplicacion")
    putStrLn ("4. Division")
    putStrLn ("5. Salir")
    n <- getLine
    caso(read n)

caso n = do
    case n of
       1 ->suma 
       2 ->resta
       3 ->multiplicacion
       4 ->division
       5 ->sali
suma = do
    putStr("Numero 1: ")
    a <- getLine
    putStr("Numero 2: ")
    b <- getLine
    putStrLn("El resultado es: "++show(sumados (read a) (read b)))
    calcu
sumados :: Num a => a -> a -> a
sumados a b = do
        a + b

resta = do
    putStrLn("Numero 1: ")
    a <- getLine
    putStrLn("Numero 2: ")
    b <- getLine
    putStrLn("El resultado es: "++show(rest (read a) (read b)))
    calcu
    
rest a b = do
        a - b

multiplicacion = do
    putStrLn("Numero 1: ")
    a <- getLine
    putStrLn("Numero 2: ")
    b <- getLine
    putStrLn("El resultado es: "++show(multi (read a) (read b)))
    calcu

multi a b = do
        a * b

division = do
    putStrLn("Numero 1: ")
    a <- getLine
    putStrLn("Numero 2: ")
    b <- getLine
    putStrLn("El resultado es: "++show(divi (read a) (read b)))
    calcu

divi a b = do
        a / b
sali = do
    putStrLn("Salida de calculadora")
    main
salir = do 
    putStrLn("--------------Salida de menu--------------")