
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
1 HashCode: 2135912344
Building mutant 1...
Signing mutant 1...
SUCCESS: The 1 mutant APK has been generated.
Creating folder for mutant 2
Copying app information into mutant 2 folder
Mutant: 2 - Type: DIFFERENT_ACTIVITY_INTENT_DEFINITION
Mutant 2 has survived the mutation process. Now its source code has been modified.
2 HashCode: 582854339
Building mutant 2...
Signing mutant 2...
SUCCESS: The 2 mutant APK has been generated.
Creating folder for mutant 3
Copying app information into mutant 3 folder
Mutant: 3 - Type: ACTIVITY_NOT_DEFINED
Mutant 3 has survived the mutation process. Now its source code has been modified.
3 HashCode: 449016038
Building mutant 3...
Signing mutant 3...
SUCCESS: The 3 mutant APK has been generated.
Creating folder for mutant 4
Copying app information into mutant 4 folder
Mutant: 4 - Type: INVALID_KEY_INTENT_PUT_EXTRA
Mutant 4 has survived the mutation process. Now its source code has been modified.
4 HashCode: -924760440
Building mutant 4...
Signing mutant 4...
SUCCESS: The 4 mutant APK has been generated.
Creating folder for mutant 5
Copying app information into mutant 5 folder
Mutant: 5 - Type: INVALID_ACTIVITY_PATH
Mutant 5 has survived the mutation process. Now its source code has been modified.
5 HashCode: 697209205
Building mutant 5...
Signing mutant 5...
SUCCESS: The 5 mutant APK has been generated.
------------------------------------------------------------------------------------
The maximum id is : 6
The length of hasmap is: 6
------------------------------------------------------------------------------------
```
