
## Parameters provided via config file:

Name			| Value
------------------------|---------
apkPath 		| ../../scripts/apk/me.kuehle.carreport-21-appchive.net.apk
appName 		| me.kuehle.carreport
mutantsFolder 		| ../../scripts/mutantes
extraPath 		| ../../scripts/parameters/extra
operatorsDir 		| ../../scripts/parameters/
multithread 		| false
ignoreDeadCode 		| false
selectionStrategy 	| amountMutants
amountMutants 		| 5
----------------------------------

## Selected Mutation Operators:

Id 		| MutOperatorName
----------------|--------------
1 		| ActivityNotDefined
2 		| DifferentActivityIntentDefinition
3 		| InvalidActivityPATH
4 		| InvalidKeyIntentPutExtra
5 		| InvalidLabel

Amount Selected Operators: 	5

-------------------------------------------

C:\Desarrollos\Testing\MISO4208_PA\bakend_Mutantes\scripts\parameters
> Processing your APK...  
> Wow... that was an amazing APK to proccess!!! :D

--------------------------------------
## Amount of Potential Fault Locations per Mutation Operator

Amount Mutants	| Mutation Operator
----------------|---------------------
4		| INVALID_LABEL
6		| DIFFERENT_ACTIVITY_INTENT_DEFINITION
6		| ACTIVITY_NOT_DEFINED
7		| INVALID_KEY_INTENT_PUT_EXTRA
6		| INVALID_ACTIVITY_PATH


Total Locations: 29

--------------------------------------

## Mutation Process Log

```sh
0 HashCode: 1390432241
Creating folder for mutant 1
Copying app information into mutant 1 folder
Mutant: 1 - Type: INVALID_LABEL
Mutant 1 has survived the mutation process. Now its source code has been modified.
1 HashCode: 416431619
Building mutant 1...
