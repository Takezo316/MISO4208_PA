.class Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$3;
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
    .line 251
    iput-object p1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$3;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 254
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$3;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;

    const/4 v1, 0x2

    const v2, 0x7f090046

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$3;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;

    const v4, 0x7f090047

    invoke-virtual {v3, v4}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f090049

    const/high16 v5, 0x1040000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lme/kuehle/carreport/util/gui/MessageDialogFragment;->newInstance(Landroid/app/Fragment;ILjava/lang/Integer;Ljava/lang/String;ILjava/lang/Integer;)Lme/kuehle/carreport/util/gui/MessageDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$3;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;

    invoke-virtual {v1}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lme/kuehle/carreport/util/gui/MessageDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 259
    const/4 v0, 0x1

    return v0
.end method
