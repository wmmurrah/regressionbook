﻿* Encoding: UTF-8.
cd "C:\Users\wmm0017\projects\AU\RegressionBook".

DATA LIST FILE= "data/prestige.sav"  free (",")
/ occupatn educatin income women prestige census type  .

VARIABLE LABELS
occupatn "occupation" 
 educatin "education" 
 income "income" 
 women "women" 
 prestige "prestige" 
 census "census" 
 type "type" 
 .

VALUE LABELS
/
occupatn 
1 "ACCOUNTANTS" 
 2 "AIRCRAFT.REPAIRMEN" 
 3 "AIRCRAFT.WORKERS" 
 4 "ARCHITECTS" 
 5 "ATHLETES" 
 6 "AUTO.REPAIRMEN" 
 7 "AUTO.WORKERS" 
 8 "BABYSITTERS" 
 9 "BAKERS" 
 10 "BARTENDERS" 
 11 "BIOLOGISTS" 
 12 "BOOKBINDERS" 
 13 "BOOKKEEPERS" 
 14 "BUS.DRIVERS" 
 15 "BUYERS" 
 16 "CANNERS" 
 17 "CARPENTERS" 
 18 "CHEMISTS" 
 19 "CIVIL.ENGINEERS" 
 20 "CLAIM.ADJUSTORS" 
 21 "COLLECTORS" 
 22 "COMMERCIAL.ARTISTS" 
 23 "COMMERCIAL.TRAVELLERS" 
 24 "COMPUTER.OPERATORS" 
 25 "COMPUTER.PROGRAMERS" 
 26 "CONSTRUCTION.FOREMEN" 
 27 "CONSTRUCTION.LABOURERS" 
 28 "COOKS" 
 29 "DRAUGHTSMEN" 
 30 "ECONOMISTS" 
 31 "ELECTRICAL.LINEMEN" 
 32 "ELECTRICIANS" 
 33 "ELECTRONIC.WORKERS" 
 34 "ELEVATOR.OPERATORS" 
 35 "FARM.WORKERS" 
 36 "FARMERS" 
 37 "FILE.CLERKS" 
 38 "FIREFIGHTERS" 
 39 "FUNERAL.DIRECTORS" 
 40 "GENERAL.MANAGERS" 
 41 "GOV.ADMINISTRATORS" 
 42 "HOUSE.PAINTERS" 
 43 "INSURANCE..AGENTS" 
 44 "JANITORS" 
 45 "LAUNDERERS" 
 46 "LAWYERS" 
 47 "LIBRARIANS" 
 48 "LONGSHOREMEN" 
 49 "MACHINISTS" 
 50 "MAIL.CARRIERS" 
 51 "MASONS" 
 52 "MEDICAL.TECHNICIANS" 
 53 "MINING.ENGINEERS" 
 54 "MINISTERS" 
 55 "NEWSBOYS" 
 56 "NURSES" 
 57 "NURSING.AIDES" 
 58 "OFFICE.CLERKS" 
 59 "OSTEOPATHS.CHIROPRACTORS" 
 60 "PHARMACISTS" 
 61 "PHYSICIANS" 
 62 "PHYSICISTS" 
 63 "PHYSIO.THERAPSTS" 
 64 "PILOTS" 
 65 "PLUMBERS" 
 66 "POLICEMEN" 
 67 "POSTAL.CLERKS" 
 68 "PRIMARY.SCHOOL.TEACHERS" 
 69 "PSYCHOLOGISTS" 
 70 "PURCHASING.OFFICERS" 
 71 "RADIO.TV.ANNOUNCERS" 
 72 "RADIO.TV.REPAIRMEN" 
 73 "RAILWAY.SECTIONMEN" 
 74 "REAL.ESTATE.SALESMEN" 
 75 "RECEPTIONSTS" 
 76 "ROTARY.WELL.DRILLERS" 
 77 "SALES.CLERKS" 
 78 "SALES.SUPERVISORS" 
 79 "SECONDARY.SCHOOL.TEACHERS" 
 80 "SECRETARIES" 
 81 "SERVICE.STATION.ATTENDANT" 
 82 "SEWING.MACH.OPERATORS" 
 83 "SHEET.METAL.WORKERS" 
 84 "SHIPPING.CLERKS" 
 85 "SLAUGHTERERS.1" 
 86 "SLAUGHTERERS.2" 
 87 "SOCIAL.WORKERS" 
 88 "SURVEYORS" 
 89 "TAXI.DRIVERS" 
 90 "TELEPHONE.OPERATORS" 
 91 "TELLERS.CASHIERS" 
 92 "TEXTILE.LABOURERS" 
 93 "TEXTILE.WEAVERS" 
 94 "TOOL.DIE.MAKERS" 
 95 "TRAIN.ENGINEERS" 
 96 "TRAVEL.CLERKS" 
 97 "TYPESETTERS" 
 98 "TYPISTS" 
 99 "UNIVERSITY.TEACHERS" 
 100 "VETERINARIANS" 
 101 "VOCATIONAL.COUNSELLORS" 
 102 "WELDERS" 
/
type 
1 "bc" 
 2 "prof" 
 3 "wc" 
.

EXECUTE.


*Dummy code type.
SPSSINC CREATE DUMMIES VARIABLE=type 
ROOTNAME1=type 
/OPTIONS ORDER=A USEVALUELABELS=YES USEML=YES OMITFIRST=NO.
