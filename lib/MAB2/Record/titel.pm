package MAB2::Record::titel;
our $VERSION = '0.01';
use base qw(MAB2::Record::Base);

use strict;
use overload '""' => "as_string";

my $KDocs;
my $RDocs;

{
  local $/;
  my $strdocs = <DATA>;
  close DATA;
  ($KDocs, $RDocs) = __PACKAGE__->parsedoc($strdocs);
}

# cannot inherit, $RDocs is different here
sub segmentname {
  my $self = shift;
  my $rec = shift;
  $RDocs->{$rec}[3] || $self->SUPER::segmentname($rec);
}

1;

# titelmab.txt
__DATA__
                               MAB2-TITEL
                       Online-Kurzreferenz-Version
                          Stand: November 2001



          SATZKENNUNG


001-088   SEGMENT 0--

001-029   IDENTIFIKATIONSNUMMERN, DATUMS- UND VERSIONSANGABEN
030-035   ALLGEMEINE VERARBEITUNGSTECHNISCHE ANGABEN
036-049   ALLGEMEINE CODIERTE ANGABEN
050-064   VEROEFFENTLICHUNGS- UND MATERIALSPEZIFISCHE ANGABEN
070-075   ANWENDERSPEZIFISCHE DATEN UND CODES
076-088   ANWENDERSPEZIFISCHE ANGABEN




089-090   SEGMENT BANDANGABEN

089       BANDANGABEN IN VORLAGEFORM

          Indikator:
          blank = nicht definiert


090       BANDANGABEN IN SORTIERFORM

          Indikator:
          blank = nicht definiert




1--       SEGMENT PERSONENNAMEN

100       NAME DER 1. PERSON IN ANSETZUNGSFORM

          Indikator:
          blank = Name des 1. Verfassers
                  Haupteintragung
          b     = Name der 1. sonstigen beteiligten Person
                  einteilige Nebeneintragung
          c     = Name der 1. sonstigen beteiligten Person
                  ein- und zweiteilige Nebeneintragung
          f     = Name der 1. gefeierten Person
                  zweiteilige  Nebeneintragung  mit  dem
                  Formalsachtitel 'Festschrift'
          e     = Name des 1. Interpreten
                  einteilige Nebeneintragung


101       VERWEISUNGSFORMEN ZUM NAMEN DER 1. PERSON

          Indikator:
          blank = nicht spezifiziert
          a     = Pseudonym
          b     = wirklicher Name
          c     = frueherer Name
          d     = spaeterer Name
          z     = zusaetzliche, weitere Verweisungsform


102       IDENTIFIKATIONSNUMMER  DES PERSONENNAMENSATZES DER
          1. PERSON

          Indikator:
          blank = nicht spezifiziert
          a     = Ueberregionale Identifikationsnummer
          b     = Regionale Identifikationsnummer
          c     = Lokale Identifikationsnummer


103       KOERPERSCHAFT, BEI DER DIE 1. PERSON BESCHAEFTIGT IST

          Indikator:
          blank = nicht definiert


104       NAME DER 2. PERSON IN ANSETZUNGSFORM

          Indikator:
          a = Name des 2. Verfassers
              zweiteilige Nebeneintragung
          b = Name der 2. sonstigen beteiligten Person
              einteilige Nebeneintragung
          c = Name der 2. sonstigen beteiligten Person
              ein- und zweiteilige Nebeneintragung
          f = Name der 2. gefeierten Person
              zweiteilige Nebeneintragung mit dem Formalsachtitel
              'Festschrift'
          e = Name des 2. Interpreten
              einteilige Nebeneintragung


105       VERWEISUNGSFORMEN ZUM NAMEN DER 2. PERSON
106       IDENTIFIKATIONSNUMMER  DES PERSONENNAMENSATZES DER
          2. PERSON
107       KOERPERSCHAFT, BEI DER DIE 2. PERSON BESCHAEFTIGT IST

...

196       NAME DER 25. PERSON IN ANSETZUNGSFORM
197       VERWEISUNGSFORMEN ZUM NAMEN DER 25. PERSON
198       IDENTIFIKATIONSNUMMER DES PERSONENNAMENSATZES DER
          25. PERSON
199       KOERPERSCHAFT, BEI DER DIE 25. PERSON BESCHAEFTIGT IST




2--       SEGMENT KOERPERSCHAFTSNAMEN

200       NAME DER 1. KOERPERSCHAFT IN ANSETZUNGSFORM

          Indikator:
          blank = Name des 1. Urhebers
                  Haupteintragung
          b     = Name des 1. Urhebers oder der 1. sonstigen
                  beteiligten Koerperschaft
                  einteilige Nebeneintragung
          c     = Name des 1. Urhebers oder der 1. sonstigen
                  beteiligten Koerperschaft
                  ein- und zweiteilige Nebeneintragung
          e     = Name des 1. Interpreten
                  einteilige Nebeneintragung


201       VERWEISUNGSFORMEN ZUM NAMEN DER 1. KOERPERSCHAFT

          Indikator:
          blank = nicht spezifiziert
          z     = weitere, zusaetzliche Verweisungsform


202       IDENTIFIKATIONSNUMMER DES KOERPERSCHAFTSNAMENSATZES DER
          1. KOERPERSCHAFT

          Indikator:
          blank = nicht definiert
          a     = Ueberregionale Identifikationsnummer
          b     = Regionale Identifikationsnummer
          c     = Lokale Identifikationsnummer


204       Name der 2. Koerperschaft in Ansetzungsform

          Indikator:
          a = Name des 2. Urhebers
              zweiteilige Nebeneintragung
          b = Name des 2. Urhebers oder der sonstigen
              beteiligten Koerperschaft
              einteilige Nebeneintragung
          c = Name des 2. Urhebers oder der sonstigen
              beteiligten Koerperschaft
              ein- und zweiteilige Nebeneintragung
          e = Name des Interpreten
              einteilige Nebeneintragung


205       VERWEISUNGSFORMEN ZUM NAMEN DER 2. KOERPERSCHAFT
206       IDENTIFIKATIONSNUMMER DES KOERPERSCHAFTSNAMENSATZES
          DER 2. KOERPERSCHAFT

...

296       NAME DER 25. KOERPERSCHAFT IN ANSETZUNGSFORM
297       VERWEISUNGSFORMEN ZUM NAMEN DER 25. KOERPERSCHAFT
298       IDENTIFIKATIONSNUMMER DES KOERPERSCHAFTSNAMENSATZES
          DER 25. KOERPERSCHAFT




