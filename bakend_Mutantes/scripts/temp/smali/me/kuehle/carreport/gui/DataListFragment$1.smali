.class Lme/kuehle/carreport/gui/DataListFragment$1;
.super Ljava/lang/Object;
.source "DataListFragment.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


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
    .line 349
    iput-object p1, p0, Lme/kuehle/carreport/gui/DataListFragment$1;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 352
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment$1;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lme/kuehle/carreport/gui/DataListFragment;->setCurrentPosition(I)V

    .line 353
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment$1;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-static {v0}, Lme/kuehle/carreport/gui/DataListFragment;->access$000(Lme/kuehle/carreport/gui/DataListFragment;)Lme/kuehle/carreport/gui/DataListFragment$Callback;

    move-result-object v0

    invoke-interface {v0}, Lme/kuehle/carreport/gui/DataListFragment$Callback;->onItemClosed()V

    .line 354
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment$1;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    iget-object v1, p0, Lme/kuehle/carreport/gui/DataListFragment$1;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-static {v1}, Lme/kuehle/carreport/gui/DataListFragment;->access$200(Lme/kuehle/carreport/gui/DataListFragment;)[Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;

    move-result-object v1

    iget-object v2, p0, Lme/kuehle/carreport/gui/DataListFragment$1;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-static {v2}, Lme/kuehle/carreport/gui/DataListFragment;->access$300(Lme/kuehle/carreport/gui/DataListFragment;)Landroid/widget/TabHost;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lme/kuehle/carreport/gui/DataListFragment;->access$102(Lme/kuehle/carreport/gui/DataListFragment;Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;)Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;

    .line 355
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment$1;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-static {v0}, Lme/kuehle/carreport/gui/DataListFragment;->access$000(Lme/kuehle/carreport/gui/DataListFragment;)Lme/kuehle/carreport/gui/DataListFragment$Callback;

    move-result-object v0

    iget-object v1, p0, Lme/kuehle/carreport/gui/DataListFragment$1;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-static {v1}, Lme/kuehle/carreport/gui/DataListFragment;->access$100(Lme/kuehle/carreport/gui/DataListFragment;)Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;

    move-result-object v1

    invoke-virtual {v1}, Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;->getExtraEdit()I

    move-result v1

    invoke-interface {v0, v1}, Lme/kuehle/carreport/gui/DataListFragment$Callback;->onTabChanged(I)V

    .line 356
    return-void
.end method
