
## Parameters provided via config file:

Name			| Value
------------------------|---------
apkPath 		| ./apk/me.kuehle.carreport-21-appchive.net.apk
appName 		| me.kuehle.carreport
mutantsFolder 		| ./mutantes
extraPath 		| ./parameters/extra
operatorsDir 		| ./parameters/
multithread 		| true
ignoreDeadCode 		| true
selectionStrategy 	| amountMutants
amountMutants 		| 34
----------------------------------

## Selected Mutation Operators:

Id 		| MutOperatorName
----------------|--------------
22 		| NullMethodCallArgument
23 		| ClosingNullCursor
24 		| InvalidIndexQueryParameter
25 		| InvalidSQLQuery
26 		| ViewComponentNotVisible
27 		| FindViewByIdReturnsNull
28 		| InvalidColor
29 		| InvalidViewFocus
31 		| InvalidIDFindView
10 		| WrongStringResource
32 		| InvalidFilePath
33 		| NullInputStream
12 		| SDKVersion
13 		| LengthyBackEndService
35 		| OOMLargeImage
14 		| LongConnectionTimeOut
36 		| LengthyGUIListener
15 		| BluetoothAdapterAlwaysEnabled
37 		| NullOutputStream
16 		| NullBluetoothAdapter
38 		| LengthyGUICreation
17 		| InvalidURI
18 		| NullGPSLocation
19 		| InvalidDate
1 		| ActivityNotDefined
2 		| DifferentActivityIntentDefinition
3 		| InvalidActivityPATH
4 		| InvalidKeyIntentPutExtra
5 		| InvalidLabel
6 		| NullIntent
7 		| NullValueIntentPutExtra
8 		| WrongMainActivity
9 		| MissingPermissionManifest
20 		| NullBackEndServiceReturn

Amount Selected Operators: 	34

-------------------------------------------

C:\Desarrollos\Testing\MISO4208_PA\bakend_Mutantes\scripts\parameters
> Processing your APK...  
> Wow... that was an amazing APK to proccess!!! :D

--------------------------------------
## Call Graph Results

Method Type			| Amount
----------------|---------
NotDefinedButCalled			| 467
CalledAndDefined			| 641
DeadCode			| 193

