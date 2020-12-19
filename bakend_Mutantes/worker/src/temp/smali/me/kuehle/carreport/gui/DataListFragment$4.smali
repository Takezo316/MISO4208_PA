.class Lme/kuehle/carreport/gui/DataListFragment$4;
.super Ljava/lang/Object;
.source "DataListFragment.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/gui/DataListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/kuehle/carreport/gui/DataListFragment;


# direct methods
.method constructor <init>(Lme/kuehle/carreport/gui/DataListFragment;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lme/kuehle/carreport/gui/DataListFragment$4;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .locals 2
    .param p1, "itemPosition"    # I
    .param p2, "itemId"    # J

    .prologue
    .line 429
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment$4;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    iget-object v1, p0, Lme/kuehle/carreport/gui/DataListFragment$4;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-static {v1}, Lme/kuehle/carreport/gui/DataListFragment;->access$900(Lme/kuehle/carreport/gui/DataListFragment;)[Lme/kuehle/carreport/db/Car;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Lme/kuehle/carreport/gui/DataListFragment;->access$502(Lme/kuehle/carreport/gui/DataListFragment;Lme/kuehle/carreport/db/Car;)Lme/kuehle/carreport/db/Car;

    .line 430
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment$4;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-static {v0}, Lme/kuehle/carreport/gui/DataListFragment;->access$000(Lme/kuehle/carreport/gui/DataListFragment;)Lme/kuehle/carreport/gui/DataListFragment$Callback;

    move-result-object v0

    invoke-interface {v0}, Lme/kuehle/carreport/gui/DataListFragment$Callback;->onItemClosed()V

    .line 431
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment$4;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-virtual {v0}, Lme/kuehle/carreport/gui/DataListFragment;->updateLists()V

    .line 432
    const/4 v0, 0x1

    return v0
.end method
