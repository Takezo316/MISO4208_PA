.class Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment$1;
.super Ljava/lang/Object;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment;


# direct methods
.method constructor <init>(Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment;)V
    .locals 0

    .prologue
    .line 708
    iput-object p1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment$1;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 712
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "default_car"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 713
    new-instance v0, Lme/kuehle/carreport/db/Car;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lme/kuehle/carreport/db/Car;-><init>(I)V

    .line 714
    .local v0, "car":Lme/kuehle/carreport/db/Car;
    invoke-virtual {v0}, Lme/kuehle/carreport/db/Car;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 724
    .end local v0    # "car":Lme/kuehle/carreport/db/Car;
    :cond_0
    :goto_0
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v2

    invoke-virtual {v2}, Lme/kuehle/carreport/db/Helper;->dataChanged()V

    .line 725
    const/4 v2, 0x1

    return v2

    .line 715
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "default_report"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 716
    iget-object v2, p0, Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment$1;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment;

    invoke-virtual {v2}, Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f070000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 718
    .local v1, "reports":[Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v2, v1, v2

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 720
    .end local v1    # "reports":[Ljava/lang/String;
    :cond_2
    instance-of v2, p1, Landroid/preference/EditTextPreference;

    if-eqz v2, :cond_0

    .line 721
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
