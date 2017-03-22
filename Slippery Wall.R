
slipperyWall <- function(jump, slip, wall){
  count <- 0
  if(jump>slip){
  for(i in 1:length(wall)){
    h <- wall[i]
    eff <- jump-slip#effective jump
    while(h>0){
      if(h>jump){h <- h-eff; count <- count+1}
      else {h <- 0; count <- count+1}
    }
  
  }
  (paste("No of Jumps = ",count))
  }
  else{paste("CANNOT JUMP EVEN SINGLE WALL")}
}

slipperyWall(25,12,c(25,12,55))
