# This is my R programming portfolio

## pao ying chub
hands <- c("hammer", "scissor", "paper")

play_game <- function() {
  games <- 0
  user_point <- 0
  com_point <- 0
  while (games < 10) {
    com_hand <- sample(hands, 1)
    user_hand <- readline("Choose your hands: ")
    if(com_hand == user_hand) {
      # Draw
      print(paste("com_hand: ",comhand))
      print("Draw")
      games <- games + 1
    } else if(com_hand == "hammer") {
      if(user_hand == "scissor") {
        # com hammer VS user scissor <- com win
        print(paste("com hand: ",com_hand))
        print("you lose!")
        com_point <- com_point + 1
        games <- games + 1
      } else {
        # com hammer VS user paper <- user win
        print(paste("com hand: ",com_hand))
        print("you win!")
        user_point <- user_point + 1
        games <- games + 1
      }
    } else if(com_hand == "scissor") {
      if(user_hand == "hammer") {
        # com scissor VS user hammer <- user win
        print(paste("com hand: ",com_hand))
        print("you win!")
        user_point <- user_point + 1
        games <- games + 1
      } else {
        # com scissor VS user paper <- com win
        print(paste("com hand: ",com_hand))
        print("you lose!")
        com_point <- com_point + 1
        games <- games + 1
      }
    } else if(com_hand == "paper") {
      if(user_hand == "hammer") {
        # com paper VS user hammer <- com win
        print(paste("com hand: ",com_hand))
        print("you lose!")
        com_point <- com_point + 1
        games <- games + 1
      } else {
        # com paper VS user scissor <- user win
        print(paste("com hand: ",com_hand))
        print("you win!")
        user_point <- user_point + 1
        games <- games + 1
      }
    }
  }
  print(paste("com point: ",com_point))
  print(paste("user point: ",user_point))
}
