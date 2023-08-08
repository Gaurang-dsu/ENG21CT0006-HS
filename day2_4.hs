data Shape = Circle Double
           | Rectangle Double Double
           | Triangle Double Double Double

calculateArea :: Shape -> Double
calculateArea (Circle radius) = pi * radius * radius
calculateArea (Rectangle width height) = width * height
calculateArea (Triangle a b c) =
    let s = (a + b + c) / 2
    in sqrt (s * (s - a) * (s - b) * (s - c))

-- Example shapes:
circleShape :: Shape
circleShape = Circle

rectangleShape :: Shape
rectangleShape = Rectangle 

triangleShape :: Shape
triangleShape = Triangle 

main :: IO ()
main = do
    putStrLn $ "Area of circle: " ++ show (calculateArea circleShape)
    putStrLn $ "Area of rectangle: " ++ show (calculateArea rectangleShape)
    putStrLn $ "Area of triangle: " ++ show (calculateArea triangleShape)
