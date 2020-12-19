.class Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ExportDialogFragment$1;
.super Ljava/lang/Object;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ExportDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ExportDialogFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ExportDialogFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ExportDialogFragment$1;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ExportDialogFragment;

    iput-object p2, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ExportDialogFragment$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 162
    iget-object v2, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ExportDialogFragment$1;->val$view:Landroid/view/View;

    const v3, 0x7f0c0009

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 165
    .local v0, "option":I
    iget-object v2, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ExportDialogFragment$1;->val$view:Landroid/view/View;

    const v3, 0x7f0c000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 168
    .local v1, "overwrite":Z
    iget-object v2, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ExportDialogFragment$1;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ExportDialogFragment;

    invoke-virtual {v2}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ExportDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;

    invoke-static {v2, v0, v1}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->access$000(Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;IZ)V

    .line 170
    return-void
.end method
