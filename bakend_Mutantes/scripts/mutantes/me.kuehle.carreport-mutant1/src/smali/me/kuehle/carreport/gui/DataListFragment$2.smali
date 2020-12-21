.class Lme/kuehle/carreport/gui/DataListFragment$2;
.super Ljava/lang/Object;
.source "DataListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 359
    iput-object p1, p0, Lme/kuehle/carreport/gui/DataListFragment$2;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 362
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lme/kuehle/carreport/gui/DataListFragment$2;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-virtual {v2, p3}, Lme/kuehle/carreport/gui/DataListFragment;->setCurrentPosition(I)V

    .line 364
    iget-object v2, p0, Lme/kuehle/carreport/gui/DataListFragment$2;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-static {v2}, Lme/kuehle/carreport/gui/DataListFragment;->access$100(Lme/kuehle/carreport/gui/DataListFragment;)Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;

    move-result-object v2

    invoke-virtual {v2}, Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;->getExtraEdit()I

    move-result v0

    .line 365
    .local v0, "edit":I
    iget-object v2, p0, Lme/kuehle/carreport/gui/DataListFragment$2;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-static {v2}, Lme/kuehle/carreport/gui/DataListFragment;->access$100(Lme/kuehle/carreport/gui/DataListFragment;)Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;

    move-result-object v2

    iget-object v2, v2, Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;->mItems:[Lme/kuehle/carreport/db/AbstractItem;

    iget-object v3, p0, Lme/kuehle/carreport/gui/DataListFragment$2;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-static {v3}, Lme/kuehle/carreport/gui/DataListFragment;->access$400(Lme/kuehle/carreport/gui/DataListFragment;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lme/kuehle/carreport/db/AbstractItem;->getId()I

    move-result v1

    .line 366
    .local v1, "itemId":I
    iget-object v2, p0, Lme/kuehle/carreport/gui/DataListFragment$2;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-static {v2}, Lme/kuehle/carreport/gui/DataListFragment;->access$000(Lme/kuehle/carreport/gui/DataListFragment;)Lme/kuehle/carreport/gui/DataListFragment$Callback;

    move-result-object v2

    iget-object v3, p0, Lme/kuehle/carreport/gui/DataListFragment$2;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-static {v3}, Lme/kuehle/carreport/gui/DataListFragment;->access$500(Lme/kuehle/carreport/gui/DataListFragment;)Lme/kuehle/carreport/db/Car;

    move-result-object v3

    invoke-virtual {v3}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v3

    invoke-interface {v2, v0, v3, v1}, Lme/kuehle/carreport/gui/DataListFragment$Callback;->onItemSelected(III)V

    .line 367
    return-void
.end method
