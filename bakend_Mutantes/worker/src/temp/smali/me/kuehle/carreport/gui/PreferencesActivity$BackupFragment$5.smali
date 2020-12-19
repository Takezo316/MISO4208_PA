.class Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$5;
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
    .line 272
    iput-object p1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$5;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 275
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$5;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;

    invoke-static {v0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ImportDialogFragment;->newInstance(Landroid/app/Fragment;)Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ImportDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$5;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;

    invoke-virtual {v1}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ImportDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 277
    const/4 v0, 0x1

    return v0
.end method
