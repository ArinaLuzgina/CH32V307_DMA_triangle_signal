import serial
import time
import struct
ser = serial.Serial("COM24")
ser.read_all()
ser.write(b'1')
flag = True
timUp = int(input("enter timeUp: "))
timeDown = int(input("enter timeDown: "))
iter = int(input("enter number of iterations: "))
amplitude = int(input("enter amplitude in millivolts: "))
data = struct.pack('<HHHH', timUp, timeDown, iter, amplitude)
print(data)
ser.read_all()
ser.write(data)
while(flag):
    answer = int(input("Repeat data? (1 - YES, 0 - NO)"))
    if(answer == 0):
        timUp = int(input("enter timeUp: "))
        timeDown = int(input("enter timeDown: "))
        iter = int(input("enter number of iterations: "))
        amplitude = int(input("enter amplitude in millivolts: "))
    data = struct.pack('<HHHH', timUp, timeDown, iter, amplitude)
    print(data)
    ser.read_all()
    ser.write(data)
