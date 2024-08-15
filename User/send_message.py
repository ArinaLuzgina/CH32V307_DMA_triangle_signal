import serial
import time
import struct
ser = serial.Serial("COM24")
ser.read_all()
ser.write(b'1')
while(True):
    timUp = int(input("enter timeUp: "))
    timeDown = int(input("enter timeDown: "))
    iter = int(input("enter number of iterations: "))
    amplitude = int(input("enter amplitude in volts: "))
    data = struct.pack('<HHHH', timUp, timeDown, iter, amplitude)
    print(data)
    ser.read_all()
    ser.write(data)
