.class Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment$2;
.super Ljava/lang/Object;
.source "ColorPickerDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;


# direct methods
.method constructor <init>(Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment$2;->this$0:Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment$2;->this$0:Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;

    invoke-static {v0}, Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;->access$100(Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;)Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment$ColorPickerDialogFragmentListener;

    move-result-object v0

    iget-object v1, p0, Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment$2;->this$0:Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;

    invoke-virtual {v1}, Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;->getTargetRequestCode()I

    move-result v1

    invoke-interface {v0, v1}, Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment$ColorPickerDialogFragmentListener;->onDialogNegativeClick(I)V

    .line 95
    return-void
.end method
