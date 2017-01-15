import sys

if len(sys.argv) > 1:
    for x in sys.argv[1:]:
        print( x )
else:
    print ( "test test" )