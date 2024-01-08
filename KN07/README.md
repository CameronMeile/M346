# KN07 - Skalierung

In dieser Kompetenz werden Sie eine Migration einer lokalen Infrastruktur planen. Lesen Sie sich
in die Theorie "Migrationsmodelle" ein, auch in die Dokumente in der Quelle.

[Aufgaben Stellung - KN07.pdf](/KN00/Content/KN07.pdf)

---

## A) Kostenrechnung erstellen

### Rehosting

#### AWS
![AWS Estimate](/KN07/Content/Estimate%20AWS.png)

#### AZURE
![AZURE Estimate](/KN07/Content/Estimate%20Azure.png)

#### Auswahl + Begründung
AZURE ist zwar preislich attraktiv, jedoch haben wir bisher keine Erfahrungen damit gesammelt, im Gegensatz zu AWS. Wenn wir uns jedoch später mit AZURE vertraut machen und es testen, könnten wir einen Wechsel in Betracht ziehen. Aus diesem Grund wäre es besser, AWS zu wählen.

### Replatforming

#### HEROKU
![HEROKU Estimate](/KN07/Content/Estimate%20Heroku.png)

#### Auswahl + Begründung
Heroku ist zwar kostenintensiver als AWS oder AZURE, bietet jedoch umfangreichere Supportmöglichkeiten. Bei der Modifizierung ist man allerdings eingeschränkter. Wenn man die Infrastrukturkosten minimieren möchte, ist Heroku eine gute Wahl.

### Repurchasing

#### ZOHO CRM
![ZOHO CRM Estimate](/KN07/Content/Estimate%20ZOHO.png)

#### SALESFORCE
![SALESFORCE Estimate](/KN07/Content/Estimate%20SalesFroce.png)

#### Auswahl + Begründung
ZOHO CRM Enterprice 40 CHF
ZOHO CRM ist klarer und bodenständiger als SALESFORCE.
Zudem bietet ZOHO ein besseres Preis-Leistungs-Verhältnis.

#### Gegenüberstellung der SaaS-Lösung zu IaaS und PaaS Lösungen
Rehosting als IAAS lohnt sich am besten aufgrund der eigenen Kontrolle. Auch im Vergleich zu SAAS ist IAAS preislich pro Kopf günstiger. SAAS kostet pro Kopf etwa 40 CHF teurer.

Im Vergleich zu SAAS ist Replatforming als PAAS schlechter. Mit ZOHO kommt man günstiger weg als mit Heroku. Der Preisunterschied beträgt ganze 200 CHF.

## B) Interpretation der Resultate
Interpretieren Sie die Resultate der Varianten u.a. mit den folgenden Fragen:

### Wie stark unterscheiden sich die Angebote? 
Die Angebote unterscheiden sich aufgrund verschiedener Faktoren. Bei SAAS ist es besonders wichtig, die Anzahl der Mitarbeiter zu berücksichtigen, da jeder Mitarbeiter zusätzliche Kosten verursacht. Dies ist bei IAAS und PAAS nicht der Fall. Bei IAAS kann man viele Aspekte selbst anpassen und personalisieren, was jedoch auch mehr Arbeit erfordert. Bei PAAS muss man möglicherweise die App anpassen.

### Welches ist das billigste?
IAAS ist preislich am günstigsten, da man nur die Infrastruktur erhält und alles selbst konfigurieren muss.

### Wieso ist eines davon viel teurer? Ist es aber wirklich teurer?
Betrachtet man SAAS, fällt auf, dass der Preis mit steigender Anzahl an Nutzern ansteigt. Wenn jedoch nur eine Person SAAS nutzt, ist es sehr günstig.  SAAS ist eine fertige und einsatzbereite Lösung, die nur noch geringfügig angepasst werden muss. Außerdem bietet es umfangreichen Support, der sich auch preislich lohnt.