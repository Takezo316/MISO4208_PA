.class Lme/kuehle/carreport/util/gui/InputDialogFragment$2;
.super Ljava/lang/Object;
.source "InputDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kuehle/carreport/util/gui/InputDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/kuehle/carreport/util/gui/InputDialogFragment;


# direct methods
.method constructor <init>(Lme/kuehle/carreport/util/gui/InputDialogFragment;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lme/kuehle/carreport/util/gui/InputDialogFragment$2;->this$0:Lme/kuehle/carreport/util/gui/InputDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lme/kuehle/carreport/util/gui/InputDialogFragment$2;->this$0:Lme/kuehle/carreport/util/gui/InputDialogFragment;

    invoke-static {v0}, Lme/kuehle/carreport/util/gui/InputDialogFragment;->access$100(Lme/kuehle/carreport/util/gui/InputDialogFragment;)Lme/kuehle/carreport/util/gui/InputDialogFragment$InputDialogFragmentListener;

    move-result-object v0

    iget-object v1, p0, Lme/kuehle/carreport/util/gui/InputDialogFragment$2;->this$0:Lme/kuehle/carreport/util/gui/InputDialogFragment;

    invoke-virtual {v1}, Lme/kuehle/carreport/util/gui/InputDialogFragment;->getTargetRequestCode()I

    move-result v1

    invoke-interface {v0, v1}, Lme/kuehle/carreport/util/gui/InputDialogFragment$InputDialogFragmentListener;->onDialogNegativeClick(I)V

    .line 87
    return-void
.end method
