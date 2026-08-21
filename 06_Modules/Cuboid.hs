module Geometry.Cuboid
(
    volume,
    area
) where

volume :: Float -> Float -> Float -> Float
volume l w h = rectangleArea l w * h

area :: Float -> Float -> Float -> Float
area l w h = 2 * (rectangleArea l w + rectangleArea l h + rectangleArea w h)

rectangleArea :: Float -> Float -> Float
rectangleArea l w = l * w