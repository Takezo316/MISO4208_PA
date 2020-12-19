.class Lme/kuehle/carreport/util/gui/MessageDialogFragment$3;
.super Ljava/lang/Object;
.source "MessageDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kuehle/carreport/util/gui/MessageDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/kuehle/carreport/util/gui/MessageDialogFragment;


# direct methods
.method constructor <init>(Lme/kuehle/carreport/util/gui/MessageDialogFragment;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lme/kuehle/carreport/util/gui/MessageDialogFragment$3;->this$0:Lme/kuehle/carreport/util/gui/MessageDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lme/kuehle/carreport/util/gui/MessageDialogFragment$3;->this$0:Lme/kuehle/carreport/util/gui/MessageDialogFragment;

    invoke-static {v0}, Lme/kuehle/carreport/util/gui/MessageDialogFragment;->access$000(Lme/kuehle/carreport/util/gui/MessageDialogFragment;)Lme/kuehle/carreport/util/gui/MessageDialogFragment$MessageDialogFragmentListener;

    move-result-object v0

    iget-object v1, p0, Lme/kuehle/carreport/util/gui/MessageDialogFragment$3;->this$0:Lme/kuehle/carreport/util/gui/MessageDialogFragment;

    invoke-virtual {v1}, Lme/kuehle/carreport/util/gui/MessageDialogFragment;->getTargetRequestCode()I

    move-result v1

    invoke-interface {v0, v1}, Lme/kuehle/carreport/util/gui/MessageDialogFragment$MessageDialogFragmentListener;->onDialogNegativeClick(I)V

    .line 88
    return-void
.end method
