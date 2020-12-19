.class public Lme/kuehle/carreport/util/gui/InputDialogFragment;
.super Landroid/app/DialogFragment;
.source "InputDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kuehle/carreport/util/gui/InputDialogFragment$InputDialogFragmentListener;
    }
.end annotation


# instance fields
.field private mEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lme/kuehle/carreport/util/gui/InputDialogFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/util/gui/InputDialogFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lme/kuehle/carreport/util/gui/InputDialogFragment;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lme/kuehle/carreport/util/gui/InputDialogFragment;)Lme/kuehle/carreport/util/gui/InputDialogFragment$InputDialogFragmentListener;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/util/gui/InputDialogFragment;

    .prologue
    .line 31
    invoke-direct {p0}, Lme/kuehle/carreport/util/gui/InputDialogFragment;->getListener()Lme/kuehle/carreport/util/gui/InputDialogFragment$InputDialogFragmentListener;

    move-result-object v0

    return-object v0
.end method

.method private getListener()Lme/kuehle/carreport/util/gui/InputDialogFragment$InputDialogFragmentListener;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lme/kuehle/carreport/util/gui/InputDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lme/kuehle/carreport/util/gui/InputDialogFragment$InputDialogFragmentListener;

    return-object v0
.end method

.method public static newInstance(Landroid/app/Fragment;ILjava/lang/Integer;Ljava/lang/String;)Lme/kuehle/carreport/util/gui/InputDialogFragment;
    .locals 4
    .param p0, "parent"    # Landroid/app/Fragment;
    .param p1, "requestCode"    # I
    .param p2, "title"    # Ljava/lang/Integer;
    .param p3, "input"    # Ljava/lang/String;

    .prologue
    .line 40
    new-instance v1, Lme/kuehle/carreport/util/gui/InputDialogFragment;

    invoke-direct {v1}, Lme/kuehle/carreport/util/gui/InputDialogFragment;-><init>()V

    .line 41
    .local v1, "f":Lme/kuehle/carreport/util/gui/InputDialogFragment;
    invoke-virtual {v1, p0, p1}, Lme/kuehle/carreport/util/gui/InputDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "input"

    if-eqz p3, :cond_1

    .end local p3    # "input":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v2, "positive"

    const v3, 0x104000a

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    const-string v2, "negative"

    const/high16 v3, 0x1040000

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 47
    if-eqz p2, :cond_0

    .line 48
    const-string v2, "title"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    :cond_0
    invoke-virtual {v1, v0}, Lme/kuehle/carreport/util/gui/InputDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 52
    return-object v1

    .line 44
    .restart local p3    # "input":Ljava/lang/String;
    :cond_1
    const-string p3, ""

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-virtual {p0}, Lme/kuehle/carreport/util/gui/InputDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {p0}, Lme/kuehle/carreport/util/gui/InputDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 62
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f030008

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 63
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0c000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lme/kuehle/carreport/util/gui/InputDialogFragment;->mEditText:Landroid/widget/EditText;

    .line 64
    if-eqz p1, :cond_1

    .line 65
    iget-object v4, p0, Lme/kuehle/carreport/util/gui/InputDialogFragment;->mEditText:Landroid/widget/EditText;

    const-string v5, "input"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lme/kuehle/carreport/util/gui/InputDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 71
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 72
    const-string v4, "positive"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Lme/kuehle/carreport/util/gui/InputDialogFragment$1;

    invoke-direct {v5, p0}, Lme/kuehle/carreport/util/gui/InputDialogFragment$1;-><init>(Lme/kuehle/carreport/util/gui/InputDialogFragment;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    const-string v4, "negative"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Lme/kuehle/carreport/util/gui/InputDialogFragment$2;

    invoke-direct {v5, p0}, Lme/kuehle/carreport/util/gui/InputDialogFragment$2;-><init>(Lme/kuehle/carreport/util/gui/InputDialogFragment;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    const-string v4, "title"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    const-string v4, "title"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 93
    :cond_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 67
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    iget-object v4, p0, Lme/kuehle/carreport/util/gui/InputDialogFragment;->mEditText:Landroid/widget/EditText;

    const-string v5, "input"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    const-string v0, "input"

    iget-object v1, p0, Lme/kuehle/carreport/util/gui/InputDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method