3--       SEGMENT SACHTITEL

300       SAMMLUNGSVERMERK

          Indikator:
          blank = nicht definiert


304       EINHEITSSACHTITEL

          Indikator:
          blank = keine Nebeneintragung
          a     = zusaetzliche Nebeneintragung unter dem Sachtitel
          b     = zusaetzliche Nebeneintragung mit dem Sachtitel


310       HAUPTSACHTITEL IN ANSETZUNGSFORM

          Indikator:
          blank = keine Nebeneintragung
          a     = zusaetzliche Nebeneintragung unter dem Sachtitel
          b     = zusaetzliche Nebeneintragung mit dem Sachtitel


331       HAUPTSACHTITEL IN VORLAGEFORM ODER MISCHFORM

          Indikator:
          blank = keine Nebeneintragung
          a     = zusaetzliche Nebeneintragung unter dem Sachtitel
          b     = zusaetzliche Nebeneintragung mit dem Sachtitel


333       ZU ERGAENZENDE URHEBER ZUM HAUPTSACHTITEL

          Indikator:
          blank = nicht definiert


334       ALLGEMEINE MATERIALBENENNUNG

          Indikator:
          blank = nicht definiert


335       ZUSAETZE ZUM HAUPTSACHTITEL

          Indikator:
          blank = keine Nebeneintragung
          a     = zusaetzliche Nebeneintragung unter dem Zusatz
          b     = zusaetzliche Nebeneintragung mit dem Zusatz


340       1. PARALLELSACHTITEL IN ANSETZUNGSFORM

          Indikator:
          blank = keine Nebeneintragung
          a     = zusaetzliche Nebeneintragung unter dem Sachtitel
          b     = zusaetzliche Nebeneintragung mit dem Sachtitel


341       1. PARALLELSACHTITEL IN VORLAGEFORM ODER MISCHFORM

          Indikator:
          blank = keine Nebeneintragung
          a     = zusaetzliche Nebeneintragung unter dem Sachtitel
          b     = zusaetzliche Nebeneintragung mit dem Sachtitel


342       ZU ERGAENZENDE URHEBER ZUM 1. PARALLELSACHTITEL

          Indikator:
          blank = nicht definiert


343       ZUSAETZE ZUM 1. PARALLELSACHTITEL

          Indikator:
          blank = keine Nebeneintragung
          a     = zusaetzliche Nebeneintragung unter dem Zusatz
          b     = zusaetzliche Nebeneintragung mit dem Zusatz


344       2. PARALLELSACHTITEL IN ANSETZUNGSFORM
345       2. PARALLELSACHTITEL IN VORLAGEFORM ODER MISCHFORM
346       ZU ERGAENZENDE URHEBER ZUM 2. PARALLELSACHTITEL
347       ZUSAETZE ZUM 2. PARALLELSACHTITEL

...

352       4. PARALLELSACHTITEL IN ANSETZUNGSFORM
353       4. PARALLELSACHTITEL IN VORLAGEFORM ODER MISCHFORM
354       ZU ERGAENZENDE URHEBER ZUM 4. PARALLELSACHTITEL
355       ZUSAETZE ZUM 4. PARALLELSACHTITEL


359       VERFASSERANGABE

          Indikator:
          blank = nicht definiert


360       UNTERREIHEN

          Indikator:
          blank = nicht definiert


361       BEIGEFUEGTE WERKE

          Indikator:
          blank = nicht definiert


365       ZUSAETZE ZUR GESAMTEN VORLAGE

          Indikator:
          blank = nicht definiert


369       VERFASSERANGABE ZUR GESAMTEN VORLAGE

          Indikator:
          blank = nicht definiert


370       WEITERE SACHTITEL

          Indikator:
          a = zusaetzliche Nebeneintragung unter dem Sachtitel
          b = zusaetzliche Nebeneintragung mit dem Sachtitel
          c = zusaetzliche Nebeneintragung unter und mit dem
              Sachtitel


376       NORMIERTE ZEITSCHRIFTENTITEL

          Indikator:
          blank = nicht definiert
          a     = Kurztitel nach DIN 1502
          b     = CODEN
          c     = Key Title nach DIN 1430
          d     = Kurztitel nach INIS




400-437   SEGMENT VEROEFFENTLICHUNGSVERMERK, UMFANG, BEIGABEN

400       AUSGABEBEZEICHNUNG IN NORMIERTER FORM

          Indikator:
          blank = nicht definiert


403       AUSGABEBEZEICHNUNG IN VORLAGEFORM

          Indikator:
          blank = nicht definiert


405       ERSCHEINUNGSVERLAUF

          Indikator:
          blank = nicht definiert


406       NORMIERTER ERSCHEINUNGSVERLAUF

          Indikator:
          blank = nicht spezifiziert
          a     = abgeschlossenes Erscheinen
          b     = fortlaufendes Erscheinen

          Unterfelder:
          Beginngruppe:
          $5    = Parallele Zaehlung
          $f    = Sachliche Benennung
          $d    = Bandzaehlung
          $e    = Heft
          $b    = Tag
          $c    = Monat
          $j    = Berichtszeit bzw. Erscheinungszeit
          $h    = Abweichende Erscheinungszeit
          $g    = Kommentar zur Beginngruppe

          Endegruppe:
          $n    = Bandzaehlung
          $o    = Heft
          $l    = Tag
          $m    = Monat
          $k    = Berichtszeit bzw. Erscheinungszeit
          $i    = Abweichende Erscheinungszeit
          $q    = Kommentar zur Endegruppe


407       KARTOGRAPHISCHE MATERIALIEN: MATHEMATISCHE ANGABEN

          Indikator:
          blank = nicht definiert


410       ORT(E) DES 1. VERLEGERS, DRUCKERS USW.

          Indikator:
          blank = Verlagsort(e)
          a     = Druckort(e)
          b     = Vertriebsort(e)
          c     = Auslieferungsort(e)
          u     = nicht spezifiziert


411       ADRESSE DES 1. VERLEGERS, DRUCKERS USW.

          Indikator:
          blank = nicht definiert


412       NAME DES 1. VERLEGERS, DRUCKERS USW.

          Indikator:
          blank = Verleger
          a     = Drucker
          b     = Vertrieb
          c     = Auslieferer
          u     = nicht spezifiziert

415       ORT(E) DES 2. VERLEGERS, DRUCKERS USW.
416       ADRESSE DES 2. VERLEGERS, DRUCKERS USW.
417       NAME DES 2. VERLEGERS, DRUCKERS USW.


