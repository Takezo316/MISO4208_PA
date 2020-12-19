.class public Lme/kuehle/carreport/gui/DataListFragment;
.super Landroid/app/Fragment;
.source "DataListFragment.java"

# interfaces
.implements Lme/kuehle/carreport/util/gui/MessageDialogFragment$MessageDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kuehle/carreport/gui/DataListFragment$DataListAdapter;,
        Lme/kuehle/carreport/gui/DataListFragment$RefuelingsTabHelper;,
        Lme/kuehle/carreport/gui/DataListFragment$OtherCostsTabHelper;,
        Lme/kuehle/carreport/gui/DataListFragment$Callback;,
        Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;
    }
.end annotation


# static fields
.field private static final DELETE_REQUEST_CODE:I = 0x0

.field private static final STATE_CURRENT_CAR:Ljava/lang/String; = "current_car"

.field private static final STATE_CURRENT_ITEM:Ljava/lang/String; = "current_position"

.field private static final STATE_CURRENT_TAB:Ljava/lang/String; = "current_tab"


# instance fields
.field private dontStartActionMode:Z

.field private mActionMode:Landroid/view/ActionMode;

.field private mActivateOnClick:Z

.field private mCallback:Lme/kuehle/carreport/gui/DataListFragment$Callback;

.field private mCars:[Lme/kuehle/carreport/db/Car;

.field private mCurrentCar:Lme/kuehle/carreport/db/Car;

.field private mCurrentItem:I

.field private mCurrentTab:Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;

.field private mListNavigationCallback:Landroid/app/ActionBar$OnNavigationListener;

.field private mMultiChoiceModeListener:Landroid/widget/AbsListView$MultiChoiceModeListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabs:[Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 336
    iput-object v2, p0, Lme/kuehle/carreport/gui/DataListFragment;->mCurrentCar:Lme/kuehle/carreport/db/Car;

    .line 342
    const/4 v0, -0x1

    iput v0, p0, Lme/kuehle/carreport/gui/DataListFragment;->mCurrentItem:I

    .line 343
    iput-boolean v1, p0, Lme/kuehle/carreport/gui/DataListFragment;->mActivateOnClick:Z

    .line 344
    iput-object v2, p0, Lme/kuehle/carreport/gui/DataListFragment;->mActionMode:Landroid/view/ActionMode;

    .line 345
    iput-boolean v1, p0, Lme/kuehle/carreport/gui/DataListFragment;->dontStartActionMode:Z

    .line 349
    new-instance v0, Lme/kuehle/carreport/gui/DataListFragment$1;

    invoke-direct {v0, p0}, Lme/kuehle/carreport/gui/DataListFragment$1;-><init>(Lme/kuehle/carreport/gui/DataListFragment;)V

    iput-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 359
    new-instance v0, Lme/kuehle/carreport/gui/DataListFragment$2;

    invoke-direct {v0, p0}, Lme/kuehle/carreport/gui/DataListFragment$2;-><init>(Lme/kuehle/carreport/gui/DataListFragment;)V

    iput-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 370
    new-instance v0, Lme/kuehle/carreport/gui/DataListFragment$3;

    invoke-direct {v0, p0}, Lme/kuehle/carreport/gui/DataListFragment$3;-><init>(Lme/kuehle/carreport/gui/DataListFragment;)V

    iput-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment;->mMultiChoiceModeListener:Landroid/widget/AbsListView$MultiChoiceModeListener;

    .line 426
    new-instance v0, Lme/kuehle/carreport/gui/DataListFragment$4;

    invoke-direct {v0, p0}, Lme/kuehle/carreport/gui/DataListFragment$4;-><init>(Lme/kuehle/carreport/gui/DataListFragment;)V

    iput-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment;->mListNavigationCallback:Landroid/app/ActionBar$OnNavigationListener;

    return-void
.end method

.method static synthetic access$000(Lme/kuehle/carreport/gui/DataListFragment;)Lme/kuehle/carreport/gui/DataListFragment$Callback;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/gui/DataListFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment;->mCallback:Lme/kuehle/carreport/gui/DataListFragment$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lme/kuehle/carreport/gui/DataListFragment;)Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/gui/DataListFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment;->mCurrentTab:Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;

    return-object v0
.end method

.method static synthetic access$102(Lme/kuehle/carreport/gui/DataListFragment;Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;)Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;
    .locals 0
    .param p0, "x0"    # Lme/kuehle/carreport/gui/DataListFragment;
    .param p1, "x1"    # Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;

    .prologue
    .line 56
    iput-object p1, p0, Lme/kuehle/carreport/gui/DataListFragment;->mCurrentTab:Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;

    return-object p1
.end method

.method static synthetic access$200(Lme/kuehle/carreport/gui/DataListFragment;)[Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/gui/DataListFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment;->mTabs:[Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;

    return-object v0
.end method

.method static synthetic access$300(Lme/kuehle/carreport/gui/DataListFragment;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/gui/DataListFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$400(Lme/kuehle/carreport/gui/DataListFragment;)I
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/gui/DataListFragment;

    .prologue
    .line 56
    iget v0, p0, Lme/kuehle/carreport/gui/DataListFragment;->mCurrentItem:I

    return v0
.end method

.method static synthetic access$402(Lme/kuehle/carreport/gui/DataListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lme/kuehle/carreport/gui/DataListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lme/kuehle/carreport/gui/DataListFragment;->mCurrentItem:I

    return p1
.end method

.method static synthetic access$500(Lme/kuehle/carreport/gui/DataListFragment;)Lme/kuehle/carreport/db/Car;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/gui/DataListFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment;->mCurrentCar:Lme/kuehle/carreport/db/Car;

    return-object v0
.end method

.method static synthetic access$502(Lme/kuehle/carreport/gui/DataListFragment;Lme/kuehle/carreport/db/Car;)Lme/kuehle/carreport/db/Car;
    .locals 0
    .param p0, "x0"    # Lme/kuehle/carreport/gui/DataListFragment;
    .param p1, "x1"    # Lme/kuehle/carreport/db/Car;

    .prologue
    .line 56
    iput-object p1, p0, Lme/kuehle/carreport/gui/DataListFragment;->mCurrentCar:Lme/kuehle/carreport/db/Car;

    return-object p1
.end method

.method static synthetic access$600(Lme/kuehle/carreport/gui/DataListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/gui/DataListFragment;

    .prologue
    .line 56
    iget-boolean v0, p0, Lme/kuehle/carreport/gui/DataListFragment;->dontStartActionMode:Z

    return v0
.end method

.method static synthetic access$602(Lme/kuehle/carreport/gui/DataListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lme/kuehle/carreport/gui/DataListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lme/kuehle/carreport/gui/DataListFragment;->dontStartActionMode:Z

    return p1
.end method

.method static synthetic access$702(Lme/kuehle/carreport/gui/DataListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lme/kuehle/carreport/gui/DataListFragment;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 56
    iput-object p1, p0, Lme/kuehle/carreport/gui/DataListFragment;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$800(Lme/kuehle/carreport/gui/DataListFragment;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/gui/DataListFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$900(Lme/kuehle/carreport/gui/DataListFragment;)[Lme/kuehle/carreport/db/Car;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/gui/DataListFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment;->mCars:[Lme/kuehle/carreport/db/Car;

    return-object v0
.end method

.method private addTab(Ljava/lang/String;II)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "indicatorId"    # I
    .param p3, "contentId"    # I

    .prologue
    .line 437
    iget-object v1, p0, Lme/kuehle/carreport/gui/DataListFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 438
    .local v0, "tabSpec":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {p0, p2}, Lme/kuehle/carreport/gui/DataListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 439
    invoke-virtual {v0, p3}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 440
    iget-object v1, p0, Lme/kuehle/carreport/gui/DataListFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 441
    return-void
.end method

.method private selectCarById(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 555
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 556
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    iget-object v2, p0, Lme/kuehle/carreport/gui/DataListFragment;->mCars:[Lme/kuehle/carreport/db/Car;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 557
    iget-object v2, p0, Lme/kuehle/carreport/gui/DataListFragment;->mCars:[Lme/kuehle/carreport/db/Car;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 558
    iget-object v2, p0, Lme/kuehle/carreport/gui/DataListFragment;->mCars:[Lme/kuehle/carreport/db/Car;

    aget-object v2, v2, v1

    iput-object v2, p0, Lme/kuehle/carreport/gui/DataListFragment;->mCurrentCar:Lme/kuehle/carreport/db/Car;

    .line 559
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 556
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 562
    :cond_1
    return-void
.end method


# virtual methods
.method public getCurrentCar()Lme/kuehle/carreport/db/Car;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment;->mCurrentCar:Lme/kuehle/carreport/db/Car;

    return-object v0
.end method

.method public isItemActivated()Z
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment;->mCurrentTab:Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;

    iget-object v0, v0, Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 453
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 455
    :try_start_0
    move-object v0, p1

    check-cast v0, Lme/kuehle/carreport/gui/DataListFragment$Callback;

    move-object v2, v0

    iput-object v2, p0, Lme/kuehle/carreport/gui/DataListFragment;->mCallback:Lme/kuehle/carreport/gui/DataListFragment$Callback;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    return-void

    .line 456
    :catch_0
    move-exception v1

    .line 457
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement ViewDataListListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 465
    invoke-virtual/range {p0 .. p0}, Lme/kuehle/carreport/gui/DataListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 466
    .local v2, "actionBar":Landroid/app/ActionBar;
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 467
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lme/kuehle/carreport/gui/DataListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x1090009

    invoke-direct {v3, v11, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 469
    .local v3, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-static {}, Lme/kuehle/carreport/db/Car;->getAll()[Lme/kuehle/carreport/db/Car;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lme/kuehle/carreport/gui/DataListFragment;->mCars:[Lme/kuehle/carreport/db/Car;

    .line 470
    move-object/from16 v0, p0

    iget-object v4, v0, Lme/kuehle/carreport/gui/DataListFragment;->mCars:[Lme/kuehle/carreport/db/Car;

    .local v4, "arr$":[Lme/kuehle/carreport/db/Car;
    array-length v7, v4

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v5, v4, v6

    .line 471
    .local v5, "car":Lme/kuehle/carreport/db/Car;
    invoke-virtual {v5}, Lme/kuehle/carreport/db/Car;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 470
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 473
    .end local v5    # "car":Lme/kuehle/carreport/db/Car;
    :cond_0
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 474
    move-object/from16 v0, p0

    iget-object v11, v0, Lme/kuehle/carreport/gui/DataListFragment;->mListNavigationCallback:Landroid/app/ActionBar$OnNavigationListener;

    invoke-virtual {v2, v3, v11}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 477
    new-instance v9, Lme/kuehle/carreport/Preferences;

    invoke-virtual/range {p0 .. p0}, Lme/kuehle/carreport/gui/DataListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v9, v11}, Lme/kuehle/carreport/Preferences;-><init>(Landroid/content/Context;)V

    .line 478
    .local v9, "prefs":Lme/kuehle/carreport/Preferences;
    if-eqz p3, :cond_1

    .line 479
    const-string v11, "current_car"

    invoke-virtual {v9}, Lme/kuehle/carreport/Preferences;->getDefaultCar()I

    move-result v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lme/kuehle/carreport/gui/DataListFragment;->selectCarById(I)V

    .line 485
    :goto_1
    const v11, 0x7f03000c

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v1, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iput-object v11, v0, Lme/kuehle/carreport/gui/DataListFragment;->mTabHost:Landroid/widget/TabHost;

    .line 488
    const/4 v11, 0x2

    new-array v11, v11, [Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;

    move-object/from16 v0, p0

    iput-object v11, v0, Lme/kuehle/carreport/gui/DataListFragment;->mTabs:[Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;

    .line 489
    move-object/from16 v0, p0

    iget-object v12, v0, Lme/kuehle/carreport/gui/DataListFragment;->mTabs:[Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;

    const/4 v13, 0x0

    new-instance v14, Lme/kuehle/carreport/gui/DataListFragment$RefuelingsTabHelper;

    move-object/from16 v0, p0

    iget-object v11, v0, Lme/kuehle/carreport/gui/DataListFragment;->mTabHost:Landroid/widget/TabHost;

    const v15, 0x7f0c0020

    invoke-virtual {v11, v15}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ListView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v11}, Lme/kuehle/carreport/gui/DataListFragment$RefuelingsTabHelper;-><init>(Lme/kuehle/carreport/gui/DataListFragment;Landroid/widget/ListView;)V

    aput-object v14, v12, v13

    .line 491
    move-object/from16 v0, p0

    iget-object v12, v0, Lme/kuehle/carreport/gui/DataListFragment;->mTabs:[Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;

    const/4 v13, 0x1

    new-instance v14, Lme/kuehle/carreport/gui/DataListFragment$OtherCostsTabHelper;

    move-object/from16 v0, p0

    iget-object v11, v0, Lme/kuehle/carreport/gui/DataListFragment;->mTabHost:Landroid/widget/TabHost;

    const v15, 0x7f0c0021

    invoke-virtual {v11, v15}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ListView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v11}, Lme/kuehle/carreport/gui/DataListFragment$OtherCostsTabHelper;-><init>(Lme/kuehle/carreport/gui/DataListFragment;Landroid/widget/ListView;)V

    aput-object v14, v12, v13

    .line 494
    move-object/from16 v0, p0

    iget-object v11, v0, Lme/kuehle/carreport/gui/DataListFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v11}, Landroid/widget/TabHost;->setup()V

    .line 495
    move-object/from16 v0, p0

    iget-object v4, v0, Lme/kuehle/carreport/gui/DataListFragment;->mTabs:[Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;

    .local v4, "arr$":[Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;
    array-length v7, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v7, :cond_2

    aget-object v10, v4, v6

    .line 496
    .local v10, "tab":Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;
    invoke-virtual {v10}, Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;->getTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;->getIndicator()I

    move-result v12

    invoke-virtual {v10}, Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;->getView()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13}, Lme/kuehle/carreport/gui/DataListFragment;->addTab(Ljava/lang/String;II)V

    .line 498
    iget-object v11, v10, Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lme/kuehle/carreport/gui/DataListFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 499
    iget-object v11, v10, Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lme/kuehle/carreport/gui/DataListFragment;->mMultiChoiceModeListener:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 500
    iget-object v11, v10, Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;->mListView:Landroid/widget/ListView;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 495
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 482
    .end local v10    # "tab":Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;
    .local v4, "arr$":[Lme/kuehle/carreport/db/Car;
    :cond_1
    invoke-virtual {v9}, Lme/kuehle/carreport/Preferences;->getDefaultCar()I

    move-result v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lme/kuehle/carreport/gui/DataListFragment;->selectCarById(I)V

    goto/16 :goto_1

    .line 503
    .local v4, "arr$":[Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;
    :cond_2
    const/4 v8, -0x1

    .line 504
    .local v8, "position":I
    if-eqz p3, :cond_3

    .line 505
    move-object/from16 v0, p0

    iget-object v11, v0, Lme/kuehle/carreport/gui/DataListFragment;->mTabHost:Landroid/widget/TabHost;

    const-string v12, "current_tab"

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 507
    const-string v11, "current_position"

    const/4 v12, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 510
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lme/kuehle/carreport/gui/DataListFragment;->mTabs:[Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;

    move-object/from16 v0, p0

    iget-object v12, v0, Lme/kuehle/carreport/gui/DataListFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v12}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v12

    aget-object v11, v11, v12

    move-object/from16 v0, p0

    iput-object v11, v0, Lme/kuehle/carreport/gui/DataListFragment;->mCurrentTab:Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;

    .line 511
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lme/kuehle/carreport/gui/DataListFragment;->setCurrentPosition(I)V

    .line 513
    move-object/from16 v0, p0

    iget-object v11, v0, Lme/kuehle/carreport/gui/DataListFragment;->mTabHost:Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iget-object v12, v0, Lme/kuehle/carreport/gui/DataListFragment;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v11, v12}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 514
    invoke-virtual/range {p0 .. p0}, Lme/kuehle/carreport/gui/DataListFragment;->updateLists()V

    .line 516
    move-object/from16 v0, p0

    iget-object v11, v0, Lme/kuehle/carreport/gui/DataListFragment;->mTabHost:Landroid/widget/TabHost;

    return-object v11
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 521
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 522
    const/4 v0, 0x0

    iput-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment;->mCallback:Lme/kuehle/carreport/gui/DataListFragment$Callback;

    .line 523
    return-void
.end method

.method public onDialogNegativeClick(I)V
    .locals 0
    .param p1, "requestCode"    # I

    .prologue
    .line 528
    return-void
.end method

.method public onDialogPositiveClick(I)V
    .locals 4
    .param p1, "requestCode"    # I

    .prologue
    .line 532
    if-nez p1, :cond_2

    .line 533
    iget-object v2, p0, Lme/kuehle/carreport/gui/DataListFragment;->mCurrentTab:Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;

    iget-object v2, v2, Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 535
    .local v1, "selected":Landroid/util/SparseBooleanArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lme/kuehle/carreport/gui/DataListFragment;->mCurrentTab:Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;

    iget-object v2, v2, Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;->mItems:[Lme/kuehle/carreport/db/AbstractItem;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 536
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 537
    iget-object v2, p0, Lme/kuehle/carreport/gui/DataListFragment;->mCurrentTab:Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;

    iget-object v2, v2, Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;->mItems:[Lme/kuehle/carreport/db/AbstractItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lme/kuehle/carreport/db/AbstractItem;->delete()V

    .line 535
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 540
    :cond_1
    iget-object v2, p0, Lme/kuehle/carreport/gui/DataListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 541
    iget-object v2, p0, Lme/kuehle/carreport/gui/DataListFragment;->mCurrentTab:Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;

    iget-object v3, p0, Lme/kuehle/carreport/gui/DataListFragment;->mCurrentCar:Lme/kuehle/carreport/db/Car;

    invoke-virtual {v2, v3}, Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;->updateItems(Lme/kuehle/carreport/db/Car;)V

    .line 542
    iget-object v2, p0, Lme/kuehle/carreport/gui/DataListFragment;->mCurrentTab:Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;

    invoke-virtual {v2}, Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;->updateListAdapter()V

    .line 544
    .end local v0    # "i":I
    .end local v1    # "selected":Landroid/util/SparseBooleanArray;
    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 548
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 549
    const-string v0, "current_car"

    iget-object v1, p0, Lme/kuehle/carreport/gui/DataListFragment;->mCurrentCar:Lme/kuehle/carreport/db/Car;

    invoke-virtual {v1}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 550
    const-string v0, "current_tab"

    iget-object v1, p0, Lme/kuehle/carreport/gui/DataListFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 551
    const-string v0, "current_position"

    iget v1, p0, Lme/kuehle/carreport/gui/DataListFragment;->mCurrentItem:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 552
    return-void
.end method

.method public setActivateOnItemClick(Z)V
    .locals 0
    .param p1, "activate"    # Z

    .prologue
    .line 565
    iput-boolean p1, p0, Lme/kuehle/carreport/gui/DataListFragment;->mActivateOnClick:Z

    .line 566
    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x1

    .line 569
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 573
    :cond_0
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment;->mCurrentTab:Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;

    iget-object v0, v0, Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lme/kuehle/carreport/gui/DataListFragment;->mCurrentItem:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 574
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-boolean v0, p0, Lme/kuehle/carreport/gui/DataListFragment;->mActivateOnClick:Z

    if-eqz v0, :cond_1

    .line 575
    iput-boolean v3, p0, Lme/kuehle/carreport/gui/DataListFragment;->dontStartActionMode:Z

    .line 576
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment;->mCurrentTab:Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;

    iget-object v0, v0, Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 578
    :cond_1
    iput p1, p0, Lme/kuehle/carreport/gui/DataListFragment;->mCurrentItem:I

    .line 579
    return-void
.end method

.method public updateLists()V
    .locals 5

    .prologue
    .line 582
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lme/kuehle/carreport/gui/DataListFragment;->setCurrentPosition(I)V

    .line 583
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment;->mTabs:[Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;

    .local v0, "arr$":[Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 584
    .local v3, "tab":Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;
    iget-object v4, p0, Lme/kuehle/carreport/gui/DataListFragment;->mCurrentCar:Lme/kuehle/carreport/db/Car;

    invoke-virtual {v3, v4}, Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;->updateItems(Lme/kuehle/carreport/db/Car;)V

    .line 585
    invoke-virtual {v3}, Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;->updateListAdapter()V

    .line 583
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 587
    .end local v3    # "tab":Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;
    :cond_0
    return-void
.end method
