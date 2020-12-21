.class public Lme/kuehle/carreport/gui/PreferencesActivity;
.super Landroid/preference/PreferenceActivity;
.source "PreferencesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kuehle/carreport/gui/PreferencesActivity$1;,
        Lme/kuehle/carreport/gui/PreferencesActivity$GeneralFragment;,
        Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;,
        Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;,
        Lme/kuehle/carreport/gui/PreferencesActivity$AboutFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 707
    return-void
.end method


# virtual methods
.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 823
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v0, 0x7f050001

    invoke-virtual {p0, v0, p1}, Lme/kuehle/carreport/gui/PreferencesActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 824
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 828
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 829
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/PreferencesActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 830
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 831
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 835
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 840
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 837
    :pswitch_0
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/PreferencesActivity;->finish()V

    .line 838
    const/4 v0, 0x1

    goto :goto_0

    .line 835
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
