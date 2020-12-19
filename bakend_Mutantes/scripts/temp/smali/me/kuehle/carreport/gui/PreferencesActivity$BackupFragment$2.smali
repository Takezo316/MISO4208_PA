.class Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$2;
.super Ljava/lang/Object;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;


# direct methods
.method constructor <init>(Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$2;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 236
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$2;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;

    invoke-static {v0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->access$500(Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;)Lme/kuehle/carreport/util/backup/Backup;

    move-result-object v0

    invoke-virtual {v0}, Lme/kuehle/carreport/util/backup/Backup;->backupFileExists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$2;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;

    const v2, 0x7f090044

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$2;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;

    const v4, 0x7f090045

    invoke-virtual {v3, v4}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f090048

    const/high16 v5, 0x1040000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lme/kuehle/carreport/util/gui/MessageDialogFragment;->newInstance(Landroid/app/Fragment;ILjava/lang/Integer;Ljava/lang/String;ILjava/lang/Integer;)Lme/kuehle/carreport/util/gui/MessageDialogFragment;

    move-result-object v0

    iget-object v2, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$2;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;

    invoke-virtual {v2}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lme/kuehle/carreport/util/gui/MessageDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 246
    :goto_0
    return v1

    .line 244
    :cond_0
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$2;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;

    invoke-static {v0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->access$600(Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;)V

    goto :goto_0
.end method
