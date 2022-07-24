import sys
inputDict = sys.argv[0]
inputKeys = sys.argv[1]
i=0

def getValue(inputDict, inputKeys, i):
    for key, value in inputDict.items():
        if inputKeys[i] in inputDict:            
            if type(value) is dict:
                    i=i+1                         
                    getValue(value, inputKeys, i)
            else:
                print (value)
        else:
            print('Invalid input key:',inputKeys[i])

getValue(inputDict, inputKeys, i)

#Input (command)-
#python NestedDict.py '{'x':{'y':{'z':a}}}' '['x','y','z']'
#Output-
#a 