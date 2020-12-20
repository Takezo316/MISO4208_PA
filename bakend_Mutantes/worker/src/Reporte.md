
## Parameters provided via config file:

Name			| Value
------------------------|---------
apkPath 		| ../../scripts/apk/me.kuehle.carreport-21-appchive.net.apk
appName 		| me.kuehle.carreport
mutantsFolder 		| ../../scripts/mutantes
extraPath 		| ../../scripts/parameters/extra
operatorsDir 		| ../../scripts/parameters/
multithread 		| true
ignoreDeadCode 		| true
selectionStrategy 	| amountMutants
amountMutants 		| 1
----------------------------------

## Selected Mutation Operators:

Id 		| MutOperatorName
----------------|--------------
1 		| ActivityNotDefined

Amount Selected Operators: 	1

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

> It took 35 miliseconds to remove dead code from APK analysis.
## Amount of Potential Fault Locations per Mutation Operator

Amount Mutants	| Mutation Operator
----------------|---------------------
6		| ACTIVITY_NOT_DEFINED


Total Locations: 6

--------------------------------------

## Mutation Process Log

```sh
0 HashCode: 1390432241
Mutant: 1 - ActivityNotDefined
Creating folder for mutant 1
Copying app information into mutant 1 folder
------------------------------------------------------------------------------------
The length of hasmap is: 1
------------------------------------------------------------------------------------
```
Mutant 1 has survived the mutation process. Now its source code has been modified.
1 HashCode: 449016038
Building mutant 1...
Signing mutant 1...
SUCCESS: The 1 mutant APK has been generated.
