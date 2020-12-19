.class public Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;
.super Landroid/app/ListFragment;
.source "PreferencesActivity.java"

# interfaces
.implements Lme/kuehle/carreport/util/gui/MessageDialogFragment$MessageDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/gui/PreferencesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CarsFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarViewHolder;,
        Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarMultiChoiceModeListener;,
        Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarAdapter;
    }
.end annotation


# static fields
.field private static final CANNOT_DELETE_REQUEST_CODE:I = 0x0

.field private static final DELETE_REQUEST_CODE:I = 0x1


# instance fields
.field private carEditInProgress:Z

.field private cars:[Lme/kuehle/carreport/db/Car;

.field private multiChoiceModeListener:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarMultiChoiceModeListener;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 470
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 615
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->carEditInProgress:Z

    .line 617
    new-instance v0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$1;

    invoke-direct {v0, p0}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$1;-><init>(Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;)V

    iput-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 625
    new-instance v0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarMultiChoiceModeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarMultiChoiceModeListener;-><init>(Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;Lme/kuehle/carreport/gui/PreferencesActivity$1;)V

    iput-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->multiChoiceModeListener:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarMultiChoiceModeListener;

    return-void
.end method

.method static synthetic access$1000(Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;)V
    .locals 0
    .param p0, "x0"    # Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;

    .prologue
    .line 470
    invoke-direct {p0}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->fillList()V

    return-void
.end method

.method static synthetic access$1100(Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;I)V
    .locals 0
    .param p0, "x0"    # Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 470
    invoke-direct {p0, p1}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->editCar(I)V

    return-void
.end method

.method static synthetic access$800(Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;)[Lme/kuehle/carreport/db/Car;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;

    .prologue
    .line 470
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->cars:[Lme/kuehle/carreport/db/Car;

    return-object v0
.end method

.method private editCar(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 692
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lme/kuehle/carreport/gui/DataDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 693
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 694
    const-string v1, "edit"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 696
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 697
    const/4 v1, 0x1

    iput-boolean v1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->carEditInProgress:Z

    .line 698
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 699
    return-void
.end method

.method private fillList()V
    .locals 2

    .prologue
    .line 702
    invoke-static {}, Lme/kuehle/carreport/db/Car;->getAll()[Lme/kuehle/carreport/db/Car;

    move-result-object v0

    iput-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->cars:[Lme/kuehle/carreport/db/Car;

    .line 703
    new-instance v0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarAdapter;-><init>(Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;Lme/kuehle/carreport/gui/PreferencesActivity$1;)V

    invoke-virtual {p0, v0}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 704
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 629
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 631
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 632
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->multiChoiceModeListener:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarMultiChoiceModeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 633
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 635
    invoke-direct {p0}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->fillList()V

    .line 636
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 640
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 641
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->setHasOptionsMenu(Z)V

    .line 642
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 646
    const v0, 0x7f0b0001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 647
    return-void
.end method

.method public onDialogNegativeClick(I)V
    .locals 0
    .param p1, "requestCode"    # I

    .prologue
    .line 651
    return-void
.end method

.method public onDialogPositiveClick(I)V
    .locals 2
    .param p1, "requestCode"    # I

    .prologue
    .line 655
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 656
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->multiChoiceModeListener:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarMultiChoiceModeListener;

    new-instance v1, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$2;

    invoke-direct {v1, p0}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$2;-><init>(Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;)V

    invoke-virtual {v0, v1}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarMultiChoiceModeListener;->execActionAndFinish(Lme/kuehle/carreport/util/IForEach;)V

    .line 663
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 667
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 672
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 669
    :pswitch_0
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->editCar(I)V

    .line 670
    const/4 v0, 0x1

    goto :goto_0

    .line 667
    :pswitch_data_0
    .packed-switch 0x7f0c0032
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 678
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 679
    iget-boolean v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->carEditInProgress:Z

    if-eqz v0, :cond_0

    .line 680
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->carEditInProgress:Z

    .line 681
    invoke-direct {p0}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->fillList()V

    .line 683
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 687
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 688
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->multiChoiceModeListener:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarMultiChoiceModeListener;

    invoke-virtual {v0}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarMultiChoiceModeListener;->finishActionMode()V

    .line 689
    return-void
.end method
