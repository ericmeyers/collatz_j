#!/Applications/j9.5/bin/jconsole

load 'plot'
collatzlengthbrian =: 3 : 0 M.
    if.     y=1   do. 1
    elseif. 0=2|y do. (collatzlengthbrian y%2) + 1
    elseif.       do. (collatzlengthbrian 1+3*y) + 1
    end.
)


xs=: 1+i.5000000
ys=: collatzlengthbrian "0 xs

'title Collatz Length;pensize 3;type point;grids 1 1;xcaption Start;ycaption Length' plot xs;ys

pd 'save png ~/collatz_j/collatz.png'
