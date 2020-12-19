.class public Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;
.super Landroid/app/DialogFragment;
.source "ColorPickerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment$ColorPickerDialogFragmentListener;
    }
.end annotation


# instance fields
.field private mColorPicker:Lcom/larswerkman/colorpicker/ColorPicker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;)Lcom/larswerkman/colorpicker/ColorPicker;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;->mColorPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    return-object v0
.end method

.method static synthetic access$100(Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;)Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment$ColorPickerDialogFragmentListener;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;

    .prologue
    .line 34
    invoke-direct {p0}, Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;->getListener()Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment$ColorPickerDialogFragmentListener;

    move-result-object v0

    return-object v0
.end method

.method private getListener()Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment$ColorPickerDialogFragmentListener;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment$ColorPickerDialogFragmentListener;

    return-object v0
.end method

.method public static newInstance(Landroid/app/Fragment;ILjava/lang/Integer;I)Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;
    .locals 4
    .param p0, "parent"    # Landroid/app/Fragment;
    .param p1, "requestCode"    # I
    .param p2, "title"    # Ljava/lang/Integer;
    .param p3, "color"    # I

    .prologue
    .line 43
    new-instance v1, Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;

    invoke-direct {v1}, Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;-><init>()V

    .line 44
    .local v1, "f":Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;
    invoke-virtual {v1, p0, p1}, Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "color"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    const-string v2, "positive"

    const v3, 0x104000a

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    const-string v2, "negative"

    const/high16 v3, 0x1040000

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    if-eqz p2, :cond_0

    .line 51
    const-string v2, "title"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    :cond_0
    invoke-virtual {v1, v0}, Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 55
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-virtual {p0}, Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {p0}, Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 65
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f030005

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 66
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0c0006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/larswerkman/colorpicker/ColorPicker;

    iput-object v4, p0, Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;->mColorPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    .line 67
    iget-object v5, p0, Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;->mColorPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    const v4, 0x7f0c0007

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/larswerkman/colorpicker/SVBar;

    invoke-virtual {v5, v4}, Lcom/larswerkman/colorpicker/ColorPicker;->addSVBar(Lcom/larswerkman/colorpicker/SVBar;)V

    .line 68
    iget-object v5, p0, Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;->mColorPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    const v4, 0x7f0c0008

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/larswerkman/colorpicker/OpacityBar;

    invoke-virtual {v5, v4}, Lcom/larswerkman/colorpicker/ColorPicker;->addOpacityBar(Lcom/larswerkman/colorpicker/OpacityBar;)V

    .line 71
    iget-object v4, p0, Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;->mColorPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    const-string v5, "color"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/larswerkman/colorpicker/ColorPicker;->setOldCenterColor(I)V

    .line 72
    if-eqz p1, :cond_1

    .line 73
    iget-object v4, p0, Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;->mColorPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    const-string v5, "color"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/larswerkman/colorpicker/ColorPicker;->setColor(I)V

    .line 78
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 79
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 80
    const-string v4, "positive"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment$1;

    invoke-direct {v5, p0}, Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment$1;-><init>(Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    const-string v4, "negative"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment$2;

    invoke-direct {v5, p0}, Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment$2;-><init>(Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 97
    const-string v4, "title"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    const-string v4, "title"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 101
    :cond_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 75
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    iget-object v4, p0, Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;->mColorPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    const-string v5, "color"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/larswerkman/colorpicker/ColorPicker;->setColor(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    const-string v0, "color"

    iget-object v1, p0, Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;->mColorPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    invoke-virtual {v1}, Lcom/larswerkman/colorpicker/ColorPicker;->getColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    return-void
.end method
