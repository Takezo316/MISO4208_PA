.class Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$6;
.super Ljava/lang/Object;
.source "PreferencesActivity.java"

# interfaces
.implements Lme/kuehle/carreport/util/backup/Dropbox$OnAuthenticationFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->onResume()V
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
    .line 352
    iput-object p1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$6;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticationFinished(ZLjava/lang/String;Z)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "remoteDataAvailable"    # Z

    .prologue
    .line 356
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$6;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;

    invoke-virtual {v0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "progress"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lme/kuehle/carreport/util/gui/ProgressDialogFragment;

    invoke-virtual {v0}, Lme/kuehle/carreport/util/gui/ProgressDialogFragment;->dismiss()V

    .line 358
    if-eqz p1, :cond_1

    .line 359
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$6;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;

    invoke-static {v0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->access$300(Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;)V

    .line 360
    if-eqz p3, :cond_0

    .line 361
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$6;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;

    invoke-static {v0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->access$700(Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;)V

    .line 371
    :goto_0
    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$6;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;

    invoke-static {v0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->access$200(Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;)Lme/kuehle/carreport/util/backup/Dropbox;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lme/kuehle/carreport/util/backup/Dropbox;->synchronize(I)V

    goto :goto_0

    .line 366
    :cond_1
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$6;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;

    invoke-virtual {v0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090053

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
