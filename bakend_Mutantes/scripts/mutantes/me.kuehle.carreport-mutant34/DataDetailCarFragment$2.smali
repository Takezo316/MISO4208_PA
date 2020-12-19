.class Lme/kuehle/carreport/gui/DataDetailCarFragment$2;
.super Ljava/lang/Object;
.source "DataDetailCarFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/gui/DataDetailCarFragment;
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
    .line 92
    iput-object p1, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment$2;->this$0:Lme/kuehle/carreport/gui/DataDetailCarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method private delay()V
    .locals 2

    .line 332
    const-wide/16 v0, 0x2710

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 336
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-direct/range {p0 .. p0}, Lme/kuehle/carreport/gui/DataDetailCarFragment$2;->delay()V
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 97
    .local v1, "ftView":Landroid/view/View;
    iget-object v3, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment$2;->this$0:Lme/kuehle/carreport/gui/DataDetailCarFragment;

    invoke-static {v3}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->access$100(Lme/kuehle/carreport/gui/DataDetailCarFragment;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/kuehle/carreport/db/FuelType;

    .line 98
    .local v2, "fuelType":Lme/kuehle/carreport/db/FuelType;
    iget-object v3, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment$2;->this$0:Lme/kuehle/carreport/gui/DataDetailCarFragment;

    invoke-static {v3}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->access$100(Lme/kuehle/carreport/gui/DataDetailCarFragment;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    if-eqz v2, :cond_0

    .line 100
    iget-object v3, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment$2;->this$0:Lme/kuehle/carreport/gui/DataDetailCarFragment;

    invoke-static {v3}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->access$200(Lme/kuehle/carreport/gui/DataDetailCarFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_0
    new-instance v0, Lme/kuehle/carreport/util/gui/SimpleAnimator;

    iget-object v3, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment$2;->this$0:Lme/kuehle/carreport/gui/DataDetailCarFragment;

    invoke-virtual {v3}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget-object v4, Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;->Height:Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;

    invoke-direct {v0, v3, v1, v4}, Lme/kuehle/carreport/util/gui/SimpleAnimator;-><init>(Landroid/content/Context;Landroid/view/View;Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;)V

    .line 105
    .local v0, "animator":Lme/kuehle/carreport/util/gui/SimpleAnimator;
    const/4 v3, 0x0

    new-instance v4, Lme/kuehle/carreport/gui/DataDetailCarFragment$2$1;

    invoke-direct {v4, p0, v1}, Lme/kuehle/carreport/gui/DataDetailCarFragment$2$1;-><init>(Lme/kuehle/carreport/gui/DataDetailCarFragment$2;Landroid/view/View;)V

    invoke-virtual {v0, v3, v4}, Lme/kuehle/carreport/util/gui/SimpleAnimator;->hide(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method
