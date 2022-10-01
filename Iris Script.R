#DATA IRIS

datairis=iris
head(datairis)
#Make vector of a dataframe columns
vectorLength=as.vector(datairis["Petal.Length"])
vectorLength

#New Dataframe , where petal.length are less than 3.5
d1=data.frame(datairis$Petal.Length<3.5)
head(d1)

#
d2=datairis[datairis$Petal.Length<3.5,c(1,2,3)]
View(d2)

#make petal length on y, and petal width on x

#plotting columns on x, y
plot(datairis$Petal.Width~datairis$Petal.Length)

#plot with color
plot(main="Petal length plot",
     datairis$Petal.Width,xlab="Petal Width",
     datairis$Petal.Length,ylab="Petal Length",
     col=datairis$Species)