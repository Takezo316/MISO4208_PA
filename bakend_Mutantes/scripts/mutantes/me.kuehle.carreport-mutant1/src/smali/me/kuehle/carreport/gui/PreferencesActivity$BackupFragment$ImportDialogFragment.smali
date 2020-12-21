.class public Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ImportDialogFragment;
.super Landroid/app/DialogFragment;
.source "PreferencesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImportDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/app/Fragment;)Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ImportDialogFragment;
    .locals 2
    .param p0, "parent"    # Landroid/app/Fragment;

    .prologue
    .line 179
    new-instance v0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ImportDialogFragment;

    invoke-direct {v0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ImportDialogFragment;-><init>()V

    .line 180
    .local v0, "f":Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ImportDialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ImportDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 181
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 186
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ImportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 187
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030007

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 189
    .local v1, "view":Landroid/view/View;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ImportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090093

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09004b

    new-instance v4, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ImportDialogFragment$1;

    invoke-direct {v4, p0, v1}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ImportDialogFragment$1;-><init>(Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ImportDialogFragment;Landroid/view/View;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
