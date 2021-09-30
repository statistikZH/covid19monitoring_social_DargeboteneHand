library(ggplot2)
library(statR)
library(dplyr)
library(tidyr)
library(lubridate)

dat <- read.csv("Social_DargeboteneHand.csv") %>%
  filter(variable_short %in% c("kontaktaufnahmen_total", "zus_beanspruchung_fehlanruf",
                               "zus_beanspruchung_juxanruf", "zus_beanspruchung_chat_ohne_inhalt")) %>%
  select(date, value, variable_short) %>%
  pivot_wider(names_from = variable_short, values_from = value) %>%
  mutate(zus_beanspruchung_chat_ohne_inhalt = replace_na(zus_beanspruchung_chat_ohne_inhalt, replace = 0)) %>%
  mutate(kontaktaufnahmen  = (kontaktaufnahmen_total - zus_beanspruchung_fehlanruf - zus_beanspruchung_juxanruf -zus_beanspruchung_chat_ohne_inhalt)) %>%
  select(date, kontaktaufnahmen)



## labels x-Achse
def_months <- c("Jan","Feb","März",
                "April","Mai","Juni",
                "Juli","Aug","Sep",
                "Okt","Nov","Dez")



def_colors <- c("2019" = zhpal$zhdark[1],
                "2020" = zhpal$zhdark[2],
                "2021" = zhpal$zhorange[1])


p1 <- dat %>%
  mutate(monat = month(date),
         year = year(date)) %>%
  ggplot(aes(x = monat, y = kontaktaufnahmen, color = as.factor(year), shape = as.factor(year))) +
  geom_line() +
  geom_point(size = 2) +
  scale_x_continuous(breaks = seq(1, 12, by = 1), labels = def_months) +
  scale_y_continuous(labels=function(x) format(x, big.mark = "'", scientific = FALSE),
                     limits = c(0, max(dat$kontaktaufnahmen))) +
  scale_color_manual(name = "",values=def_colors) +
  theme_stat(base_size = 13, axis.lines = "none") +
  theme(legend.position = "right") +
  labs(title = "Anzahl Kontaktaufnahmen\nbei der Dargebotenen Hand Zürich",
       subtitle = "Via Telefon, E-Mail und Chat\nOhne inhaltslose Chats sowie Jux- und Fehlanrufe",
       caption = "Datenquelle: Dargebotene Hand\nDarstellung: Statistisches Amt Kanton Zürich", shape = "",
       x = "", y ="")



ggsave(p1, filename = "graph/anzahl_kontaktaufnahmen_dh.png", dev = "png", width = 6.59, height = 3.97)