----------------------------------
Lme/kuehle/carreport/reports/FuelConsumptionReport;
	getGraphOptions()[
	getCalculationOptions()[
	getChart(I)Lme/kuehle/chartlib/chart/Chart;
Lme/kuehle/carreport/reports/AbstractReport$1;
	formatLabel(D)Ljava/lang/String;
Lme/kuehle/carreport/gui/AbstractDataDetailFragment;
	saveSuccess()V
	onDialogNegativeClick(I)V
	onActivityCreated(Landroid/os/Bundle;)V
	getDateTime(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
	onDialogPositiveClick(I)V
	onAttach(Landroid/app/Activity;)V
	onDestroyView()V
	onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
	getDoubleFromEditText(Landroid/widget/EditText;D)D
	getIntegerFromEditText(Landroid/widget/EditText;I)I
Lme/kuehle/carreport/util/gui/TimePickerDialogFragment;
	onTimeSet(Landroid/widget/TimePicker;II)V
Lme/kuehle/carreport/gui/DataListFragment$DataListAdapter;
	getItem(I)Ljava/lang/Object;
	getItemId(I)J
Lme/kuehle/carreport/gui/DataListActivity;
	itemSaved()V
	itemDeleted()V
Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarMultiChoiceModeListener;
	onDestroyActionMode(Landroid/view/ActionMode;)V
	onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
	onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
	onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
	onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
Lme/kuehle/carreport/util/Strings;
	concat([Ljava/lang/String;)Ljava/lang/String;
Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;
	onStop()V
	onDialogNegativeClick(I)V
	onActivityCreated(Landroid/os/Bundle;)V
	onDialogPositiveClick(I)V
Lme/kuehle/carreport/reports/FuelPriceReport;
	getGraphOptions()[
	getCalculationOptions()[
	getChart(I)Lme/kuehle/chartlib/chart/Chart;
Lme/kuehle/carreport/util/gui/SimpleAnimator$3;
	onAnimationCancel(Landroid/animation/Animator;)V
	onAnimationStart(Landroid/animation/Animator;)V
	onAnimationRepeat(Landroid/animation/Animator;)V
	onAnimationEnd(Landroid/animation/Animator;)V
Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;
	onDialogNegativeClick(I)V
	onDialogPositiveClick(I)V
Lme/kuehle/carreport/reports/MileageReport$1;
	onSeriesClick(II)V
Lme/kuehle/carreport/util/gui/DatePickerDialogFragment;
	onDateSet(Landroid/widget/DatePicker;III)V
Lme/kuehle/carreport/gui/ReportActivity$1;
	synchronizationStarted()V
	synchronizationFinished(Z)V
Lme/kuehle/carreport/util/CSVWriter;
	write(Landroid/database/Cursor;Landroid/util/SparseArray;)V
Lme/kuehle/carreport/util/gui/InputDialogFragment;
	newInstance(Landroid/app/Fragment;ILjava/lang/Integer;Ljava/lang/String;)Lme/kuehle/carreport/util/gui/InputDialogFragment;
Lme/kuehle/carreport/gui/PreferencesActivity$AboutFragment;
	onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
Lme/kuehle/carreport/gui/HelpActivity$TipsFragment;
	getHelpId()I
	onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;
	setHint1(Ljava/lang/String;)V
	setName(Ljava/lang/String;)V
Lme/kuehle/carreport/db/FuelType;
	getCar()Lme/kuehle/carreport/db/Car;
Lme/kuehle/carreport/reports/FuelConsumptionReport$CalculableItem;
	applyCalculation(DI)V
Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;
	getToastSavedMessage()I
	getTitleForEdit()I
	fillFields(Landroid/view/View;)V
	onDialogPositiveClick(ILjava/util/Date;)V
	initFields(Landroid/view/View;)V
	getAlertDeleteMessage()I
	getLayout()I
	getTitleForNew()I
	save()V
	getToastDeletedMessage()I
	validationSuccessfull()V
	getEditObject(I)Lme/kuehle/carreport/db/AbstractItem;
Lme/kuehle/carreport/reports/FuelPriceReport$1;
	onSeriesClick(II)V
Lme/kuehle/carreport/gui/DataListFragment$RefuelingsTabHelper;
	getTag()Ljava/lang/String;
	getIndicator()I
	updateItems(Lme/kuehle/carreport/db/Car;)V
	updateListAdapter()V
	getAlertDeleteManyMessage()I
	getExtraEdit()I
Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;
	values()[
	valueOf(Ljava/lang/String;)Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;
Lme/kuehle/carreport/reports/FuelConsumptionReport$1;
	onSeriesClick(II)V
Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;
	setStick(I)V
	setColor(I)V
	hashCode()I
	equals(Ljava/lang/Object;)Z
	removeItem(Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;)V
	compareTo(Ljava/lang/Object;)I
Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;
	values()[
	valueOf(Ljava/lang/String;)Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;
Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarAdapter;
	getItem(I)Ljava/lang/Object;
	getItemId(I)J
Lme/kuehle/carreport/gui/ReportActivity$2;
	onNavigationItemSelected(IJ)Z
Lme/kuehle/carreport/reports/AbstractReportGraphData;
	isEmpty()Z
Lme/kuehle/carreport/gui/DataListFragment$4;
	onNavigationItemSelected(IJ)Z
Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$2;
	action(Ljava/lang/Object;)V
Lme/kuehle/carreport/gui/DataListFragment$OtherCostsTabHelper;
	getTag()Ljava/lang/String;
	getIndicator()I
	updateItems(Lme/kuehle/carreport/db/Car;)V
	updateListAdapter()V
	getAlertDeleteManyMessage()I
	getExtraEdit()I
Lme/kuehle/carreport/db/AbstractItem;
	isDeleted()Z
Lme/kuehle/carreport/gui/ReportActivity$3$1;
	beforeTextChanged(Ljava/lang/CharSequence;III)V
	onTextChanged(Ljava/lang/CharSequence;III)V
	afterTextChanged(Landroid/text/Editable;)V
Lme/kuehle/carreport/gui/DataListFragment;
	onDialogNegativeClick(I)V
	onDetach()V
	onDialogPositiveClick(I)V
	onAttach(Landroid/app/Activity;)V
	onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
Lme/kuehle/carreport/gui/DataDetailCarFragment$5;
	onCheckedChanged(Landroid/widget/CompoundButton;Z)V
Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;
	compareTo(Ljava/lang/Object;)I
	setValue(Ljava/lang/String;)V
Lme/kuehle/carreport/reports/CostsReport;
	getGraphOptions()[
	getCalculationOptions()[
	getChart(I)Lme/kuehle/chartlib/chart/Chart;
Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$6;
	authenticationFinished(ZLjava/lang/String;Z)V
Lme/kuehle/carreport/gui/PreferencesActivity;
	onBuildHeaders(Ljava/util/List;)V
Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment$1;
	onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
Lme/kuehle/carreport/util/CSVReader;
	getLong(ILjava/lang/String;)J
	getLong(II)J
	getInt(II)I
	getDate(IILjava/text/DateFormat;)Ljava/util/Date;
	getFloat(II)F
	getColumnCount()I
	getData()[[
Lme/kuehle/carreport/reports/AbstractReportGraphData$RegressionReportData;
	applySeriesStyle(ILme/kuehle/chartlib/renderer/AbstractRenderer;)V
Lme/kuehle/carreport/reports/CostsReport$CalculableItem;
	applyCalculation(DI)V
Lme/kuehle/carreport/gui/ReportActivity$3;
	onDestroyActionMode(Landroid/view/ActionMode;)V
	onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
	onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
	onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
Lme/kuehle/carreport/util/gui/SimpleAnimator$1;
	onAnimationUpdate(Landroid/animation/ValueAnimator;)V
Lme/kuehle/carreport/gui/DataListFragment$3;
	onDestroyActionMode(Landroid/view/ActionMode;)V
	onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
	onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
	onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
	onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
Lme/kuehle/carreport/util/DemoData;
	addDemoData()V
Lme/kuehle/carreport/gui/DataDetailActivity;
	itemSaved()V
	itemCanceled()V
	itemDeleted()V
Lme/kuehle/carreport/reports/AbstractReport;
	addData(Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;)V
	getDateFormatPattern()Ljava/lang/String;
	applyDefaultChartStyles(Lme/kuehle/chartlib/chart/Chart;)V
	addDataSection(Ljava/lang/String;I)Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;
Lme/kuehle/carreport/gui/ReportActivity;
	onMenuItemClick(Landroid/view/MenuItem;)Z
	onPrepareOptionsMenu(Landroid/view/Menu;)Z
	onPause()V
	showReportOptions(Landroid/view/View;)V
Lme/kuehle/carreport/util/gui/MessageDialogFragment$1;
	onDialogNegativeClick(I)V
	onDialogPositiveClick(I)V
Lme/kuehle/carreport/gui/HelpActivity;
	onBuildHeaders(Ljava/util/List;)V
Lme/kuehle/carreport/reports/FuelPriceReport$CalculableItem;
	applyCalculation(DI)V
Lme/kuehle/carreport/gui/DataListActivity$1;
	onBackStackChanged()V
Lme/kuehle/carreport/gui/DataDetailCarFragment;
	getToastSavedMessage()I
	onDialogPositiveClick(II)V
	onDialogPositiveClick(ILjava/util/Date;)V
	initFields(Landroid/view/View;)V
	getLayout()I
	getTitleForNew()I
	getToastDeletedMessage()I
	validationSuccessfull()V
	getTitleForEdit()I
	fillFields(Landroid/view/View;)V
	onDialogNegativeClick(I)V
	getAlertDeleteMessage()I
	save()V
	getEditObject(I)Lme/kuehle/carreport/db/AbstractItem;
Lme/kuehle/carreport/gui/HelpActivity$CalculationsFragment;
	getHelpId()I
	onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
Lme/kuehle/carreport/util/RecurrenceInterval;
	valueOf(Ljava/lang/String;)Lme/kuehle/carreport/util/RecurrenceInterval;
Lme/kuehle/carreport/reports/CostsReport$1;
	formatLabel(D)Ljava/lang/String;
Lme/kuehle/carreport/db/Refueling;
	getFirst()Lme/kuehle/carreport/db/Refueling;
	getLast()Lme/kuehle/carreport/db/Refueling;
Lme/kuehle/carreport/db/Helper;
	onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
	onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
	finalize()V
Lme/kuehle/carreport/gui/HelpActivity$GettingStartedFragment;
	getHelpId()I
	onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
Lme/kuehle/carreport/reports/MileageReport;
	getGraphOptions()[
	getCalculationOptions()[
	getChart(I)Lme/kuehle/chartlib/chart/Chart;
Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;
	setLabel(Ljava/lang/String;)V
Lme/kuehle/carreport/util/backup/BackupAgent;
	onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
	onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
Lme/kuehle/carreport/util/gui/SimpleAnimator$2;
	onAnimationUpdate(Landroid/animation/ValueAnimator;)V
Lme/kuehle/carreport/util/gui/SectionListAdapter;
	getItem(I)Ljava/lang/Object;
	getItemId(I)J
Lme/kuehle/carreport/gui/DataDetailOtherFragment;
	getToastSavedMessage()I
	getTitleForEdit()I
	fillFields(Landroid/view/View;)V
	onDialogPositiveClick(ILjava/util/Date;)V
	initFields(Landroid/view/View;)V
	getAlertDeleteMessage()I
	getLayout()I
	getTitleForNew()I
	save()V
	getToastDeletedMessage()I
	validationSuccessfull()V
	getEditObject(I)Lme/kuehle/carreport/db/AbstractItem;

> It took 47 miliseconds to remove dead code from APK analysis.
## Amount of Potential Fault Locations per Mutation Operator

Amount Mutants	| Mutation Operator
----------------|---------------------
163		| WRONG_STRING_RESOURCE
5		| INVALID_VIEW_FOCUS
6		| ACTIVITY_NOT_DEFINED
8		| INVALID_DATE
6		| NULL_INTENT
7		| INVALID_KEY_INTENT_PUT_EXTRA
9		| LENGTHY_GUI_CREATION
4		| INVALID_LABEL
4		| NULL_INPUT_STREAM
24		| FINDVIEWBYID_RETURNS_NULL
2		| MISSING_PERMISSION_MANIFEST
9		| LENGTHY_GUI_LISTENER
3		| INVALID_FILE_PATH
7		| NULL_VALUE_INTENT_PUT_EXTRA
0		| SDK_VERSION
5		| VIEW_COMPONENT_NOT_VISIBLE
2079		| NULL_METHOD_CALL_ARGUMENT
24		| INVALID_ID_FINDVIEW
24		| CLOSING_NULL_CURSOR
5		| NULL_OUTPUT_STREAM
6		| INVALID_ACTIVITY_PATH
1		| WRONG_MAIN_ACTIVITY
8		| INVALID_INDEX_QUERY_PARAMETER
6		| DIFFERENT_ACTIVITY_INTENT_DEFINITION
8		| INVALID_SQL_QUERY
0		| INVALID_COLOR


Total Locations: 2423

--------------------------------------

## Mutation Process Log

```sh
0 HashCode: 1390432241
Mutant: 1 - WrongStringResource
Creating folder for mutant 1
Copying app information into mutant 1 folder
Mutant: 2 - InvalidViewFocus
Creating folder for mutant 2
Copying app information into mutant 2 folder
Mutant 1 has survived the mutation process. Now its source code has been modified.
1 HashCode: -1769384940
Building mutant 1...
Mutant: 3 - MissingPermissionManifest
Creating folder for mutant 3
Copying app information into mutant 3 folder
Mutant 2 has survived the mutation process. Now its source code has been modified.
2 HashCode: -1989353103
Building mutant 2...
Mutant: 4 - LengthyGUIListener
Creating folder for mutant 4
Copying app information into mutant 4 folder
Mutant 3 has survived the mutation process. Now its source code has been modified.
3 HashCode: -2040108413
Building mutant 3...
Mutant: 5 - InvalidFilePath
Creating folder for mutant 5
Copying app information into mutant 5 folder
Mutant 4 has survived the mutation process. Now its source code has been modified.
4 HashCode: 978099735
Building mutant 4...
Mutant: 6 - ActivityNotDefined
Creating folder for mutant 6
Copying app information into mutant 6 folder
Mutant 5 has survived the mutation process. Now its source code has been modified.
Signing mutant 1...
5 HashCode: -1132789450
Building mutant 5...
Mutant: 7 - InvalidDate
Creating folder for mutant 7
Copying app information into mutant 7 folder
Mutant 6 has survived the mutation process. Now its source code has been modified.
6 HashCode: 449016038
Building mutant 6...
Signing mutant 2...
SUCCESS: The 1 mutant APK has been generated.
Mutant: 8 - NullIntent
Creating folder for mutant 8
Copying app information into mutant 8 folder
Mutant 7 has survived the mutation process. Now its source code has been modified.
7 HashCode: 936518360
Building mutant 7...
Mutant: 9 - NullValueIntentPutExtra
Creating folder for mutant 9
Copying app information into mutant 9 folder
Mutant 8 has survived the mutation process. Now its source code has been modified.
SUCCESS: The 2 mutant APK has been generated.
Signing mutant 3...
8 HashCode: -1698357258
Building mutant 8...
Mutant: 10 - InvalidKeyIntentPutExtra
Creating folder for mutant 10
Copying app information into mutant 10 folder
Mutant 9 has survived the mutation process. Now its source code has been modified.
Signing mutant 4...
9 HashCode: 1557706280
Building mutant 9...
Signing mutant 5...
SUCCESS: The 3 mutant APK has been generated.
Mutant: 11 - ViewComponentNotVisible
Creating folder for mutant 11
Copying app information into mutant 11 folder
Mutant 10 has survived the mutation process. Now its source code has been modified.
SUCCESS: The 4 mutant APK has been generated.
10 HashCode: -433902890
Building mutant 10...
Signing mutant 6...
Mutant: 12 - NullMethodCallArgument
Creating folder for mutant 12
Copying app information into mutant 12 folder
SUCCESS: The 5 mutant APK has been generated.
Mutant 11 has survived the mutation process. Now its source code has been modified.
Signing mutant 7...
11 HashCode: 519169722
Building mutant 11...
Mutant: 13 - InvalidIDFindView
Creating folder for mutant 13
Copying app information into mutant 13 folder
Mutant 12 has survived the mutation process. Now its source code has been modified.
SUCCESS: The 6 mutant APK has been generated.
Signing mutant 8...
12 HashCode: -772983715
Building mutant 12...
SUCCESS: The 7 mutant APK has been generated.
Mutant: 14 - ClosingNullCursor
Creating folder for mutant 14
Copying app information into mutant 14 folder
Mutant 13 has survived the mutation process. Now its source code has been modified.
SUCCESS: The 8 mutant APK has been generated.
Signing mutant 9...
13 HashCode: 317649857
Building mutant 13...
Mutant: 15 - NullOutputStream
Creating folder for mutant 15
Copying app information into mutant 15 folder
Mutant 14 has survived the mutation process. Now its source code has been modified.
Signing mutant 10...
14 HashCode: -1947870876
Building mutant 14...
SUCCESS: The 9 mutant APK has been generated.
Mutant: 16 - LengthyGUICreation
Creating folder for mutant 16
Copying app information into mutant 16 folder
Mutant 15 has survived the mutation process. Now its source code has been modified.
15 HashCode: 1250063022
Building mutant 15...
SUCCESS: The 10 mutant APK has been generated.
Signing mutant 11...
Mutant: 17 - InvalidLabel
Creating folder for mutant 17
Copying app information into mutant 17 folder
Mutant 16 has survived the mutation process. Now its source code has been modified.
16 HashCode: 1541302867
Building mutant 16...
Signing mutant 12...
Mutant: 18 - NullInputStream
Creating folder for mutant 18
Copying app information into mutant 18 folder
Mutant 17 has survived the mutation process. Now its source code has been modified.
SUCCESS: The 11 mutant APK has been generated.
17 HashCode: -1330237891
Building mutant 17...
Signing mutant 13...
SUCCESS: The 12 mutant APK has been generated.
Mutant: 19 - InvalidActivityPATH
Creating folder for mutant 19
Copying app information into mutant 19 folder
Mutant 18 has survived the mutation process. Now its source code has been modified.
Signing mutant 14...
18 HashCode: 1391257039
Building mutant 18...
Mutant: 20 - WrongMainActivity
Creating folder for mutant 20
Copying app information into mutant 20 folder
Mutant 19 has survived the mutation process. Now its source code has been modified.
SUCCESS: The 13 mutant APK has been generated.
19 HashCode: -1927835055
Building mutant 19...
SUCCESS: The 14 mutant APK has been generated.
Signing mutant 15...
Mutant: 21 - FindViewByIdReturnsNull
Creating folder for mutant 21
Copying app information into mutant 21 folder
Mutant 20 has survived the mutation process. Now its source code has been modified.
20 HashCode: -223990873
Building mutant 20...
Signing mutant 16...
Mutant: 22 - InvalidIndexQueryParameter
Creating folder for mutant 22
Copying app information into mutant 22 folder
Mutant 21 has survived the mutation process. Now its source code has been modified.
SUCCESS: The 15 mutant APK has been generated.
Signing mutant 17...
21 HashCode: -1659658703
Building mutant 21...
Mutant: 23 - DifferentActivityIntentDefinition
Creating folder for mutant 23
Copying app information into mutant 23 folder
Mutant 22 has survived the mutation process. Now its source code has been modified.
SUCCESS: The 16 mutant APK has been generated.
22 HashCode: -321182469
Building mutant 22...
SUCCESS: The 17 mutant APK has been generated.
Mutant: 24 - InvalidSQLQuery
Creating folder for mutant 24
Copying app information into mutant 24 folder
Mutant 23 has survived the mutation process. Now its source code has been modified.
Signing mutant 18...
23 HashCode: -1363305462
Building mutant 23...
Signing mutant 19...
Mutant: 25 - WrongStringResource
Creating folder for mutant 25
Copying app information into mutant 25 folder
Mutant 24 has survived the mutation process. Now its source code has been modified.
SUCCESS: The 18 mutant APK has been generated.
Signing mutant 20...
24 HashCode: 1292353378
Building mutant 24...
Mutant: 26 - WrongStringResource
Creating folder for mutant 26
Copying app information into mutant 26 folder
Mutant 25 has survived the mutation process. Now its source code has been modified.
SUCCESS: The 19 mutant APK has been generated.
25 HashCode: 1731341120
Building mutant 25...
Signing mutant 21...
Mutant: 27 - WrongStringResource
Creating folder for mutant 27
Copying app information into mutant 27 folder
Mutant 26 has survived the mutation process. Now its source code has been modified.
SUCCESS: The 20 mutant APK has been generated.
26 HashCode: 98211169
Building mutant 26...
Signing mutant 22...
Mutant: 28 - WrongStringResource
Creating folder for mutant 28
Copying app information into mutant 28 folder
Mutant 27 has survived the mutation process. Now its source code has been modified.
SUCCESS: The 21 mutant APK has been generated.
27 HashCode: -790451909
Building mutant 27...
Signing mutant 23...
Mutant: 29 - WrongStringResource
Creating folder for mutant 29
Copying app information into mutant 29 folder
Mutant 28 has survived the mutation process. Now its source code has been modified.
SUCCESS: The 22 mutant APK has been generated.
28 HashCode: -908122185
Building mutant 28...
Mutant: 30 - WrongStringResource
Creating folder for mutant 30
Copying app information into mutant 30 folder
Mutant 29 has survived the mutation process. Now its source code has been modified.
Signing mutant 24...
SUCCESS: The 23 mutant APK has been generated.
29 HashCode: -1547210082
Building mutant 29...
Signing mutant 25...
Mutant: 31 - WrongStringResource
Creating folder for mutant 31
Copying app information into mutant 31 folder
Mutant 30 has survived the mutation process. Now its source code has been modified.
SUCCESS: The 24 mutant APK has been generated.
30 HashCode: 1683270963
Building mutant 30...
Mutant: 32 - WrongStringResource
Creating folder for mutant 32
Copying app information into mutant 32 folder
Mutant 31 has survived the mutation process. Now its source code has been modified.
Signing mutant 26...
SUCCESS: The 25 mutant APK has been generated.
31 HashCode: 1170908182
Building mutant 31...
Signing mutant 27...
Mutant: 33 - WrongStringResource
Creating folder for mutant 33
Copying app information into mutant 33 folder
Mutant 32 has survived the mutation process. Now its source code has been modified.
32 HashCode: -65190451
Building mutant 32...
SUCCESS: The 26 mutant APK has been generated.
Mutant: 34 - WrongStringResource
Creating folder for mutant 34
Copying app information into mutant 34 folder
Mutant 33 has survived the mutation process. Now its source code has been modified.
Signing mutant 28...
SUCCESS: The 27 mutant APK has been generated.
33 HashCode: 1124754265
Building mutant 33...
Signing mutant 29...
------------------------------------------------------------------------------------
The length of hasmap is: 34
------------------------------------------------------------------------------------
```
Mutant 34 has survived the mutation process. Now its source code has been modified.
SUCCESS: The 28 mutant APK has been generated.
34 HashCode: 595890836
Building mutant 34...
Signing mutant 30...
SUCCESS: The 29 mutant APK has been generated.
Signing mutant 31...
SUCCESS: The 30 mutant APK has been generated.
SUCCESS: The 31 mutant APK has been generated.
Signing mutant 32...
Signing mutant 33...
SUCCESS: The 32 mutant APK has been generated.
Signing mutant 34...
SUCCESS: The 33 mutant APK has been generated.
SUCCESS: The 34 mutant APK has been generated.
