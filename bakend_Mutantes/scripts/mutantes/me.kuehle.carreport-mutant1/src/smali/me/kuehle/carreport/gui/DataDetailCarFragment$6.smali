.class Lme/kuehle/carreport/gui/DataDetailCarFragment$6;
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
    .line 366
    iput-object p1, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment$6;->this$0:Lme/kuehle/carreport/gui/DataDetailCarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 369
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment$6;->this$0:Lme/kuehle/carreport/gui/DataDetailCarFragment;

    const/4 v1, 0x2

    iget-object v2, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment$6;->this$0:Lme/kuehle/carreport/gui/DataDetailCarFragment;

    invoke-static {v2}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->access$700(Lme/kuehle/carreport/gui/DataDetailCarFragment;)Ljava/util/Date;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lme/kuehle/carreport/util/gui/DatePickerDialogFragment;->newInstance(Landroid/app/Fragment;ILjava/util/Date;)Lme/kuehle/carreport/util/gui/DatePickerDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment$6;->this$0:Lme/kuehle/carreport/gui/DataDetailCarFragment;

    invoke-virtual {v1}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lme/kuehle/carreport/util/gui/DatePickerDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 373
    return-void
.end method
