.class public Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment;
.super Landroid/preference/PreferenceFragment;
.source "PreferencesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/gui/PreferencesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeneralFragment"
.end annotation


# instance fields
.field private onPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 707
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 708
    new-instance v0, Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment$1;

    invoke-direct {v0, p0}, Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment$1;-><init>(Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment;)V

    iput-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment;->onPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 731
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 733
    const v14, 0x7f050003

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment;->addPreferencesFromResource(I)V

    .line 734
    invoke-virtual/range {p0 .. p0}, Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const v15, 0x7f050003

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 737
    new-instance v9, Lme/kuehle/carreport/Preferences;

    invoke-virtual/range {p0 .. p0}, Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v9, v14}, Lme/kuehle/carreport/Preferences;-><init>(Landroid/content/Context;)V

    .line 741
    .local v9, "prefs":Lme/kuehle/carreport/Preferences;
    invoke-static {}, Lme/kuehle/carreport/db/Car;->getAll()[Lme/kuehle/carreport/db/Car;

    move-result-object v2

    .line 742
    .local v2, "cars":[Lme/kuehle/carreport/db/Car;
    array-length v14, v2

    new-array v5, v14, [Ljava/lang/String;

    .line 743
    .local v5, "defaultEntries":[Ljava/lang/String;
    array-length v14, v2

    new-array v6, v14, [Ljava/lang/String;

    .line 744
    .local v6, "defaultEntryValues":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v14, v2

    if-ge v8, v14, :cond_0

    .line 745
    aget-object v14, v2, v8

    invoke-virtual {v14}, Lme/kuehle/carreport/db/Car;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v5, v8

    .line 746
    aget-object v14, v2, v8

    invoke-virtual {v14}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v8

    .line 744
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 748
    :cond_0
    const-string v14, "default_car"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 749
    .local v4, "defaultCar":Landroid/preference/ListPreference;
    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 750
    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 751
    move-object/from16 v0, p0

    iget-object v14, v0, Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment;->onPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v4, v14}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 753
    new-instance v1, Lme/kuehle/carreport/db/Car;

    invoke-virtual {v9}, Lme/kuehle/carreport/Preferences;->getDefaultCar()I

    move-result v14

    invoke-direct {v1, v14}, Lme/kuehle/carreport/db/Car;-><init>(I)V

    .line 754
    .local v1, "car":Lme/kuehle/carreport/db/Car;
    invoke-virtual {v1}, Lme/kuehle/carreport/db/Car;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 759
    invoke-virtual/range {p0 .. p0}, Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/high16 v15, 0x7f070000

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 761
    array-length v14, v5

    new-array v6, v14, [Ljava/lang/String;

    .line 762
    const/4 v8, 0x0

    :goto_1
    array-length v14, v5

    if-ge v8, v14, :cond_1

    .line 763
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v8

    .line 762
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 765
    :cond_1
    const-string v14, "default_report"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    .line 766
    .local v7, "defaultReport":Landroid/preference/ListPreference;
    const/high16 v14, 0x7f070000

    invoke-virtual {v7, v14}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 767
    invoke-virtual {v7, v6}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 768
    move-object/from16 v0, p0

    iget-object v14, v0, Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment;->onPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v7, v14}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 770
    invoke-virtual {v9}, Lme/kuehle/carreport/Preferences;->getDefaultReport()I

    move-result v14

    aget-object v14, v5, v14

    invoke-virtual {v7, v14}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 776
    const-string v14, "default_show_car_menu"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    .line 777
    .local v10, "showCarMenu":Landroid/preference/CheckBoxPreference;
    move-object/from16 v0, p0

    iget-object v14, v0, Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment;->onPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v10, v14}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 783
    const-string v14, "appearance_color_sections"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 784
    .local v3, "colorSections":Landroid/preference/CheckBoxPreference;
    move-object/from16 v0, p0

    iget-object v14, v0, Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment;->onPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v3, v14}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 790
    const-string v14, "appearance_show_legend"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .end local v3    # "colorSections":Landroid/preference/CheckBoxPreference;
    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 791
    .restart local v3    # "colorSections":Landroid/preference/CheckBoxPreference;
    move-object/from16 v0, p0

    iget-object v14, v0, Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment;->onPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v3, v14}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 797
    const-string v14, "unit_currency"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/EditTextPreference;

    .line 798
    .local v11, "unitCurrency":Landroid/preference/EditTextPreference;
    move-object/from16 v0, p0

    iget-object v14, v0, Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment;->onPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v11, v14}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 800
    invoke-virtual {v9}, Lme/kuehle/carreport/Preferences;->getUnitCurrency()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 805
    const-string v14, "unit_volume"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/EditTextPreference;

    .line 806
    .local v13, "unitVolume":Landroid/preference/EditTextPreference;
    move-object/from16 v0, p0

    iget-object v14, v0, Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment;->onPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v13, v14}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 808
    invoke-virtual {v9}, Lme/kuehle/carreport/Preferences;->getUnitVolume()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 813
    const-string v14, "unit_distance"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/EditTextPreference;

    .line 814
    .local v12, "unitDistance":Landroid/preference/EditTextPreference;
    move-object/from16 v0, p0

    iget-object v14, v0, Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment;->onPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v12, v14}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 816
    invoke-virtual {v9}, Lme/kuehle/carreport/Preferences;->getUnitDistance()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 818
    return-void
.end method
