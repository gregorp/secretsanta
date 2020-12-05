ss_write = function(matchup, folder) {
  this_year = format(Sys.Date(), "%Y")
  for (i in 1:nrow(matchup)) {
      writeLines(
          text = sprintf("%s, get a gift for %s", matchup$Giver[i], matchup$Receiver[i]),
          con = sprintf("%s/secretsanta-%s-%s.txt", folder, this_year, matchup$Giver[i])
      )
  }
}
