###Before visualization, 'length' is added on the first row of input peak length file as following

### length
### 231
### 178
### 403
### 221
### 334
### ...

### read peak length
m6A=read.table("m6A.peak.length",header = T)

### draw histogram of peak length
hist(m6A$length,col=rgb(1,0,0,0.5),xlim=c(0,1000),breaks = seq(0,30000,50),freq = F)

### draw density of peak length
plot(density(m6A$length),xlim=c(0,1000))

### Get the peak length of maximum density

d=density(m6A$length)

i<-which.max(d$y)

d$x[i]
