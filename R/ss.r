ss = function(roster, no_match, folder, yes_match) {
  bad_names = setdiff(unlist(no_match), roster)
  if(length(bad_names)) stop(bad_names, " in no_match, not found in roster")
  matchup = ss_draw(roster, no_match, n = 1e3, yes_match)
  if (!length(matchup)) {
    matchup = ss_draw(roster, no_match, n = 1e5)
  }
  if (!length(matchup)) stop("Couldn't find a valid match. Check inputs and try again.")
  ss_write(matchup[[1]], folder)
  invisible(matchup[[1]])
}
