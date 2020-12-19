.class Lme/kuehle/carreport/gui/PreferencesActivity$AboutFragment$1;
.super Ljava/lang/Object;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/gui/PreferencesActivity$AboutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/kuehle/carreport/gui/PreferencesActivity$AboutFragment;


# direct methods
.method constructor <init>(Lme/kuehle/carreport/gui/PreferencesActivity$AboutFragment;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$AboutFragment$1;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$AboutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method private delay()V
    .locals 2

    .line 332
    const-wide/16 v0, 0x2710

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 336
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-direct/range {p0 .. p0}, Lme/kuehle/carreport/gui/PreferencesActivity$AboutFragment$1;->delay()V
    .line 110
    invoke-static {}, Lme/kuehle/carreport/gui/PreferencesActivity$AboutFragment$LicenseDialogFragment;->newInstance()Lme/kuehle/carreport/gui/PreferencesActivity$AboutFragment$LicenseDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$AboutFragment$1;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$AboutFragment;

    invoke-virtual {v1}, Lme/kuehle/carreport/gui/PreferencesActivity$AboutFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lme/kuehle/carreport/gui/PreferencesActivity$AboutFragment$LicenseDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 112
    return-void
.end method
