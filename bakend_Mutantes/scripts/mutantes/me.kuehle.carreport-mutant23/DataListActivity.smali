.class public Lme/kuehle/carreport/gui/DataListActivity;
.super Landroid/app/Activity;
.source "DataListActivity.java"

# interfaces
.implements Lme/kuehle/carreport/gui/AbstractDataDetailFragment$OnItemActionListener;
.implements Lme/kuehle/carreport/gui/DataListFragment$Callback;


# instance fields
.field private mList:Lme/kuehle/carreport/gui/DataListFragment;

.field private mOnBackStackChangeListener:Landroid/app/FragmentManager$OnBackStackChangedListener;

.field private mTwoPane:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    new-instance v0, Lme/kuehle/carreport/gui/DataListActivity$1;

    invoke-direct {v0, p0}, Lme/kuehle/carreport/gui/DataListActivity$1;-><init>(Lme/kuehle/carreport/gui/DataListActivity;)V

    iput-object v0, p0, Lme/kuehle/carreport/gui/DataListActivity;->mOnBackStackChangeListener:Landroid/app/FragmentManager$OnBackStackChangedListener;

    return-void
.end method

.method static synthetic access$000(Lme/kuehle/carreport/gui/DataListActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lme/kuehle/carreport/gui/DataListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lme/kuehle/carreport/gui/DataListActivity;->setNoEntryMessageVisible(Z)V

    return-void
.end method

.method static synthetic access$100(Lme/kuehle/carreport/gui/DataListActivity;)Lme/kuehle/carreport/gui/DataListFragment;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/gui/DataListActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListActivity;->mList:Lme/kuehle/carreport/gui/DataListFragment;

    return-object v0
.end method

.method private setNoEntryMessageVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 181
    const v1, 0x7f0c0002

    invoke-virtual {p0, v1}, Lme/kuehle/carreport/gui/DataListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 182
    .local v0, "v":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 183
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    :cond_0
    return-void

    .line 183
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private startDetailActivity(III)V
    .locals 2
    .param p1, "edit"    # I
    .param p2, "carId"    # I
    .param p3, "id"    # I

    .prologue
    .line 188
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lme/kuehle/carreport/gui/DataDetailActivity;

    const/4 v0, 0x0

    .line 189
    .local v0, "detailIntent":Landroid/content/Intent;
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 190
    const-string v1, "edit"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    const-string v1, "car_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    const-string v1, "id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lme/kuehle/carreport/gui/DataListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 194
    return-void
.end method


# virtual methods
.method public itemCanceled()V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataListActivity;->onItemClosed()V

    .line 67
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListActivity;->mList:Lme/kuehle/carreport/gui/DataListFragment;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lme/kuehle/carreport/gui/DataListFragment;->setCurrentPosition(I)V

    .line 68
    return-void
.end method

.method public itemDeleted()V
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataListActivity;->onItemClosed()V

    .line 73
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListActivity;->mList:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-virtual {v0}, Lme/kuehle/carreport/gui/DataListFragment;->updateLists()V

    .line 74
    return-void
.end method

.method public itemSaved()V
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataListActivity;->onItemClosed()V

    .line 79
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListActivity;->mList:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-virtual {v0}, Lme/kuehle/carreport/gui/DataListFragment;->updateLists()V

    .line 80
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 84
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 85
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListActivity;->mList:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-virtual {v0}, Lme/kuehle/carreport/gui/DataListFragment;->updateLists()V

    .line 87
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lme/kuehle/carreport/gui/DataListActivity;->setContentView(I)V

    .line 94
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 95
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 97
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0c0001

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lme/kuehle/carreport/gui/DataListFragment;

    iput-object v1, p0, Lme/kuehle/carreport/gui/DataListActivity;->mList:Lme/kuehle/carreport/gui/DataListFragment;

    .line 99
    const/high16 v1, 0x7f0c0000

    invoke-virtual {p0, v1}, Lme/kuehle/carreport/gui/DataListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    iput-boolean v3, p0, Lme/kuehle/carreport/gui/DataListActivity;->mTwoPane:Z

    .line 101
    iget-object v1, p0, Lme/kuehle/carreport/gui/DataListActivity;->mList:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-virtual {v1, v3}, Lme/kuehle/carreport/gui/DataListFragment;->setActivateOnItemClick(Z)V

    .line 104
    :cond_0
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lme/kuehle/carreport/gui/DataListActivity;->mOnBackStackChangeListener:Landroid/app/FragmentManager$OnBackStackChangedListener;

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 106
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 110
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 111
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0b0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 112
    const/4 v1, 0x1

    return v1
.end method

.method public onItemClosed()V
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 118
    return-void
.end method

.method public onItemSelected(III)V
    .locals 5
    .param p1, "edit"    # I
    .param p2, "carId"    # I
    .param p3, "id"    # I

    .prologue
    const/high16 v4, 0x7f0c0000

    .line 122
    iget-boolean v3, p0, Lme/kuehle/carreport/gui/DataListActivity;->mTwoPane:Z

    if-eqz v3, :cond_2

    .line 123
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lme/kuehle/carreport/gui/DataListActivity;->setNoEntryMessageVisible(Z)V

    .line 126
    if-nez p1, :cond_1

    .line 127
    invoke-static {p3}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->newInstance(I)Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;

    move-result-object v1

    .line 132
    .local v1, "fragment":Lme/kuehle/carreport/gui/AbstractDataDetailFragment;
    :goto_0
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 133
    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v4, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 135
    .local v2, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_0

    .line 136
    const/16 v3, 0x1001

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 137
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 139
    :cond_0
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 143
    .end local v0    # "fm":Landroid/app/FragmentManager;
    .end local v1    # "fragment":Lme/kuehle/carreport/gui/AbstractDataDetailFragment;
    .end local v2    # "ft":Landroid/app/FragmentTransaction;
    :goto_1
    return-void

    .line 129
    :cond_1
    invoke-static {p3}, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->newInstance(I)Lme/kuehle/carreport/gui/DataDetailOtherFragment;

    move-result-object v1

    .restart local v1    # "fragment":Lme/kuehle/carreport/gui/AbstractDataDetailFragment;
    goto :goto_0

    .line 141
    .end local v1    # "fragment":Lme/kuehle/carreport/gui/AbstractDataDetailFragment;
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lme/kuehle/carreport/gui/DataListActivity;->startDetailActivity(III)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x1

    .line 147
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 149
    :sswitch_0
    const/4 v1, 0x0

    iget-object v2, p0, Lme/kuehle/carreport/gui/DataListActivity;->mList:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-virtual {v2}, Lme/kuehle/carreport/gui/DataListFragment;->getCurrentCar()Lme/kuehle/carreport/db/Car;

    move-result-object v2

    invoke-virtual {v2}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v2

    invoke-direct {p0, v1, v2, v3}, Lme/kuehle/carreport/gui/DataListActivity;->startDetailActivity(III)V

    goto :goto_0

    .line 154
    :sswitch_1
    iget-object v1, p0, Lme/kuehle/carreport/gui/DataListActivity;->mList:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-virtual {v1}, Lme/kuehle/carreport/gui/DataListFragment;->getCurrentCar()Lme/kuehle/carreport/db/Car;

    move-result-object v1

    invoke-virtual {v1}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v1

    invoke-direct {p0, v0, v1, v3}, Lme/kuehle/carreport/gui/DataListActivity;->startDetailActivity(III)V

    goto :goto_0

    .line 159
    :sswitch_2
    iget-object v1, p0, Lme/kuehle/carreport/gui/DataListActivity;->mList:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-virtual {v1}, Lme/kuehle/carreport/gui/DataListFragment;->isItemActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataListActivity;->itemCanceled()V

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataListActivity;->finish()V

    goto :goto_0

    .line 147
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_2
        0x7f0c0034 -> :sswitch_0
        0x7f0c0035 -> :sswitch_1
    .end sparse-switch
.end method

.method public onTabChanged(I)V
    .locals 4
    .param p1, "edit"    # I

    .prologue
    const/4 v3, 0x0

    .line 172
    const v2, 0x7f0c0002

    invoke-virtual {p0, v2}, Lme/kuehle/carreport/gui/DataListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 173
    .local v1, "v":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 174
    if-nez p1, :cond_1

    const v0, 0x7f020007

    .line 176
    .local v0, "id":I
    :goto_0
    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 178
    .end local v0    # "id":I
    :cond_0
    return-void

    .line 174
    :cond_1
    const v0, 0x7f020006

    goto :goto_0
.end method
