# covid19monitoring_social_DargeboteneHand

## Grundlage

Der Datensatz `Social_DargeboteneHand.csv` beinhaltet Monatswerte zur Anzahl Kontaktaufnahmen bei der Dargebotenen Hand Zürich (via Telefon, E-Mail und Chat). Das Einzugsgebiet der Dargebotenen Hand Zürich umfasst den Kanton Zürich ohne die Bezirke Winterthur und Andelfingen, den Bezirk Höfe im Kanton Schwyz sowie den Bezirk See-Gaster im Kanton St. Gallen (in den Daten zusammengefasst als `ZH`). Die Daten beinhalten die monatliche Anzahl Kontaktaufnahmen insgesamt, die Anzahl Kontaktaufnahmen nach Beratungsinhalt, Geschlecht und Alter sowie nach verschiedenen Arten zusätzlicher Beanspruchung (z.B. Juxanrufe). Ebenfalls erfasst ist die Anzahl Erstkontakte bzw. wiederholte Kontakte (siehe *Wichtige Hinweise*).  

## Methodisches

Die Zeitreihe beginnt im Januar 2019 und wird monatlich aktualisiert. 

## Weitere Hinweise zu den Daten: `Social_DargeboteneHand.csv`

Der Aufbau der Daten richtet sich nach der Struktur des [Gesellschaftsmonitorings COVID19](https://github.com/statistikZH/covid19monitoring).

### Metadaten

| Spaltenname  | Beschreibung | Format |
|:-------------|:-------------|:-------|
| `date`       | Letzter Tag des Monats, auf den sich `value` bezieht | Datum im Format YYYY-MM-DD|
| `value`      | Anzahl Kontaktaufnahmen (via E-Mail, Chat und Telefon). Fehlende Werte sind als 'NA' gekennzeichnet. | Integer |
| `topic`      | Thematische Einordnung ins Covid19-Monitoring | Text |
| `variable_long` | Beschreibung von `value` | Text |
| `variable_short` | Abgekürzte Bezeichnung von `value` | Text |
| `location`   | Ortsindikator für die Einordnung ins Covid19-Monitoring | Text |
| `unit`       | Einheit von `value` | Text |
| `source`     | Datenquelle | Text |
| `update`     | Periodizität der Datenaktualisierung | Text |
| `public`     | Öffentliche Verfügbarkeit der Daten | Text |
| `description`| Link zur Metadatenbeschreibung / zu diesem README | Text |


### Erläuterungen zu `variable_long` und `variable_short`

#### Anzahl Kontaktaufnahmen ingesamt:

* 'Kontaktaufnahmen total' in `variable_long` bzw. 'kontaktaufnahmen_total' in `variable_short`: Monatliche Anzahl Kontaktaufnahmen (via Telefon, E-Mails und Chats)

#### Gruppierungsvariablen:

* Alter  
* Geschlecht  
* Beratungsinhalt
* Zusätzliche Beanspruchungen
* Kontakthäufigkeit  

**Wichtige Hinweise**: 

* Als Indikator für die gesamte monatliche Anzahl der Kontaktaufnahmen dient lediglich 'Kontaktaufnahmen total' bzw. 'kontaktaufnahmen_total'. Das Total der Kontaktaufnahmen pro Monat ergibt sich dabei NICHT überall aus der Summe der unten aufgelisteten Subkategorien 'Alter', 'Beratungsinhalt', 'Geschlecht', 'Kontakthäufigkeit' oder 'Zusätzliche Beanspruchung', da diese nicht zwingend bei jeder Kontaktaufnahme erfasst werden. Zudem können Mitarbeitende der Dargebotenen Hand mehr als einen Beratungsinhalt pro Kontakt erfassen.  
* Die Angaben zur Kontakthäufigkeit beruhen auf der subjektiven Einschätzung der Mitarbeitenden, da die Nummern der Anrufenden nicht erfasst werden. Neuere Mitarbeitende tendieren entsprechend dazu, mehr Anrufende als Erstkontakte zu erfassen als erfahrenere Mitarbeitende.  
* Fehlende Werte ('NA') in `value` kommen dadurch zu Stande, dass einige Ausprägungen von `variable_long` bzw. `variable_short` nicht jeden Monat erfasst worden sind.


|`variable_long`                                        |`variable_short`                         |Beschreibung |
|:------------------------------------------------------|:----------------------------------------|:------------|
|Alter bis 18 J.                                        |alter_bis_18                             |Anzahl Kontaktaufnahmen in der Altersgruppe bis und mit 18 Jahre             |
|Alter 19 - 40 J.                                       |alter_19_bis_40                          |Anzahl Kontaktaufnahmen in der Altersgruppe 19 bis 40 Jahre             |
|Alter 41 - 65 J.                                       |alter_41_bis_65                          |Anzahl Kontaktaufnahmen in der Altersgruppe 41 bis 65 Jahre             |
|Alter über 65 J.                                       |alter_ue65                               |Anzahl Kontaktaufnahmen in der Altersgruppe Ü65 Jahre            |
|Alter nicht bestimmbar                                 |alter_unbestimmt                         |Anzahl Kontaktaufnahmen, für die keine Altersangaben vorhanden sind             |
|Beratungsinhalt Alltagsbewältigung                     |inhalt_alltagsbewaeltigung               |Anzahl Kontaktaufnahmen mit Beratungsinhalt 'Alltagsbewältigung'                     |
|Beratungsinhalt Arbeit / Ausbildung                    |inhalt_arbeit_ausbildung                 |Anzahl Kontaktaufnahmen mit Beratungsinhalt 'Arbeit / Ausbildung'                    |
|Beratungsinhalt Beziehung allgemein                    |inhalt_beziehung_allgemein               |Anzahl Kontaktaufnahmen mit Beratungsinhalt 'Beziehung allgemein'                    |
|Beratungsinhalt Einsamkeit                             |inhalt_einsamkeit                        |Anzahl Kontaktaufnahmen mit Beratungsinhalt 'Einsamkeit'                             |
|Beratungsinhalt Existenzprobleme                       |inhalt_existenzprobleme                  |Anzahl Kontaktaufnahmen mit Beratungsinhalt 'Existenzprobleme'                       |
|Beratungsinhalt Familie / Erziehung                    |inhalt_familie_erziehung                 |Anzahl Kontaktaufnahmen mit Beratungsinhalt 'Familie / Erziehung'                    |
|Beratungsinhalt Gewalt                                 |inhalt_gewalt                            |Anzahl Kontaktaufnahmen mit Beratungsinhalt 'Gewalt'                                 |
|Beratungsinhalt Körperliches Leiden                    |inhalt_leiden_koerperlich                |Anzahl Kontaktaufnahmen mit Beratungsinhalt 'Körperliches Leiden'                    |
|Beratungsinhalt Medienerziehung/Swisscom               |inhalt_medienerziehung_swisscom          |Anzahl Kontaktaufnahmen mit Beratungsinhalt 'Medienerziehung/Swisscom'               |
|Beratungsinhalt Paarbeziehung                          |inhalt_paarbeziehung                     |Anzahl Kontaktaufnahmen mit Beratungsinhalt 'Paarbeziehung'                          |
|Beratungsinhalt Psychisches Leiden                     |inhalt_leiden_psychisch                  |Anzahl Kontaktaufnahmen mit Beratungsinhalt 'Psychisches Leiden'                     |
|Beratungsinhalt Sexualität                             |inhalt_sexualitaet                       |Anzahl Kontaktaufnahmen mit Beratungsinhalt 'Sexualität'                             |
|Beratungsinhalt Sorge wegen Infektion                  |inhalt_sorge_infektion                   |Anzahl Kontaktaufnahmen mit Beratungsinhalt 'Sorge wegen einer (COVID-19)-Infektion'                  |
|Beratungsinhalt Spiritualität / Lebenssinn             |inhalt_spiritualitaet_lebenssinn         |Anzahl Kontaktaufnahmen mit Beratungsinhalt 'Spiritualität / Lebenssinn'             |
|Beratungsinhalt Suchtverhalten                         |inhalt_suchtverhalten                    |Anzahl Kontaktaufnahmen mit Beratungsinhalt 'Suchtverhalten'                         |
|Beratungsinhalt Suizidalität                           |inhalt_suizidalitaet                     |Anzahl Kontaktaufnahmen mit Beratungsinhalt 'Suizidalität'                           |
|Beratungsinhalt Verlust / Trauer / Tod                 |inhalt_verlust_trauer_tod                |Anzahl Kontaktaufnahmen mit Beratungsinhalt 'Verlust / Trauer / Tod'                 |
|Beratungsinhalt Verschiedenes                          |inhalt_verschiedenes                     |Anzahl Kontaktaufnahmen mit Beratungsinhalt 'Verschiedenes'                          |
|Geschlecht Divers                                      |geschlecht_divers                        |Anzahl Kontaktaufnahmen von Personen mit Geschlechtsangabe 'Divers'                                      |
|Geschlecht Männlich                                    |geschlecht_maennlich                     |Anzahl Kontaktaufnahmen von Personen mit Geschlechtsangabe 'Männlich'                                    |
|Geschlecht nicht bestimmbar                            |geschlecht_unbestimmt                    |Anzahl Kontaktaufnahmen von Personen ohne Geschlechtsangabe                            |
|Geschlecht Weiblich                                    |geschlecht_weiblich                      |Anzahl Kontaktaufnahmen von Personen mit Geschlechtsangabe 'Weiblich'                                    |
|Kontaktaufnahmen total                                 |kontaktaufnahmen_total                   |Anzahl Kontaktaufnahmen insgesamt                                 |
|Kontakthäufigkeit Erster Kontakt                       |kontakt_erstmalig                        |Anzahl Kontaktaufnahmen von Personen, die sich zum ersten Mal melden                     |
|Kontakthäufigkeit Gelegentlicher, wiederholter Kontakt |kontakt_gelegentlich                     |Anzahl Kontaktaufnahmen von Personen, die sich alle paar Wochen/Monate melden |
|Kontakthäufigkeit Regelmässiger Kontakt                |kontakt_regelmaessig                     |Anzahl Kontaktaufnahmen von Personen, die sich täglich bis wöchentlich melden                |
|Zusätzliche Beanspruchung aufgelegt                    |zus_beanspruchung_aufgelegt              |Anzahl Anrufe, die durch Auflegen beendet wurden                    |
|Zusätzliche Beanspruchung Chat ohne Inhalt             |zus_beanspruchung_chat_ohne_inhalt       |Anzahl inhaltlose Chatnachrichten            |
|Zusätzliche Beanspruchung Fehlanruf                    |zus_beanspruchung_fehlanruf              |Anzahl Fehlanrufe                    |
|Zusätzliche Beanspruchung Juxanruf                     |zus_beanspruchung_juxanruf               |Anzahl Juxanrufe                     |
|Zusätzliche Beanspruchung Schweigeanruf                |zus_beanspruchung_schweigeanruf          |Anzahl Schweigeanrufe                |
|Zusätzliche Beanspruchung Verschobenes Gespräch        |zus_beanspruchung_verschobenes_gespraech |Anzahl vereinbarte Anrufe, die nicht wahrgenommen wurden        |


## Kontakt

Für inhaltliche Fragen zu den Daten steht Matthias Herren, Stellenleiter der [Dargebotenen Hand Zürich](https://zuerich.143.ch/Organisation/Team), zur Verfügung:  
Tel: 043 244 80 80  
E-Mail: zuerich@143.ch


## Weitere Informationen

[Projektseite: "Gesellschaftsmonitoring COVID19"](https://github.com/statistikZH/covid19monitoring)  
[Datenbezug](https://www.web.statistik.zh.ch/covid19_indikatoren_uebersicht/#/)  
[Lizenz](https://github.com/openZH/covid_19/blob/master/LICENSE)  

