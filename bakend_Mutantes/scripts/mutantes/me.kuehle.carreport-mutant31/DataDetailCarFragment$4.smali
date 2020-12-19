.class Lme/kuehle/carreport/gui/DataDetailCarFragment$4;
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
    .line 347
    iput-object p1, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment$4;->this$0:Lme/kuehle/carreport/gui/DataDetailCarFragment;

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
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-direct/range {p0 .. p0}, Lme/kuehle/carreport/gui/DataDetailCarFragment$4;->delay()V
    .line 350
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment$4;->this$0:Lme/kuehle/carreport/gui/DataDetailCarFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->access$500(Lme/kuehle/carreport/gui/DataDetailCarFragment;Lme/kuehle/carreport/db/FuelType;)Landroid/view/View;

    .line 351
    return-void
.end method
