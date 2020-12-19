.class public Lme/kuehle/carreport/gui/HelpActivity;
.super Landroid/preference/PreferenceActivity;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kuehle/carreport/gui/HelpActivity$1;,
        Lme/kuehle/carreport/gui/HelpActivity$CalculationsFragment;,
        Lme/kuehle/carreport/gui/HelpActivity$TipsFragment;,
        Lme/kuehle/carreport/gui/HelpActivity$GettingStartedFragment;,
        Lme/kuehle/carreport/gui/HelpActivity$HelpFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 112
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
    .line 48
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/high16 v0, 0x7f050000

    invoke-virtual {p0, v0, p1}, Lme/kuehle/carreport/gui/HelpActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 49
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/HelpActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 43
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 44
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 53
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 58
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 55
    :pswitch_0
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/HelpActivity;->finish()V

    .line 56
    const/4 v0, 0x1

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
