library(dplyr)
library(tibble)
library(here)
lapply(
  list.files("R/", full.names = TRUE),
  source,
  echo = FALSE
)


# seattle_roster = c("Caroline", "Gregor", "Hanna", "Lisa", "Miles")
# seattle_no_match = tribble(
# 	~x, ~y,
# 	"Caroline", "Gregor",
# 	"Hanna", "Lisa"
# )
# 
# ss(seattle_roster, seattle_no_match, folder = "C:/Dropbox/in progress/secret_santa_assignment")


# f_roster = c("Bob", "Becky", "Duncan", "Izzy", "Caroline", "Gregor", "Chris", "Rob", "Emma", "Griffin")
# f_no_match = tribble(
# 	~x, ~y,
# 	"Caroline", "Gregor",
# 	"Chris", "Rob",
# 	"Duncan", "Emma",
# 	"Bob", "Becky",
# 	"Caroline", "Griffin",
# 	"Gregor", "Griffin",
# 	"Becky", "Duncan",
# 	"Becky", "Izzy",
# 	"Bob", "Caroline", 
# 	"Bob", "Chris",
# 	"Bob", "Griffin",
# 	"Becky", "Griffin",
# 	"Chris", "Griffin",
# 	"Chris", "Becky"
# )
# (ss(f_roster, f_no_match, folder = "C:/Dropbox/in progress/santa_family"))


if(!dir.exists("tahoe")) dir.create("tahoe")
tahoe_roster = c("Caroline", "Gregor", "Hanna", "Lisa", "Miles", "Laura", "Evan2", "Caitlin", "Evan1")
tahoe_no_match = data.frame(
	x = c("Caroline", "Hanna", "Laura", "Caitlin"),
	y = c("Gregor",   "Lisa",  "Evan2", "Evan1"),
	stringsAsFactors = FALSE)

sst = ss(tahoe_roster, tahoe_no_match, folder = "tahoe")

#sapply(list.files(path = "santa_family/", full.names = T), readLines)
