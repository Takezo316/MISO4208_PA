.class Lme/kuehle/carreport/gui/DataListActivity$1;
.super Ljava/lang/Object;
.source "DataListActivity.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/gui/DataListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private count:I

.field final synthetic this$0:Lme/kuehle/carreport/gui/DataListActivity;


# direct methods
.method constructor <init>(Lme/kuehle/carreport/gui/DataListActivity;)V
    .locals 1

    .prologue
    .line 41
    iput-object p1, p0, Lme/kuehle/carreport/gui/DataListActivity$1;->this$0:Lme/kuehle/carreport/gui/DataListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListActivity$1;->this$0:Lme/kuehle/carreport/gui/DataListActivity;

    invoke-virtual {v0}, Lme/kuehle/carreport/gui/DataListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    iput v0, p0, Lme/kuehle/carreport/gui/DataListActivity$1;->count:I

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 4

    .prologue
    .line 46
    iget-object v2, p0, Lme/kuehle/carreport/gui/DataListActivity$1;->this$0:Lme/kuehle/carreport/gui/DataListActivity;

    invoke-virtual {v2}, Lme/kuehle/carreport/gui/DataListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 47
    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    iget v3, p0, Lme/kuehle/carreport/gui/DataListActivity$1;->count:I

    if-ge v2, v3, :cond_1

    .line 48
    const/high16 v2, 0x7f0c0000

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    .line 49
    .local v1, "fragment":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    const/16 v3, 0x2002

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 57
    :cond_0
    iget-object v2, p0, Lme/kuehle/carreport/gui/DataListActivity$1;->this$0:Lme/kuehle/carreport/gui/DataListActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lme/kuehle/carreport/gui/DataListActivity;->access$000(Lme/kuehle/carreport/gui/DataListActivity;Z)V

    .line 58
    iget-object v2, p0, Lme/kuehle/carreport/gui/DataListActivity$1;->this$0:Lme/kuehle/carreport/gui/DataListActivity;

    invoke-static {v2}, Lme/kuehle/carreport/gui/DataListActivity;->access$100(Lme/kuehle/carreport/gui/DataListActivity;)Lme/kuehle/carreport/gui/DataListFragment;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lme/kuehle/carreport/gui/DataListFragment;->setCurrentPosition(I)V

    .line 60
    .end local v1    # "fragment":Landroid/app/Fragment;
    :cond_1
    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    iput v2, p0, Lme/kuehle/carreport/gui/DataListActivity$1;->count:I

    .line 61
    return-void
.end method
