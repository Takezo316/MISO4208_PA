.class Lme/kuehle/carreport/gui/DataDetailCarFragment$1;
.super Ljava/lang/Object;
.source "DataDetailCarFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 75
    iput-object p1, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment$1;->this$0:Lme/kuehle/carreport/gui/DataDetailCarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "selectedItemView"    # Landroid/view/View;
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
    .line 79
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    .line 80
    .local v0, "count":I
    add-int/lit8 v2, p3, 0x1

    if-ne v2, v0, :cond_0

    .line 81
    move v1, v0

    .line 82
    .local v1, "tank":I
    iget-object v2, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment$1;->this$0:Lme/kuehle/carreport/gui/DataDetailCarFragment;

    invoke-static {v2}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->access$000(Lme/kuehle/carreport/gui/DataDetailCarFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    iget-object v3, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment$1;->this$0:Lme/kuehle/carreport/gui/DataDetailCarFragment;

    const v4, 0x7f090012

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 85
    .end local v1    # "tank":I
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
