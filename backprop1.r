library("neuralnet");

dataset<-read.csv("ip1.csv");
valid<-neuralnet(O~I1+I2,dataset,hidden=2,linear.output=FALSE,threshold=0.01,algorithm="backprop",learningrate = 0.01);
print(valid);
plot(valid);
testdata<-read.csv("ip2.csv");
result<-compute(valid,testdata,1);
print(result);