.class Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$1;
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
    .line 218
    iput-object p1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$1;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 221
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$1;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;

    invoke-static {v0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->access$200(Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;)Lme/kuehle/carreport/util/backup/Dropbox;

    move-result-object v0

    invoke-virtual {v0}, Lme/kuehle/carreport/util/backup/Dropbox;->isLinked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$1;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;

    invoke-static {v0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->access$200(Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;)Lme/kuehle/carreport/util/backup/Dropbox;

    move-result-object v0

    invoke-virtual {v0}, Lme/kuehle/carreport/util/backup/Dropbox;->unlink()V

    .line 223
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$1;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;

    invoke-static {v0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->access$300(Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;)V

    .line 229
    :goto_0
    return v2

    .line 225
    :cond_0
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$1;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;

    invoke-static {v0, v2}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->access$402(Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;Z)Z

    .line 226
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$1;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;

    invoke-static {v0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->access$200(Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;)Lme/kuehle/carreport/util/backup/Dropbox;

    move-result-object v0

    iget-object v1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$1;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;

    invoke-virtual {v1}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/kuehle/carreport/util/backup/Dropbox;->startAuthentication(Landroid/content/Context;)V

    goto :goto_0
.end method
