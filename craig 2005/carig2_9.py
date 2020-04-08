# -*- coding: utf-8 -*-
"""
Created on Mon Apr  6 02:30:05 2020

@author: Mostafa Hisham
"""
import numpy as np
import math
R = [0.354 , -0.674 , 0.649 , 4.33 , 0.505 ,0.722, 0.475, 2.50,-0.788 , 0.160 , 0.595 , 8, 0 ,0 ,0 ,1]
R = np.reshape(R, (4, 4))
print ("Input Rotationl matrix")
print (R)
def RPY_FROM_R (R):
    array = np.zeros (6)
    roll1 = math.atan2 (R[1,0] ,R[0,0] )
    pitch1= math.atan2 (-R[2,0] ,(R[0,0]*math.cos(roll1)+R[1,0]*math.sin(roll1) ) )
    yaw1 = math.atan2 (((-R[1,2]*math.cos(roll1))+(R[0,2]*math.sin(roll1)))
            ,((R[1,1]*math.cos(roll1))-(R[0,1]*math.sin(roll1))))
    
    roll2 = math.atan2 (-R[1,0] ,-R[0,0] )
    pitch2= math.atan2 (-R[2,0] ,-(R[0,0]*math.cos(roll1)+R[1,0]*math.sin(roll1) ) )
    yaw2 = math.atan2 (-((-R[1,2]*math.cos(roll1))+(R[0,2]*math.sin(roll1))) 
            ,-((R[1,1]*math.cos(roll1))-(R[0,1]*math.sin(roll1))))

    roll1= int (np.ceil(math.degrees(roll1)))
    array[0]= roll1
    pitch1= int (np.ceil(math.degrees(pitch1)))
    array[1]= pitch1
    yaw1= int (np.ceil(math.degrees(yaw1)))
    array[2]= yaw1
    roll2= int (np.ceil(math.degrees(roll2)))
    array[3]= roll2
    pitch2= int (np.ceil(math.degrees(pitch2)))
    array[4]= pitch2
    yaw2= int (np.ceil(math.degrees(yaw2)))
    array[5]= yaw2
    
    for i in range (len (array)):
        if (array[i]<0):
            array[i] = array[i]+360
    print ("roll angles is (" + str (array [0]) + " ," +str (array [3] ) + ")")
    print ("pitch angles is (" + str (array [1]) + " ," +str (array [4] ) + ")")
    print ("yaw angles is (" + str (array [2]) + " ," +str (array [5] ) + ")")
    return (array)

array1 = RPY_FROM_R (R)



def Rotational_from_RPY (roll_angle , Pitch_angle  ,   yaw_angle):
    roll_angle= math.radians(roll_angle)
    Pitch_angle= math.radians(Pitch_angle)
    yaw_angle= math.radians(yaw_angle)
    
    Rot_Z = [math.cos(roll_angle) , -math.sin(roll_angle) , 0 , 0 , 
             math.sin(roll_angle), math.cos(roll_angle),0,0, 0, 0 , 1 , 0, 0 ,0 ,0 ,1]
    Rot_Z= np.reshape(Rot_Z, (4, 4))
    Rot_Y = [math.cos(Pitch_angle) , 0, math.sin(Pitch_angle)  , 0 , 0 , 1, 0, 0
             , -math.sin(Pitch_angle) ,0 , math.cos(Pitch_angle),0 , 0 ,0 ,0 ,1]
    Rot_Y= np.reshape(Rot_Y, (4, 4))
    Rot_X = [1 , 0, 0, 0, 0 , math.cos(yaw_angle) ,- math.sin(yaw_angle), 0 , 0 
             , math.sin(yaw_angle) , math.cos(yaw_angle),0 , 0 ,0 ,0 ,1]
    Rot_X= np.reshape(Rot_X, (4, 4))
    R1 = np.dot(Rot_Y,Rot_X)
    Rotational = np.dot(Rot_Z,R1)
    print ("________________________________")
    print ("Rotational array from RPY")
    print (Rotational)
    

Rotational_from_RPY(array1[0] ,array1[1]  ,array1[2] )



















