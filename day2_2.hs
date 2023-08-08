data Person = Student { studentName :: String, studentAge :: Int }
            | Employee { employeeName :: String, employeeAge :: Int }

showPerson :: Person -> String
showPerson (Student name age) = "Name: " ++ name ++ ", Age: " ++ show age
showPerson (Employee name age) = "Name: " ++ name ++ ", Age: " ++ show age

main :: IO ()
main = do
    let student = Student "Alice" 20
    let employee = Employee "Bob" 30
    
    putStrLn $ showPerson student  
    putStrLn $ showPerson employee  
