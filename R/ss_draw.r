library(dplyr)

##
ss_draw = function(roster, no_match, n = 1e4, yes_match) {
  draw = replicate(n, sample(roster, size = length(roster), replace = FALSE))
  
  # remove self-matches
  draw = draw[, colSums(draw == roster) == 0]
  
  
  matchup = apply(draw, 2, cbind.data.frame, roster, stringsAsFactors = FALSE)
  matchup = lapply(matchup, setNames, c("Giver", "Receiver"))
  
  if (!missing(no_match)) {
    # remove no_match matches
    no_match = rbind(no_match, setNames(rev(no_match), names(no_match)))
    names(no_match) = c("Giver", "Receiver")
    matchup = Filter(f = function(x) nrow(dplyr::intersect(x, no_match)) == 0, x = matchup)
  }
  
  if (!missing(yes_match)) {
  	# TODO ensure yes_match matches
  }
  
  return(head(matchup, 1))
}