418       ANGABEN ZU WEITEREN UND/ODER FRUEHEREN VERLEGERN, DRUCKERN ETC.

          Indikator:
          blank = Verleger
          a     = Drucker
          b     = Vertrieb
          c     = Auslieferer
          u     = nicht spezifiziert

          Unterfelder:
          $a    = Ort(e)
          $b    = Strasse der postalischen Adresse
          $c    = Hausnummer der postalischen Adresse
          $d    = Postfach der postalischen Adresse
          $e    = Postleitzahl der postalischen Adresse
          $f    = Ort der postalischen Adresse
          $g    = Name
          $h    = Datierung
          $u    = nicht spezifiziert


420       MEHRTEILIGE, UNSELBSTAENDIG ERSCHIENENE WERKE:
          ZUSAMMENFASSENDE UND OFFENE AUFFUEHRUNG VON TEILEN

          Indikator:
          blank = nicht definiert


425       ERSCHEINUNGSJAHR(E)

          Indikator:
          blank = Erscheinungsjahr(e) in Vorlageform
          a     = Erscheinungsjahr(e) in Ansetzungsform
          b     = Erscheinungsjahr des ersten Bandes in Ansetzungsform
          c     = Erscheinungsjahr des letzten Bandes in Ansetzungsform
          p     = Publikationsdatum bei Tontraegern (P-Datum)


426       DATUMSANGABEN

          Indikator:
          blank = Datumsangaben in Vorlageform
          a     = Datumsangaben in normierter Form


427       ZUSAMMENFASSENDE BESTANDSANGABE

          Indikator:
          blank = nicht definiert


429       BESTANDSLUECKEN

          Indikator:
          blank = nicht definiert


431       ZUSAMMENFASSENDE REGISTER

          Indikator:
          blank = nicht definiert


432       ZUSAMMENFASSENDE UND OFFENE BANDAUFFUEHRUNG

          Indikator:
          blank = nicht definiert


433       UMFANGSANGABE

          Indikator:
          blank = Umfangsangabe
          a     = Zusammenfassung der Baende nach abgeschlossenem
                  Erscheinen eines mehrbaendigen begrenzten Werkes
          b     = Zaehlungsangabe bei unselbstaendig erschienenen
                  Werken
          c     = Anzahl und Materialbenennung physischer
                  Einheiten


434       ILLUSTRATIONSANGABE / TECHNISCHE ANGABEN ZU TONTRAEGERN

          Indikator:
          blank = Illustrationsangabe
          a     = Technisches System
          b     = Laufgeschwindigkeit bei Tontraegern
          c     = Umdrehungszahl bei Schallplatten
          d     = Aufnahme- und Wiedergabeverfahren


435       FORMATANGABE

          Indikator:
          blank = Formatangabe
          a     = Durchmesser von Tontraegern


437       ANGABE VON BEGLEITMATERIALIEN

          Indikator:
          blank = nicht definiert




451-496   SEGMENT GESAMTTITELANGABEN


451-456   1. GESAMTTITEL

451       1. GESAMTTITEL IN VORLAGEFORM

          Indikator:
          blank = 1. Gesamttitel mit Zaehlung der Stuecktitel
          a     = 1. Gesamttitel mit Zaehlung der Stuecktitel -
                  die Angabe der Zaehlung erfolgt auf nachfolgender
                  Hierarchiestufe
          b     = 1. Gesamttitel ohne Zaehlung der Stuecktitel


452       STANDARDNUMMERN DES 1. GESAMTTITELS

          Indikator:
          a = ISSN formal richtig
          b = ISSN formal falsch
          c = ISBN formal richtig
          d = ISBN formal falsch
          e = ISMN formal richtig
          f = ISMN formal falsch
          z = sonstige Standardnummern


453       IDENTIFIKATIONSNUMMER DES 1. GESAMTTITELS

          Indikator:
          blank = nicht definiert
          m     = mehrbaendiges begrenztes Werk
          r     = Schriftenreihe oder anderes fortlaufendes
                  Sammelwerk


454       1. GESAMTTITEL IN ANSETZUNGSFORM

          Indikator:
          blank = nicht spezifiziert
          a     = Verfasserwerk
          b     = Urheberwerk
          c     = Sachtitelwerk


455       BANDANGABE

          Indikator:
          blank = nicht definiert


456       BANDANGABE IN SORTIERFORM

          Indikator:
          blank = nicht definiert


461-466   2. GESAMTTITEL

461       2. GESAMTTITEL IN VORLAGEFORM

          Indikator:
          blank = 2. Gesamttitel mit Zaehlung der Stuecktitel
          a     = 2. Gesamttitel mit Zaehlung der Stuecktitel -
                  Angabe der Zaehlung erfolgt auf nachfolgender
                  Hierarchiestufe
          b     = 2. Gesamttitel ohne Zaehlung der Stuecktitel
          c     = 2. Gesamttitel mit Zaehlung der Stuecktitel -
                  ohne maschinelle Generierung eines Stuecktitelnachtrags
                  (Deskriptivform)


462       STANDARDNUMMERN DES 2. GESAMTTITELS
463       IDENTIFIKATIONSNUMMER DES 2. GESAMTTITELS
464       2. GESAMTTITEL IN ANSETZUNGSFORM
465       BANDANGABE
466       BANDANGABE IN SORTIERFORM


471-476   3. GESAMTTITEL

471       3. GESAMTTITEL IN VORLAGEFORM
472       STANDARDNUMMERN DES 3. GESAMTTITELS
473       IDENTIFIKATIONSNUMMER DES 3. GESAMTTITELS
474       3. GESAMTTITEL IN ANSETZUNGSFORM
475       BANDANGABE
476       BANDANGABE IN SORTIERFORM


481-486   4. GESAMTTITEL

481       4. GESAMTTITEL IN VORLAGEFORM
482       STANDARDNUMMERN DES 4. GESAMTTITELS
483       IDENTIFIKATIONSNUMMER DES 4. GESAMTTITELS
484       4. GESAMTTITEL IN ANSETZUNGSFORM
485       BANDANGABE
486       BANDANGABE IN SORTIERFORM


491-496   5. GESAMTTITEL

491       5. GESAMTTITEL IN VORLAGEFORM
492       STANDARDNUMMERN DES 5. GESAMTTITELS
493       IDENTIFIKATIONSNUMMER DES 5. GESAMTTITELS
494       5. GESAMTTITEL IN ANSETZUNGSFORM
495       BANDANGABE
496       BANDANGABE IN SORTIERFORM




501-539   SEGMENT FUSSNOTEN

