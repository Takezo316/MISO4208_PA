.class public Lme/kuehle/carreport/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# instance fields
.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lme/kuehle/carreport/Preferences;->prefs:Landroid/content/SharedPreferences;

    .line 30
    return-void
.end method


# virtual methods
.method public getDefaultCar()I
    .locals 9

    .prologue
    .line 33
    iget-object v6, p0, Lme/kuehle/carreport/Preferences;->prefs:Landroid/content/SharedPreferences;

    const-string v7, "default_car"

    const-string v8, "1"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 34
    .local v4, "id":I
    invoke-static {}, Lme/kuehle/carreport/db/Car;->getAll()[Lme/kuehle/carreport/db/Car;

    move-result-object v2

    .line 35
    .local v2, "cars":[Lme/kuehle/carreport/db/Car;
    move-object v0, v2

    .local v0, "arr$":[Lme/kuehle/carreport/db/Car;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v0, v3

    .line 36
    .local v1, "car":Lme/kuehle/carreport/db/Car;
    invoke-virtual {v1}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v6

    if-ne v6, v4, :cond_0

    .line 40
    .end local v1    # "car":Lme/kuehle/carreport/db/Car;
    .end local v4    # "id":I
    :goto_1
    return v4

    .line 35
    .restart local v1    # "car":Lme/kuehle/carreport/db/Car;
    .restart local v4    # "id":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 40
    .end local v1    # "car":Lme/kuehle/carreport/db/Car;
    :cond_1
    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-virtual {v6}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v4

    goto :goto_1
.end method

.method public getDefaultReport()I
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lme/kuehle/carreport/Preferences;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "default_report"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDropboxAccount()Ljava/lang/String;
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lme/kuehle/carreport/Preferences;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "sync_dropbox_account"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDropboxKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lme/kuehle/carreport/Preferences;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "sync_dropbox_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDropboxLocalRev()Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lme/kuehle/carreport/Preferences;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "sync_dropbox_rev"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDropboxSecret()Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lme/kuehle/carreport/Preferences;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "sync_dropbox_secret"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnitCurrency()Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lme/kuehle/carreport/Preferences;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "unit_currency"

    const-string v2, "EUR"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnitDistance()Ljava/lang/String;
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lme/kuehle/carreport/Preferences;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "unit_distance"

    const-string v2, "km"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnitVolume()Ljava/lang/String;
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lme/kuehle/carreport/Preferences;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "unit_volume"

    const-string v2, "l"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isColorSections()Z
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lme/kuehle/carreport/Preferences;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "appearance_color_sections"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShowCarMenu()Z
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lme/kuehle/carreport/Preferences;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "default_show_car_menu"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShowLegend()Z
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lme/kuehle/carreport/Preferences;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "appearance_show_legend"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSyncOnChange()Z
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lme/kuehle/carreport/Preferences;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "sync_on_change"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSyncOnStart()Z
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lme/kuehle/carreport/Preferences;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "sync_on_start"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setDropboxAccount(Ljava/lang/String;)V
    .locals 2
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v1, p0, Lme/kuehle/carreport/Preferences;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 97
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "sync_dropbox_account"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 99
    return-void
.end method

.method public setDropboxKey(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v1, p0, Lme/kuehle/carreport/Preferences;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 103
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "sync_dropbox_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 105
    return-void
.end method

.method public setDropboxLocalRev(Ljava/lang/String;)V
    .locals 2
    .param p1, "rev"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v1, p0, Lme/kuehle/carreport/Preferences;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 109
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "sync_dropbox_rev"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 111
    return-void
.end method

.method public setDropboxSecret(Ljava/lang/String;)V
    .locals 2
    .param p1, "secret"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v1, p0, Lme/kuehle/carreport/Preferences;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 115
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "sync_dropbox_secret"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 116
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 117
    return-void
.end method
