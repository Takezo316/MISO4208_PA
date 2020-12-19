.class public Lme/kuehle/carreport/util/gui/ProgressDialogFragment;
.super Landroid/app/DialogFragment;
.source "ProgressDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lme/kuehle/carreport/util/gui/ProgressDialogFragment;
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 26
    new-instance v1, Lme/kuehle/carreport/util/gui/ProgressDialogFragment;

    invoke-direct {v1}, Lme/kuehle/carreport/util/gui/ProgressDialogFragment;-><init>()V

    .line 27
    .local v1, "f":Lme/kuehle/carreport/util/gui/ProgressDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 28
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "message"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1, v0}, Lme/kuehle/carreport/util/gui/ProgressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 30
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-virtual {p0}, Lme/kuehle/carreport/util/gui/ProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 37
    .local v0, "args":Landroid/os/Bundle;
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lme/kuehle/carreport/util/gui/ProgressDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 38
    .local v1, "progressDialog":Landroid/app/ProgressDialog;
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 39
    const-string v2, "message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 41
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 43
    return-object v1
.end method
