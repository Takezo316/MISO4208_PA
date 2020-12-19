.class Lme/kuehle/carreport/util/gui/MessageDialogFragment$1;
.super Ljava/lang/Object;
.source "MessageDialogFragment.java"

# interfaces
.implements Lme/kuehle/carreport/util/gui/MessageDialogFragment$MessageDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/util/gui/MessageDialogFragment;
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
    .line 54
    iput-object p1, p0, Lme/kuehle/carreport/util/gui/MessageDialogFragment$1;->this$0:Lme/kuehle/carreport/util/gui/MessageDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogNegativeClick(I)V
    .locals 0
    .param p1, "requestCode"    # I

    .prologue
    .line 61
    return-void
.end method

.method public onDialogPositiveClick(I)V
    .locals 0
    .param p1, "requestCode"    # I

    .prologue
    .line 57
    return-void
.end method