501       SAMMELFELD FUER UNAUFGEGLIEDERTE FUSSNOTEN

          Indikator:
          blank = nicht definiert


502       EINHEITSSACHTITEL EINES BEIGEFUEGTEN ODER KOMMENTIERTEN
          WERKES

          Indikator:
          blank = nicht definiert


503       DEUTSCHE UEBERSETZUNG DES HAUPTSACHTITELS BZW.
          HINWEIS AUF DIE MUSIKALISCHE FORM

          Indikator:
          blank = Deutsche Uebersetzung des Hauptsachtitels
          a     = Hinweis auf die musikalische Form und/oder
                  Besetzung


504       ANGABE VON PARALLELTITELN

          Indikator:
          blank = nicht definiert


505       ANGABE VON NEBENTITELN

          Indikator:
          blank = nicht definiert


507       ANGABEN ZUM HAUPTSACHTITEL UND ZU DEN ZUSAETZEN

          Indikator:
          blank = nicht definiert


508       ANGABE DER QUELLE DER AUFNAHME

          Indikator:
          blank = nicht definiert


509       VERMERKE ZUR VERFASSERANGABE

          Indikator:
          blank = nicht definiert


510       ANGABEN ZUR AUSGABEBEZEICHNUNG

          Indikator:
          blank = nicht definiert


511       ANGABEN ZUM ERSCHEINUNGSVERMERK

          Indikator:
          blank = nicht definiert


512       ANGABEN ZUM KOLLATIONSVERMERK BZW. ZUR PHYSISCHEN
          BESCHREIBUNG

          Indikator:
          blank = Angaben zum Kollationsvermerk
          a     = Angaben zur physischen Beschreibung


513       AENDERUNGEN IM IMPRESSUM

          Indikator:
          blank = nicht definiert


515       ERGAENZUNGEN ZUR GESAMTTITELANGABE

          Indikator:
          blank = nicht definiert


516       ANGABEN UEBER SCHRIFT, SPRACHE UND VOLLSTAENDIGKEIT DER
          VORLAGE UND MUSIKALISCHE NOTATION

          Indikator:
          blank = nicht spezifiziert
          a     = Angaben ueber die Sprache der Vorlage
          b     = Angaben ueber die Schrift der Vorlage
          c     = Angaben ueber die Vollstaendigkeit der Vorlage
          d     = Angaben ueber die musikalische Notation


517       ANGABEN ZUM INHALT

          Indikator:
          blank = Angaben zum Inhalt
          a     = beigefuegte Werke
          b     = enthaltene Werke
          c     = Inhaltsverzeichnis


518       ANGABE DER NAMEN VON INTERPRETEN BZW. WEITERE ANGABEN
          ZUR INTERPRETATION

          Indikator:
          a = Angabe der Namen von Interpreten
          b = weitere Angaben zur Interpretation


519       HOCHSCHULSCHRIFTENVERMERK

          Indikator:
          blank = nicht definiert


522       TEILUNGSVERMERK BEI FORTLAUFENDEN SAMMELWERKEN

          Indikator:
          blank = nicht definiert


523       ANGABEN UEBER ERSCHEINUNGSWEISE UND ERSCHEINUNGSDAUER

          Indikator:
          blank = nicht definiert


524       HINWEISE AUF UNSELBSTAENDIG ENTHALTENE WERKE

          Indikator:
          blank = nicht definiert


525       HERKUNFTSANGABEN

          Indikator:
          blank = nicht definiert


526       TITEL VON REZENSIERTEN WERKEN

          Indikator:
          blank = verbale Beschreibung
          x     = reziproke Beziehung
          y     = nicht reziproke Beziehung
          z     = nicht differenzierte Beziehung


527       HINWEISE AUF PARALLELE AUSGABEN

          Indikator:
          blank = verbale Beschreibung
          x     = reziproke Beziehung
          y     = nicht reziproke Beziehung
          z     = nicht differenzierte Beziehung


528       TITEL VON REZENSIONEN

          Indikator:
          blank = verbale Beschreibung
          x     = reziproke Beziehung
          y     = nicht reziproke Beziehung
          z     = nicht differenzierte Beziehung


529       TITEL VON FORTLAUFENDEN BEILAGEN

          Indikator:
          blank = verbale Beschreibung
          x     = reziproke Beziehung
          y     = nicht reziproke Beziehung
          z     = nicht differenzierte Beziehung


530       TITEL VON BEZUGSWERKEN

          Indikator:
          blank = verbale Beschreibung
          x     = reziproke Beziehung
          y     = nicht reziproke Beziehung
          z     = nicht differenzierte Beziehung


531       HINWEISE AUF FRUEHERE AUSGABEN UND BAENDE

          Indikator:
          blank = verbale Beschreibung
          x     = reziproke Beziehung
          y     = nicht reziproke Beziehung
          z     = nicht differenzierte Beziehung


532       HINWEISE AUF FRUEHERE UND SPAETERE SOWIE ZEITWEISE
          GUELTIGE TITEL

          Indikator:
          blank = verbale Beschreibung
          x     = reziproke Beziehung
          y     = nicht reziproke Beziehung
          z     = nicht differenzierte Beziehung


533       HINWEISE AUF SPAETERE AUSGABEN UND BAENDE

          Indikator:
          blank = verbale Beschreibung
          x     = reziproke Beziehung
          y     = nicht reziproke Beziehung
          z     = nicht differenzierte Beziehung


534       TITELKONKORDANZEN

          Indikator:
          blank = verbale Beschreibung
          x     = reziproke Beziehung
          y     = nicht reziproke Beziehung
          z     = nicht differenzierte Beziehung


535       ANZAHL VON EXEMPLAREN

          Indikator:
          blank = nicht definiert


536       VORAUSSICHTLICHER ERSCHEINUNGSTERMIN

          Indikator:
          blank = nicht definiert


537       REDAKTIONELLE BEMERKUNGEN

          Indikator:
          blank = nicht definiert


538       ANGABE DER VERVIELFAELTIGUNGSART

          Indikator:
          blank = nicht definiert




540-589   SEGMENT STANDARDNUMMERN

540       INTERNATIONALE STANDARDBUCHNUMMER (ISBN)

          Indikator:
          blank = ISBN formal nicht geprueft
          a     = ISBN formal richtig
          b     = ISBN formal falsch
          z     = keine ISBN, aber Einbandart und/oder Preis


541       INTERNATIONALE STANDARDNUMMER FUER MUSIKALIEN (ISMN)

          Indikator:
          blank = ISMN formal nicht geprueft
          a     = ISMN formal richtig
          b     = ISMN formal falsch
          z     = keine ISMN, aber Einbandart und/oder Preis


