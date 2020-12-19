.class public Lme/kuehle/carreport/util/gui/MessageDialogFragment;
.super Landroid/app/DialogFragment;
.source "MessageDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kuehle/carreport/util/gui/MessageDialogFragment$MessageDialogFragmentListener;
    }
.end annotation


# instance fields
.field private mDefaultListener:Lme/kuehle/carreport/util/gui/MessageDialogFragment$MessageDialogFragmentListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 54
    new-instance v0, Lme/kuehle/carreport/util/gui/MessageDialogFragment$1;

    invoke-direct {v0, p0}, Lme/kuehle/carreport/util/gui/MessageDialogFragment$1;-><init>(Lme/kuehle/carreport/util/gui/MessageDialogFragment;)V

    iput-object v0, p0, Lme/kuehle/carreport/util/gui/MessageDialogFragment;->mDefaultListener:Lme/kuehle/carreport/util/gui/MessageDialogFragment$MessageDialogFragmentListener;

    return-void
.end method

.method static synthetic access$000(Lme/kuehle/carreport/util/gui/MessageDialogFragment;)Lme/kuehle/carreport/util/gui/MessageDialogFragment$MessageDialogFragmentListener;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/util/gui/MessageDialogFragment;

    .prologue
    .line 27
    invoke-direct {p0}, Lme/kuehle/carreport/util/gui/MessageDialogFragment;->getListener()Lme/kuehle/carreport/util/gui/MessageDialogFragment$MessageDialogFragmentListener;

    move-result-object v0

    return-object v0
.end method

.method private getListener()Lme/kuehle/carreport/util/gui/MessageDialogFragment$MessageDialogFragmentListener;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lme/kuehle/carreport/util/gui/MessageDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 97
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    check-cast v0, Lme/kuehle/carreport/util/gui/MessageDialogFragment$MessageDialogFragmentListener;

    .end local v0    # "f":Landroid/app/Fragment;
    :goto_0
    return-object v0

    .restart local v0    # "f":Landroid/app/Fragment;
    :cond_0
    iget-object v0, p0, Lme/kuehle/carreport/util/gui/MessageDialogFragment;->mDefaultListener:Lme/kuehle/carreport/util/gui/MessageDialogFragment$MessageDialogFragmentListener;

    goto :goto_0
.end method

.method public static newInstance(Landroid/app/Fragment;ILjava/lang/Integer;Ljava/lang/String;ILjava/lang/Integer;)Lme/kuehle/carreport/util/gui/MessageDialogFragment;
    .locals 4
    .param p0, "parent"    # Landroid/app/Fragment;
    .param p1, "requestCode"    # I
    .param p2, "title"    # Ljava/lang/Integer;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "positive"    # I
    .param p5, "negative"    # Ljava/lang/Integer;

    .prologue
    .line 37
    new-instance v1, Lme/kuehle/carreport/util/gui/MessageDialogFragment;

    invoke-direct {v1}, Lme/kuehle/carreport/util/gui/MessageDialogFragment;-><init>()V

    .line 38
    .local v1, "f":Lme/kuehle/carreport/util/gui/MessageDialogFragment;
    invoke-virtual {v1, p0, p1}, Lme/kuehle/carreport/util/gui/MessageDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "message"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v2, "positive"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 43
    if-eqz p2, :cond_0

    .line 44
    const-string v2, "title"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    :cond_0
    if-eqz p5, :cond_1

    .line 47
    const-string v2, "negative"

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    :cond_1
    invoke-virtual {v1, v0}, Lme/kuehle/carreport/util/gui/MessageDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 51
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-virtual {p0}, Lme/kuehle/carreport/util/gui/MessageDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 68
    .local v0, "args":Landroid/os/Bundle;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lme/kuehle/carreport/util/gui/MessageDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 70
    const-string v2, "positive"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lme/kuehle/carreport/util/gui/MessageDialogFragment$2;

    invoke-direct {v3, p0}, Lme/kuehle/carreport/util/gui/MessageDialogFragment$2;-><init>(Lme/kuehle/carreport/util/gui/MessageDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 78
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 81
    :cond_0
    const-string v2, "negative"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    const-string v2, "negative"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lme/kuehle/carreport/util/gui/MessageDialogFragment$3;

    invoke-direct {v3, p0}, Lme/kuehle/carreport/util/gui/MessageDialogFragment$3;-><init>(Lme/kuehle/carreport/util/gui/MessageDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 92
    :cond_1
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
