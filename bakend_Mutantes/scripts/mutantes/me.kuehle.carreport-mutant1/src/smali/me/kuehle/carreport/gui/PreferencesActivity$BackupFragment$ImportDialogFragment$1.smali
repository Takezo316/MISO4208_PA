.class Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ImportDialogFragment$1;
.super Ljava/lang/Object;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ImportDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ImportDialogFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ImportDialogFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ImportDialogFragment$1;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ImportDialogFragment;

    iput-object p2, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ImportDialogFragment$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 197
    iget-object v1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ImportDialogFragment$1;->val$view:Landroid/view/View;

    const v2, 0x7f0c0009

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 200
    .local v0, "option":I
    iget-object v1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ImportDialogFragment$1;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ImportDialogFragment;

    invoke-virtual {v1}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ImportDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;

    invoke-static {v1, v0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->access$100(Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;I)V

    .line 202
    return-void
.end method
