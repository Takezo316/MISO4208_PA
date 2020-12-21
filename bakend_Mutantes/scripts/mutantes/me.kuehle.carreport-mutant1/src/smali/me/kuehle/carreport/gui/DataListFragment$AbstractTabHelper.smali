.class public abstract Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;
.super Ljava/lang/Object;
.source "DataListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/gui/DataListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AbstractTabHelper"
.end annotation


# instance fields
.field protected mItems:[Lme/kuehle/carreport/db/AbstractItem;

.field protected mListView:Landroid/widget/ListView;

.field final synthetic this$0:Lme/kuehle/carreport/gui/DataListFragment;


# direct methods
.method public constructor <init>(Lme/kuehle/carreport/gui/DataListFragment;Landroid/widget/ListView;)V
    .locals 2
    .param p2, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 62
    iput-object p1, p0, Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;->mListView:Landroid/widget/ListView;

    .line 64
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;->mListView:Landroid/widget/ListView;

    new-instance v1, Lme/kuehle/carreport/gui/DataListFragment$DataListAdapter;

    invoke-direct {v1, p1}, Lme/kuehle/carreport/gui/DataListFragment$DataListAdapter;-><init>(Lme/kuehle/carreport/gui/DataListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    return-void
.end method


# virtual methods
.method protected abstract getAlertDeleteManyMessage()I
.end method

.method protected abstract getExtraEdit()I
.end method

.method protected abstract getIndicator()I
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method

.method protected abstract getView()I
.end method

.method protected abstract updateItems(Lme/kuehle/carreport/db/Car;)V
.end method

.method protected abstract updateListAdapter()V
.end method
