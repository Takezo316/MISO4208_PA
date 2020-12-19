.class Lme/kuehle/carreport/gui/DataDetailRefuelingFragment$2;
.super Ljava/lang/Object;
.source "DataDetailRefuelingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->initFields(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;


# direct methods
.method constructor <init>(Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment$2;->this$0:Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 234
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment$2;->this$0:Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;

    const/4 v1, 0x1

    iget-object v2, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment$2;->this$0:Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;

    invoke-static {v2}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->access$100(Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;)Ljava/util/Date;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lme/kuehle/carreport/util/gui/TimePickerDialogFragment;->newInstance(Landroid/app/Fragment;ILjava/util/Date;)Lme/kuehle/carreport/util/gui/TimePickerDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment$2;->this$0:Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;

    invoke-virtual {v1}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lme/kuehle/carreport/util/gui/TimePickerDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 238
    return-void
.end method