542       INTERNATIONALE STANDARDNUMMER FUER FORTLAUFENDE
          SAMMELWERKE (ISSN)

          Indikator:
          blank = ISSN formal nicht geprueft
          a     = ISSN formal richtig
          b     = ISSN formal falsch
          z     = keine ISSN, aber Einbandart und/oder Preis


543       INTERNATIONALE STANDARDNUMMER FUER REPORTS (ISRN)

          Indikator:
          blank = ISRN formal nicht geprueft
          a     = ISRN formal richtig
          b     = ISRN formal falsch
          z     = keine ISRN, aber Einbandart und/oder Preis


544       LOKALE SIGNATUR

          Indikator:
          blank = keine Benutzungsbeschraenkung
          a     = nicht verleihbar


546       POSTVERTRIEBSKENNZEICHEN

          Indikator:
          blank = nicht definiert


550       AMTLICHE DRUCKSCHRIFTENNUMMER

          Indikator:
          blank = nicht definiert


551       VERLAGS-, PRODUKTIONS- UND BESTELLNUMMER VON MUSIKALIEN
          UND TONTRAEGERN

          Indikator:
          blank = nicht spezifiziert
          a     = Verlags- und Firmenbestellnummer
          b     = Druckplattennummer bei Musikalien
          c     = Plattennummer
          d     = Setnummer
          e     = Produktionsnummer
          f     = Kompaktkassettennummer


552       DIGITAL OBJECT IDENTIFIER (DOI)

          Indikator:
          blank = nicht definiert


553       ARTIKELNUMMER

          Indikator:
          blank = nicht spezifiziert
          a     = Internationale Artikelnummer (EAN)
          b     = Universal Product Code (UPC)


554       HOCHSCHULSCHRIFTENNUMMER

          Indikator:
          blank = nicht definiert


556       REPORTNUMMER

          Indikator:
          blank = nicht aufgegliedert
          a     = Reportnummer
          b     = Kontraktnummer
          c     = Task-Nummer


562       PATENTNUMMER

          Indikator:
          blank = nicht aufgegliedert
          a     = Patentschrift
          b     = Offenlegungsschrift
          c     = Auslegeschrift


564       NORMNUMMER

          Indikator:
          blank = nicht definiert


566       FIRMENSCHRIFTENNUMMER

          Indikator:
          blank = nicht definiert


568       NATIONALBIBLIOGRAPHIENUMMER DER CIP-AUFNAHME

          Indikator:
          blank = nicht definiert


570       NATIONALBIBLIOGRAPHIENUMMER DER FALSCHEN AUFNAHME

          Indikator:
          blank = nicht definiert


574       NATIONALBIBLIOGRAPHIENUMMER (NBN)

          Indikator:
          blank = nicht definiert


576       PFLICHTABLIEFERUNGSNUMMER

          Indikator:
          blank = nicht definiert


578       FINGERPRINT

          Indikator:
          blank = nicht definiert


580       SONSTIGE STANDARDNUMMERN

          Indikator:
          blank = nicht definiert


581-589   NICHT BENUTZT




590-599   SEGMENT HERKUNFT (QUELLE) UNSELBSTAENDIG ERSCHIENENER
          WERKE

590       HAUPTSACHTITEL UND GGF. ZU ERGAENZENDE URHEBER DER
          QUELLE

          Indikator:
          blank = nicht definiert


591       VERFASSERANGABE DER QUELLE

          Indikator:
          blank = nicht definiert


592       ABTEILUNG / UNTERREIHE DER QUELLE

          Indikator:
          blank = nicht definiert


593       AUSGABEBEZEICHNUNG DER QUELLE IN VORLAGEFORM

          Indikator:
          blank = nicht definiert


594       ERSCHEINUNGSORT DER QUELLE

          Indikator:
          blank = Verlagsort(e)
          a     = Druckort(e)
          b     = Vertriebsort(e)
          c     = Auslieferungsort(e)


595       ERSCHEINUNGSJAHR DER QUELLE

          Indikator:
          blank = nicht definiert


596       BANDZAEHLUNG, JAHRESZAEHLUNG, HEFTZAEHLUNG, UMFANGS-
          UND ILLUSTRATIONSANGABE DER QUELLE

          Indikator:
          blank = nicht aufgegliedert
          a     = zusaetzlich mit Band- und/oder Heftbezeichnung
          b     = zusaetzlich mit Tagesdatum bei Zeitungen
          c     = zusaetzlich mit Legislaturperiode bei
                  Parlamentsveroeffentlichungen


597       GESAMTTITEL DER QUELLE

          Indikator:
          blank = nicht definiert


598       FUSSNOTE DER QUELLE

          Indikator:
          blank = nicht definiert


599       STANDARDNUMMERN DER QUELLE

          Indikator:
          blank = Identifikationsnummer der selbstaendigen Schrift
          a     = ISSN formal richtig
          b     = ISSN formal falsch
          c     = ISBN formal richtig
          d     = ISBN formal falsch
          e     = ISMN formal richtig
          f     = ISMN formal falsch
          g     = ISRN formal richtig
          h     = ISRN formal falsch
          s     = Identifikationsnummer der ZDB




600-603   SEGMENT PAUSCHALVERWEISUNGEN UND SIEHE-AUCH-HINWEISE

600       1. TEIL DER VERWEISUNG

          Indikator:
          a = allgemein
          b = Personennamen (nicht differenziert)
          c = persoenliche Namen
          d = Familiennamen
          e = Koerperschaftsnamen
          f = Sachtitel


601       BEMERKUNGEN ZUM 1. TEIL DER VERWEISUNG

          Indikator:
          blank = nicht definiert


602       2. TEIL DER VERWEISUNG

          Indikator:
          a = Pauschalverweisung
          b = Siehe-auch-Hinweis


603       BEMERKUNGEN ZUM 2. TEIL DER VERWEISUNG

          Indikator:
          blank = nicht definiert




610-650   SEGMENT AUSGABEVERMERK SEKUNDAERFORMEN

610       FUSSNOTE ZUR SEKUNDAERAUSGABE

          Indikator:
          blank = einleitende Wendung
          a     = Angaben zur Sekundaerform


611       ORT(E) DES 1. VERLEGERS, HERSTELLERS USW.

          Indikator:
          blank = Verlagsort(e)
          a     = Herstellungsort(e)
          b     = Vertriebsort(e)
          c     = Auslieferungsort(e)
          u     = nicht spezifiziert


