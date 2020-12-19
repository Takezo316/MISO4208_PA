.class Lme/kuehle/carreport/gui/DataDetailCarFragment$3;
.super Ljava/lang/Object;
.source "DataDetailCarFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kuehle/carreport/gui/DataDetailCarFragment;->initFields(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/kuehle/carreport/gui/DataDetailCarFragment;


# direct methods
.method constructor <init>(Lme/kuehle/carreport/gui/DataDetailCarFragment;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment$3;->this$0:Lme/kuehle/carreport/gui/DataDetailCarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 337
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment$3;->this$0:Lme/kuehle/carreport/gui/DataDetailCarFragment;

    const/4 v1, 0x1

    const v2, 0x7f09003b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment$3;->this$0:Lme/kuehle/carreport/gui/DataDetailCarFragment;

    invoke-static {v3}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->access$400(Lme/kuehle/carreport/gui/DataDetailCarFragment;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;->newInstance(Landroid/app/Fragment;ILjava/lang/Integer;I)Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment$3;->this$0:Lme/kuehle/carreport/gui/DataDetailCarFragment;

    invoke-virtual {v1}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 341
    return-void
.end method
