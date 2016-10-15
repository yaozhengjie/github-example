wakeuptime = runif(100,4,6)
wakeuptime2 = wakeuptime*60*60
sleeptime  =  runif(100,19,21)#7-9 oclock
sleeptime2 =  sleeptime*60*60

breakfasttime = runif(100,wakeuptime2+1800,wakeuptime2+3600)
lunchtime = runif(100,11*3600,13*3600)
dinnertime = runif(100,17*3600,19*3600)
#房间信息
roomdata_1stday = seq(from = sleeptime2[1],to = 24*60*60, by = 1)
#infra_1stday = seq(from = sleeptime2[1],to = 24*60*60, by = 1)
infra_1stday    = runif(24*60*60 - sleeptime2[1],0,1)
infra_1stday1    = runif(24*60*60 - sleeptime2[1],0,1)

#fenbu 10%
for (i in 1:(24*60*60 -sleeptime2[1]) ) {
  if(infra_1stday[i] > 0.9)
     infra_1stday1[i] = 1
  else 
     infra_1stday1[i] = 0
}

dinner_endtime = runif(100,0,0)
for(i in 0:100)
{
  dinner_endtime[i] =  dinnertime[i]+runif(1,30*60,60*60)
}

sleep_in_morning = seq(from = 0,to = wakeuptime2[1],by = 1)
infra_in_morning = runif(wakeuptime2[1],0,0)#第一个数据

wakeup_endseq = seq(from = wakeuptime2[1],to = wakeup_endtime[1],by = 1)
wakeupinfra_in_morning = runif(186,0,1)

for(i in 1:length(w2$time)){
  a[i] = "卧室"
}


#起床之后，上厕所的数据



#判断，如果时间小于runif区域，那么就直接不变，延续上次的动作直到结束
  
beforesleep_night = runif(100,0,0)
for (i in 1:100 ) {
  beforesleep_night[i] =  sleeptime2[i] - runif(1,20*60,3600)
}


sleep_1stday  =  seq(from = beforesleep_night[1], to = sleeptime2[1], by = 1)
#deal 
sleep_infra_1stday = runif(length(sleep_1stday),0,1)

for (i in 1:length(sleep_infra_1stday) ) {
  if(sleep_infra_1stday[i] > 0.6)
    sleep_infra_1stday[i] = 1
  else 
    sleep_infra_1stday[i] = 0
}


for(i in 1:length(drawingroom$time)){
  drawingroom$infra[i] = 0
  drawingroom$room[i] = "客厅"
}


fun.test <- function(a, b, method = "add"){
  if(method == "add") { ## 如果if或者for/while；
    res <- a + b       ## 等后面的语句只有一行，则无需使用花括号。
  }
  if(method == "subtract"){
    res <- a - b
  }
  return(res)           ## 返回值
}