612       ADRESSE DES 1. VERLEGERS, HERSTELLERS USW.

          Indikator:
          blank = Verlegeradresse(n)
          a     = Herstelleradresse(n)
          b     = Vertriebsadresse(n)
          c     = Auslieferungsadresse(n)
          u     = nicht spezifiziert


613       NAME DES 1. VERLEGERS, HERSTELLERS USW.

          Indikator:
          blank = Verleger
          a     = Hersteller
          b     = Vertrieb
          c     = Auslieferer
          u     = nicht spezifiziert


614       ORT(E) DES 2. VERLEGERS, HERSTELLERS USW.
615       ADRESSE DES 2. VERLEGERS, HERSTELLERS USW.
616       NAME DES 2. VERLEGERS, HERSTELLERS USW.


617       1. URHEBER DER VERFILMUNG

          Indikator:
          blank = Name des 1. Verfilmungsurhebers
          a     = Adresse des 1. Verfilmungsurhebers


618       2. URHEBER DER VERFILMUNG

          Indikator:
          blank = Name des 2. Verfilmungsurhebers
          a     = Adresse des 2. Verfilmungsurhebers


619       ERSCHEINUNGSJAHR(E) DER SEKUNDAERFORM

          Indikator:
          blank = Erscheinungsjahr(e) in Vorlageform
          a     = Erscheinungsjahr(e) in Ansetzungsform
          b     = Erscheinungsjahr des ersten Bandes in Ansetzungsform
          c     = Erscheinungsjahr des letzten Bandes in Ansetzungsform


620       HINWEISE ZUR VERFILMUNG

          Indikator:
          blank = Verfilmungsdatum
          a     = Datum der geplanten Verfilmung
          b     = Kennzeichen der Institution, die eine Verfilmung plant


621-626   1. GESAMTTITEL DER SEKUNDAERFORM

621       1. GESAMTTITEL DER SEKUNDAERFORM IN VORLAGEFORM

          Indikator:
          blank = 1. Gesamttitel mit Zaehlung der Stuecktitel
          a     = 1. Gesamttitel mit Zaehlung der Stuecktitel -
                  die Angabe der Zaehlung erfolgt auf
                  nachfolgender Hierarchiestufe
          b     = 1. Gesamttitel ohne Zaehlung der Stuecktitel


622       STANDARDNUMMERN DES 1. GESAMTTITELS DER SEKUNDAERFORM

          Indikator:
          a = ISSN formal richtig
          b = ISSN formal falsch
          c = ISBN formal richtig
          d = ISBN formal falsch
          e = ISMN formal richtig
          f = ISMN formal falsch
          z = sonstige Standardnummern


623       IDENTIFIKATIONSNUMMER DES 1. GESAMTTITELS DER
          SEKUNDAERFORM

          Indikator:
          blank = nicht definiert
          m     = mehrbaendiges begrenztes Werk
          r     = Schriftenreihe oder anderes fortlaufendes
                  Sammelwerk


624       1. GESAMTTITEL DER SEKUNDAERFORM IN ANSETZUNGSFORM

          Indikator:
          blank = nicht spezifiziert
          a     = Verfasserwerk
          b     = Urheberwerk
          c     = Sachtitelwerk


625       BANDANGABE

          Indikator:
          blank = nicht definiert


626       BANDANGABE IN SORTIERFORM

          Indikator:
          blank = nicht definiert


627-632   2. GESAMTTITEL DER SEKUNDAERFORM

627       2. GESAMTTITEL DER SEKUNDAERFORM IN VORLAGEFORM

          Indikator:
          blank = 2. Gesamttitel mit Zaehlung der Stuecktitel
          a     = 2. Gesamttitel mit Zaehlung der Stuecktitel -
                  Angabe der Zaehlung erfolgt auf nachfolgender
                  Hierarchiestufe
          b     = 2. Gesamttitel ohne Zaehlung der Stuecktitel
          c     = 2. Gesamttitel mit Zaehlung der Stuecktitel -
                  ohne maschinelle Generierung eines Stuecktitelnachtrags
                  (Deskriptivform)


628       STANDARDNUMMERN DES 2. GESAMTTITELS DER SEKUNDAERFORM
629       IDENTIFIKATIONSNUMMER DES 2. GESAMTTITELS DER
          SEKUNDAERFORM
630       2. GESAMTTITEL DER SEKUNDAERFORM IN ANSETZUNGSFORM
631       BANDANGABE
632       BANDANGABE IN SORTIERFORM


633       ABWEICHENDER TITEL DER SEKUNDAERFORM

          Indikator:
          blank = nicht definiert


634       INTERNATIONALE STANDARDBUCHNUMMER (ISBN) DER
          SEKUNDAERFORM

          Indikator:
          blank = ISBN formal nicht geprueft
          a     = ISBN formal richtig
          b     = ISBN formal falsch
          z     = keine ISBN, aber Preis


635       INTERNATIONALE STANDARDNUMMER FUER FORTLAUFENDE
          SAMMELWERKE (ISSN) DER SEKUNDAERFORM

          Indikator:
          blank = ISSN formal nicht geprueft
          a     = ISSN formal richtig
          b     = ISSN formal falsch
          z     = keine ISSN, aber Preis


636       SONSTIGE STANDARDNUMMER DER SEKUNDAERFORM

          Indikator:
          blank = nicht definiert


637       UMFANGSANGABE UND PHYSISCHE BESCHREIBUNG DER
          SEKUNDAERFORM

          Indikator:
          blank = nicht definiert


638       ANGABE VON BEGLEITMATERIALIEN

          Indikator:
          blank = nicht definiert


640       AUSGABEBEZEICHNUNG DER SEKUNDAERFORM IN VORLAGEFORM

          Indikator:
          blank = nicht definiert


642       VERFILMTE BAENDE

          Indikator:
          blank = nicht definiert


644       SIGNATUR DER SEKUNDAERFORM

          Indikator:
          blank = keine Benutzungsbeschraenkung
          a     = nicht verleihbar


645       ERGAENZENDE ANGABEN ZUR SEKUNDAERFORM

          Indikator:
          blank = nicht definiert


646       BESITZNACHWEIS FUER DIE VERFILMUNGSVORLAGE

          Indikator:
          blank = Name der besitzenden Institution
          a     = Adresse der besitzenden Institution
          b     = Signatur der Verfilmungsvorlage


647       BESITZNACHWEIS FUER DEN SEKUNDAERFORM-MASTER

          Indikator:
          blank = Name der besitzenden Institution
          a     = Adresse der besitzenden Institution
          b     = Signatur des Sekundaerform-Master




