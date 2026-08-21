module Geometry
(
    sphereVolume,
    sphereArea,
    cubeVolume,
    cubeArea,
    cuboidVolume,
    cuboidArea
) where

sphereVolume :: Float -> Float
sphereVolume r = (4.0 / 3.0) * pi * (r ^ 3)

sphereArea :: Float -> Float
sphereArea r = 4.0 * pi * (r ^ 2)

cubeVolume :: Float -> Float
cubeVolume side = cuboidVolume side side side

cubeArea :: Float -> Float
cubeArea side = cuboidArea side side side

cuboidVolume :: Float -> Float -> Float -> Float
cuboidVolume l w h = rectangleArea l w * h

cuboidArea :: Float -> Float -> Float -> Float
cuboidArea l w h = 2 * (rectangleArea l w + rectangleArea l h + rectangleArea w h)

rectangleArea :: Float -> Float -> Float
rectangleArea l w = l * w