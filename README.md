# Process Review 2

## The product

To apply filters to tracks to change how the tracks sound
Bandpass filter
Filtering out frequencies above and below.


## Expected Input and Output

input
frequencies[integer,integer,integer]
upper = integer
lower = integer


Output
frequencies[integer,integer,integer]

[5], 6, 1, => [5]

[6], 6, 1 => [6]

[1], 6, 1 => [1]

[5,6,7] 6, 1 => [5,6,6]

[1,3,4] 6, 2 => [2,3,4]

[2,6,3,5] 4, 2 => [2,4,3,4]

[0,6,10,3,2] 7, 3 => [3,6,7,3,3]

44,100 length

## Edge cases

[5,nil,6,7] => throw Error ("There are nils contained within the soundwave")

no return value