651-659   SEGMENT AUSGABEVERMERK COMPUTERDATEIEN

651       FUSSNOTE ZUR COMPUTERDATEI

          Indikator:
          blank = nicht definiert

          Unterfelder:
          $a    = einleitende Wendung
          $b    = Angaben zur Computerdatei

652       SPEZIFISCHE MATERIALBENENNUNG UND DATEITYP

          Indikator:
          blank = nicht spezifiziert
          a     = RAK-NBM
          b     = ISBD-CF

          Unterfelder:
          $a    = Spezifische Materialbenennung
          $b    = Dateityp


653       PHYSISCHE BESCHREIBUNG DER COMPUTERDATEI AUF DATENTRAEGER

          Indikator:
          blank = nicht definiert

          Unterfelder:
          $a    = Anzahl und Materialbenennung physischer Einheiten
          $b    = Dateiumfang
          $c    = Sonstige physische und technische Angaben
          $d    = Physische Groesse des Datentraegers
          $e    = Begleitmaterial


654       SYSTEMVORAUSSETZUNGEN FUER DIE COMPUTERDATEI

          Indikator:
          blank = nicht definiert

          Unterfelder:
          $a   = Prozessor
          $b   = Hardware-Konfiguration
          $c   = Software-Anforderungen
          $d   = Sonstige Anforderungen


655       ELEKTRONISCHE ADRESSE UND ZUGRIFFSART
          FUER EINE COMPUTERDATEI IM FERNZUGRIFF

          Indikator:

          Zugriffsmethode:
          blank = nicht spezifiziert
          a     = E-Mail
          b     = FTP (File Transfer)
          c     = Remote Login (Telnet)
          d     = Dial-up (konventioneller Telefonanschluss)
          e     = HTTP
          h     = In Unterfeld $2 spezifizierte Zugriffsmethode

          Unterfelder:
          $a    = Name des Host
          $b    = IP-Zugriffsnummer
          $c    = Art der Komprimierung
          $d    = Zugriffspfad fuer eine Datei
          $f    = Elektronischer Name der Datei im Verzeichnis des Host
          $g    = URN (Uniform Resource Name)
          $h    = Durchfuehrende Stelle einer Anfrage
          $i    = Anweisung fuer die Ausfuehrung einer Anfrage
          $j    = Datenuebertragungsrate (Bits pro Sekunde)
          $k    = Passwort
          $l    = Logon/Login-Angabe
          $m    = Kontaktperson
          $n    = Ort des Host
          $o    = Betriebssystem des Host
          $p    = Port
          $q    = Elektronischer Dateiformattyp
          $r    = Einstellungen fuer die Dateiuebertragung
          $t    = Groesse der Datei
          $u    = URL (Uniform Resource Locator)
          $v    = Oeffnungszeiten des Host fuer die gewaehlte Zugangsart
          $w    = Identifikationsnummer des verknuepften Datensatzes
          $x    = Interne Bemerkungen
          $z    = Allgemeine Bemerkungen
          $2    = Zugriffsmethode
          $3    = Bezugswerk
          $A    = Beziehung


659       ERGAENZENDE BEMERKUNGEN ZUR COMPUTERDATEI

          Indikator:
          blank = nicht definiert

          Unterfelder:
          $a    = Ergaenzende Bemerkungen
          $b    = Bestandsschutzmassnahmen



661-669   SEGMENT AUSGABEVERMERK NACHLAESSE UND AUTOGRAPHEN

661       ANGABEN ZUM TEXT DER UNTERLAGE

          Indikator:
          blank = nicht spezifiziert
          a     = Incipit der Unterlage
          b     = Einheitsincipit
          c     = Ausreifung / Entstehungsstufe
          d     = Literarische Gattung


662       ANGABEN ZUM AEUSSEREN DER UNTERLAGE

          Indikator:
          blank = nicht spezifiziert
          a     = Beschreibstoff
          b     = Einband
          c     = Wasserzeichen
          d     = Erhaltungszustand
          e     = Restaurierungsmassnahmen


663       BEZUGSWERKE

          Indikator:
          blank = nicht spezifiziert
          a     = Editionshinweise
          b     = Literaturhinweise
          c     = Sonstige Bezugswerke


664       PROVENIENZ

          Indikator:
          blank = nicht spezifiziert
          a     = Herkunft
          b     = Erwerbung
          c     = Verlust


669       REDAKTIONELLE BEMERKUNGEN ZUR UNTERLAGE

          Indikator:
          blank = nicht spezifiziert
          a     = Benutzungsbeschraenkung
          b     = Sperrvermerk



670-675   SEGMENT ZUSAETZLICHE SUCHKRITERIEN

670       SACHTITEL IN ABWEICHENDER ORTHOGRAPHIE

          Indikator:
          blank = nicht definiert


672       AUTORENNAME IN NORMIERTER FORM

          Indikator:
          blank = nicht definiert


673       ORT IN NORMIERTER FORM

          Indikator:
          blank = Veranstaltungsort
          a     = Erscheinungsort
          b     = Verbreitungsort
          c     = Hochschulort


674       VERANSTALTUNGSJAHR / ERSCHEINUNGSJAHR DES ORIGINALS

          Indikator:
          blank = Veranstaltungsjahr
          a     = Erscheinungsjahr des Originals


675       STICHWOERTER IN ABWEICHENDER ORTHOGRAPHIE

          Indikator:
          blank = nicht definiert
          a     = Sachbegriff
          b     = geographischer Begriff
          c     = Personenname
          d     = Koerperschaftsname




7--   SEGMENT SACHERSCHLIESSUNG

700       NOTATION EINES KLASSIFIKATIONSSYSTEMS

          Indikator:

          blank = Systematik der katalogisierenden Institution
          a     = UDC     (Universal Decimal Classification)
          b     = DDC     (Dewey Decimal Classification)
          c     = LC      (Library of Congress Classification)
          d     = DNB     (Systematik der Deutschen Nationalbibliographie)
          e     = Methode Eppelsheimer
          g     = Regensburger Verbundklassifikation
          h     = Gesamthochschulbibliothekssystematik (GHBS)
          l     = RPB     (Rheinland-Pfaelzische Bibliographie)
          m     = MSC     (Mathematics Subject Classification)
          n     = NWBib   (Nordrhein-Westfaelische Bibliographie)
          o     = ASB     (Allgemeine Systematik f�r Bibliotheken)
          p     = SSD     (Systematik der Stadtbibliothek Duisburg)
          q     = SfB     (Systematik f�r Bibliotheken)
          r     = KAB     (Klassifikation f�r Allgemeinbibliotheken)
          s     = Systematiken der ekz
          t     = Systematik der TUB Muenchen
          u     = DOPAED der UB Erlangen
          v     = IFZ-Systematik
          w     = Systematik der Bayerischen Bibliographie
          z     = ZDB-Systematik


