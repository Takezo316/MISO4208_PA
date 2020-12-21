.class public Lme/kuehle/carreport/gui/PreferencesActivity$AboutFragment;
.super Landroid/app/Fragment;
.source "PreferencesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/gui/PreferencesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AboutFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kuehle/carreport/gui/PreferencesActivity$AboutFragment$LicenseDialogFragment;
    }
.end annotation


# instance fields
.field private licensesOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 107
    new-instance v0, Lme/kuehle/carreport/gui/PreferencesActivity$AboutFragment$1;

    invoke-direct {v0, p0}, Lme/kuehle/carreport/gui/PreferencesActivity$AboutFragment$1;-><init>(Lme/kuehle/carreport/gui/PreferencesActivity$AboutFragment;)V

    iput-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$AboutFragment;->licensesOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 117
    :try_start_0
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/PreferencesActivity$AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/PreferencesActivity$AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-object v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, ""

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 127
    const v2, 0x7f03000e

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 130
    .local v0, "root":Landroid/view/View;
    const v2, 0x7f090003

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/PreferencesActivity$AboutFragment;->getVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lme/kuehle/carreport/gui/PreferencesActivity$AboutFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "strVersion":Ljava/lang/String;
    const v2, 0x7f0c0022

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    const v2, 0x7f0c0023

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iget-object v3, p0, Lme/kuehle/carreport/gui/PreferencesActivity$AboutFragment;->licensesOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-object v0
.end method
