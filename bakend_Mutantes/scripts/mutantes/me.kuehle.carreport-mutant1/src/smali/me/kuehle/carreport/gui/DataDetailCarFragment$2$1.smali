.class Lme/kuehle/carreport/gui/DataDetailCarFragment$2$1;
.super Ljava/lang/Object;
.source "DataDetailCarFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kuehle/carreport/gui/DataDetailCarFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lme/kuehle/carreport/gui/DataDetailCarFragment$2;

.field final synthetic val$ftView:Landroid/view/View;


# direct methods
.method constructor <init>(Lme/kuehle/carreport/gui/DataDetailCarFragment$2;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment$2$1;->this$1:Lme/kuehle/carreport/gui/DataDetailCarFragment$2;

    iput-object p2, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment$2$1;->val$ftView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment$2$1;->this$1:Lme/kuehle/carreport/gui/DataDetailCarFragment$2;

    iget-object v0, v0, Lme/kuehle/carreport/gui/DataDetailCarFragment$2;->this$0:Lme/kuehle/carreport/gui/DataDetailCarFragment;

    invoke-static {v0}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->access$300(Lme/kuehle/carreport/gui/DataDetailCarFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment$2$1;->val$ftView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 109
    return-void
.end method