710       SCHLAGWOERTER UND SCHLAGWORTKETTEN

          Indikator:
          blank = nicht aufgegliedert
          a     = Sachschlagwort
          b     = geographisch-ethnographisches Schlagwort
          c     = Personenschlagwort
          d     = Koerperschaftsschlagwort
          f     = Formschlagwort
          z     = Zeitschlagwort


711       SCHLAGWOERTER UND SCHLAGWORTKETTEN NACH ANDERERN REGELWERKEN

          Indikator:
          blank = nicht aufgegliedert
          a     = Sachschlagwort
          b     = geographisch-ethnographisches Schlagwort
          c     = Personenschlagwort
          d     = Koerperschaftsschlagwort
          f     = Formschlagwort
          z     = Zeitschlagwort

          Unterfelder:
          $a    = Schlagwort oder Schlagwortkette
          $v    = Verweisungsformen
          $x    = Regelwerk
          $y    = Herkunft


720       STICHWOERTER

          Indikator:
          blank = nicht aufgegliedert
          a     = Sachbegriff
          b     = geographischer Begriff
          c     = Personenname
          d     = Koerperschaftsname


730       PRECIS

          Indikator:
          blank = nicht definiert


740       SUBJECT HEADINGS

          Indikator:
          p = Personal Name used as Subject
          c = Corporate Body Name used as Subject
          f = Family Name used as Subject
          n = Name and Title used as Subject
          t = Title used as Subject
          s = Topical Name used as Subject
          g = Geographical Name used as Subject
          u = Uncontrolled Subject


750       1. INHALTLICHE ZUSAMMENFASSUNG

          Indikator:
          blank = nicht aufgegliedert
          a     = Auszug
          b     = Zusammenfassung
          c     = Annotation (Untertitel)
          d     = Kurzreferat
          e     = Sammelreferat
          f     = Rezension
          g     = Sammelrezension
          h     = Literaturbericht
          i     = Autorenkurzreferat
          j     = Fremdkurzreferat
          k     = maschinell erstelltes Kurzreferat
          l     = vorlaeufiges Kurzreferat (ekz-aktuell)
          m     = Regest


751       VERFASSER DER 1. INHALTLICHEN ZUSAMMENFASSUNG

          Indikator:
          blank = nicht definiert


752       SPRACHEN DER 1. INHALTLICHEN ZUSAMMENFASSUNG

          Indikator:
          blank = nicht definiert


753       2. INHALTLICHE ZUSAMMENFASSUNG
754       VERFASSER DER 2. INHALTLICHEN ZUSAMMENFASSUNG
755       SPRACHEN DER 2. INHALTLICHEN ZUSAMMENFASSUNG


756       3. INHALTLICHE ZUSAMMENFASSUNG
757       VERFASSER DER 3. INHALTLICHEN ZUSAMMENFASSUNG
758       SPRACHEN DER 3. INHALTLICHEN ZUSAMMENFASSUNG




8--   Segment Nichtstandardmaessige Nebeneintragungen (NE)

800       PERSON DER 1. NE

          Indikator:
          blank = nicht definiert


801       VERWEISUNGSFORM ZUR PERSON DER 1. NE

          Indikator:
          blank = nicht definiert


802       KOERPERSCHAFT DER 1. NE

          Indikator:
          blank = nicht definiert


803       VERWEISUNGSFORM ZUR KOERPERSCHAFT DER 1. NE

          Indikator:
          blank = nicht definiert


804       EINHEITSSACHTITEL DER 1. NE

          Indikator:
          blank = nicht definiert


805       SACHTITEL DER 1. NE

          Indikator:
          a = Ansetzungsform
          b = Mischform


806       PERSON DER 2. NE
807       VERWEISUNGSFORM ZUR PERSON DER 2. NE
808       KOERPERSCHAFT DER 2. NE
809       VERWEISUNGSFORM ZUR KOERPERSCHAFT DER 2. NE
810       EINHEITSSACHTITEL DER 2. NE
811       SACHTITEL DER 2. NE

...

824       PERSON DER 5. NE
825       VERWEISUNGSFORM ZUR PERSON DER 5. NE
826       KOERPERSCHAFT DER 5. NE
827       VERWEISUNGSFORM ZUR KOERPERSCHAFT DER 5. NE
828       EINHEITSSACHTITEL DER 5. NE
829       SACHTITEL DER 5. NE




9--       SEGMENT RSWK-SCHLAGWORTKETTEN

900       IDENTIFIKATIONSNUMMER DER 1. SCHLAGWORTKETTE

          Indikator:
          blank = nicht definiert


902       KETTENGLIED DER 1. SCHLAGWORTKETTE

          Indikator:
          p     = Personenschlagwort
          g     = geographisch-ethnographisches Schlagwort
          s     = Sachschlagwort
          k     = Koerperschaftsschlagwort: Ansetzung unter dem
                  Individualnamen
          c     = Koerperschaftsschlagwort: Ansetzung unter dem
                  Ortssitz
          z     = Zeitschlagwort
          f     = Formschlagwort
          t     = Werktitel als Schlagwort
          blank = Unterschlagwort einer Ansetzungskette


903       PERMUTATIONSMUSTER DER 1. SCHLAGWORTKETTE

          Indikator:
          blank = nicht definiert


904       ERLAEUTERUNGEN ZUR 1. SCHLAGWORTKETTE

          Indikator:
          blank = nicht definiert
          a     = Herkunft / Nutzung


905       IDENTIFIKATIONSNUMMER DER 2. SCHLAGWORTKETTE
907       KETTENGLIED DER 2. SCHLAGWORTKETTE
908       PERMUTATIONSMUSTER DER 2. SCHLAGWORTKETTE
909       ERLAEUTERUNGEN ZUR 2. SCHLAGWORTKETTE

...

945       IDENTIFIKATIONSNUMMER DER 10. SCHLAGWORTKETTE
947       KETTENGLIED DER 10. SCHLAGWORTKETTE
948       PERMUTATIONSMUSTER DER 10. SCHLAGWORTKETTE
949       Erlaeuterungen zur 10. Schlagwortkette
