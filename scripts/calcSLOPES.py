import sys
import numpy
import math
import matplotlib.pyplot as plt
from scipy.optimize import curve_fit

def func(x, k, a):
  return k*x+a

CFfig=plt.figure(figsize=(10,10))

analL=float(sys.argv[2])
#data1 = numpy.loadtxt(sys.argv[1], usecols=range(0,7))
for c in range(1,15):
  data1 = numpy.loadtxt(sys.argv[1], usecols=range(0,1)), numpy.loadtxt(sys.argv[1], usecols=range(c,c+1))
  #data2 = numpy.loadtxt(sys.argv[1], usecols=range(0,1)), numpy.loadtxt(sys.argv[1], usecols=range(2,3))
  #data3 = numpy.loadtxt(sys.argv[1], usecols=range(0,1)), numpy.loadtxt(sys.argv[1], usecols=range(3,4))
  #print data1
  
  k1=0#[0]*3
  k2=0#[0]*3
  k3=0#[0]*3
  kcov1=0#[0]*3
  kcov2=0#[0]*3
  kcov3=0#[0]*3
  j=0
  for i in range(0,len(data1[0])):
    if data1[0][i]<analL:
      j=j+1
      dataLOGx = [0]*j
      dataLOGy = [0]*j
      
  for i in range(0,j):
    dataLOGx[i]=data1[0][i]
    dataLOGy[i]=data1[1][i]
    #print dataLOGx
  k1, kcov1 = curve_fit(func, dataLOGx, dataLOGy)
  print c+1, k1[0],k1[1]
    #plt.plot(dataLOGx,dataLOGy,dataLOGx,func(dataLOGx,k1))
  if c>9:
    color='C'+str(c-6)
  else:
    color='C'+str(c)
  title='C'+str(c+1)
  plt.subplot(7,2,c)
  plt.ylim((0.05,0.43))
  plt.xlim((-5,65)) 
  plt.plot(data1[0],numpy.absolute(data1[1]),marker='o',linestyle='')
  plt.plot(data1[0],numpy.absolute(func(data1[0],k1[0],k1[1])))
  plt.text(0,0.35,title)
  if c<13:
    plt.gca().axes.get_xaxis().set_ticklabels([])
  else:
    plt.xlabel('[cholesterol]')
  #plt.gca().axes.get_yaxis().set_visible(False)
  #plt.legend(bbox_to_anchor=(1, 1),loc=2, borderaxespad=0.)


CFfig.savefig('../scratch/tst.pdf')
    
              
#print data1[0]
#y=func(data1[0],k3[0],k3[1])
#print y




