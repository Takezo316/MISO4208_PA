.class public Lme/kuehle/carreport/gui/ReportActivity;
.super Landroid/app/Activity;
.source "ReportActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field private mCalculationActionMode:Landroid/view/ActionMode$Callback;

.field private mCurrentGraphOption:I

.field private mCurrentReport:Lme/kuehle/carreport/reports/AbstractReport;

.field private mOnSynchronize:Lme/kuehle/carreport/util/backup/Dropbox$OnSynchronizeListener;

.field private mSyncMenuItem:Landroid/view/MenuItem;

.field private navigationListener:Landroid/app/ActionBar$OnNavigationListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    new-instance v0, Lme/kuehle/carreport/gui/ReportActivity$1;

    invoke-direct {v0, p0}, Lme/kuehle/carreport/gui/ReportActivity$1;-><init>(Lme/kuehle/carreport/gui/ReportActivity;)V

    iput-object v0, p0, Lme/kuehle/carreport/gui/ReportActivity;->mOnSynchronize:Lme/kuehle/carreport/util/backup/Dropbox$OnSynchronizeListener;

    .line 87
    new-instance v0, Lme/kuehle/carreport/gui/ReportActivity$2;

    invoke-direct {v0, p0}, Lme/kuehle/carreport/gui/ReportActivity$2;-><init>(Lme/kuehle/carreport/gui/ReportActivity;)V

    iput-object v0, p0, Lme/kuehle/carreport/gui/ReportActivity;->navigationListener:Landroid/app/ActionBar$OnNavigationListener;

    .line 95
    new-instance v0, Lme/kuehle/carreport/gui/ReportActivity$3;

    invoke-direct {v0, p0}, Lme/kuehle/carreport/gui/ReportActivity$3;-><init>(Lme/kuehle/carreport/gui/ReportActivity;)V

    iput-object v0, p0, Lme/kuehle/carreport/gui/ReportActivity;->mCalculationActionMode:Landroid/view/ActionMode$Callback;

    return-void
.end method

.method static synthetic access$000(Lme/kuehle/carreport/gui/ReportActivity;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/gui/ReportActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lme/kuehle/carreport/gui/ReportActivity;->mSyncMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$100(Lme/kuehle/carreport/gui/ReportActivity;)V
    .locals 0
    .param p0, "x0"    # Lme/kuehle/carreport/gui/ReportActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lme/kuehle/carreport/gui/ReportActivity;->updateReport()V

    return-void
.end method

.method static synthetic access$200(Lme/kuehle/carreport/gui/ReportActivity;)Lme/kuehle/carreport/reports/AbstractReport;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/gui/ReportActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lme/kuehle/carreport/gui/ReportActivity;->mCurrentReport:Lme/kuehle/carreport/reports/AbstractReport;

    return-object v0
.end method

.method private getDetailActivityIntent(II)Landroid/content/Intent;
    .locals 2
    .param p1, "edit"    # I
    .param p2, "carId"    # I

    .prologue
    .line 370
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lme/kuehle/carreport/gui/DataDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 371
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "edit"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 372
    const-string v1, "car_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 373
    return-object v0
.end method

.method private loadGraphSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 347
    invoke-virtual {p0, v5}, Lme/kuehle/carreport/gui/ReportActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 348
    .local v0, "prefs":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lme/kuehle/carreport/gui/ReportActivity;->mCurrentReport:Lme/kuehle/carreport/reports/AbstractReport;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "reportName":Ljava/lang/String;
    iget-object v2, p0, Lme/kuehle/carreport/gui/ReportActivity;->mCurrentReport:Lme/kuehle/carreport/reports/AbstractReport;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_show_trend"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lme/kuehle/carreport/reports/AbstractReport;->setShowTrend(Z)V

    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_current_graph_option"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lme/kuehle/carreport/gui/ReportActivity;->mCurrentGraphOption:I

    .line 353
    iget v2, p0, Lme/kuehle/carreport/gui/ReportActivity;->mCurrentGraphOption:I

    iget-object v3, p0, Lme/kuehle/carreport/gui/ReportActivity;->mCurrentReport:Lme/kuehle/carreport/reports/AbstractReport;

    invoke-virtual {v3}, Lme/kuehle/carreport/reports/AbstractReport;->getGraphOptions()[I

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 354
    iput v5, p0, Lme/kuehle/carreport/gui/ReportActivity;->mCurrentGraphOption:I

    .line 356
    :cond_0
    return-void
.end method

.method private saveGraphSettings()V
    .locals 4

    .prologue
    .line 359
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lme/kuehle/carreport/gui/ReportActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 361
    .local v0, "prefsEdit":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lme/kuehle/carreport/gui/ReportActivity;->mCurrentReport:Lme/kuehle/carreport/reports/AbstractReport;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, "reportName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_show_trend"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lme/kuehle/carreport/gui/ReportActivity;->mCurrentReport:Lme/kuehle/carreport/reports/AbstractReport;

    invoke-virtual {v3}, Lme/kuehle/carreport/reports/AbstractReport;->isShowTrend()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_current_graph_option"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lme/kuehle/carreport/gui/ReportActivity;->mCurrentGraphOption:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 366
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 367
    return-void
.end method

.method private updateReport()V
    .locals 8

    .prologue
    .line 377
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/ReportActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 378
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v3

    .line 380
    .local v3, "reportIndex":I
    packed-switch v3, :pswitch_data_0

    .line 405
    :goto_0
    return-void

    .line 382
    :pswitch_0
    new-instance v4, Lme/kuehle/carreport/reports/FuelConsumptionReport;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/ReportActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lme/kuehle/carreport/reports/FuelConsumptionReport;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lme/kuehle/carreport/gui/ReportActivity;->mCurrentReport:Lme/kuehle/carreport/reports/AbstractReport;

    .line 397
    :goto_1
    invoke-direct {p0}, Lme/kuehle/carreport/gui/ReportActivity;->loadGraphSettings()V

    .line 398
    invoke-direct {p0}, Lme/kuehle/carreport/gui/ReportActivity;->updateReportGraph()V

    .line 400
    const v4, 0x7f0c0005

    invoke-virtual {p0, v4}, Lme/kuehle/carreport/gui/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 401
    .local v1, "lstData":Landroid/widget/ListView;
    new-instance v2, Lme/kuehle/carreport/Preferences;

    invoke-direct {v2, p0}, Lme/kuehle/carreport/Preferences;-><init>(Landroid/content/Context;)V

    .line 402
    .local v2, "prefs":Lme/kuehle/carreport/Preferences;
    new-instance v4, Lme/kuehle/carreport/util/gui/SectionListAdapter;

    const v5, 0x7f030011

    iget-object v6, p0, Lme/kuehle/carreport/gui/ReportActivity;->mCurrentReport:Lme/kuehle/carreport/reports/AbstractReport;

    invoke-virtual {v6}, Lme/kuehle/carreport/reports/AbstractReport;->getData()Lme/kuehle/carreport/reports/ReportData;

    move-result-object v6

    invoke-virtual {v6}, Lme/kuehle/carreport/reports/ReportData;->getData()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2}, Lme/kuehle/carreport/Preferences;->isColorSections()Z

    move-result v7

    invoke-direct {v4, p0, v5, v6, v7}, Lme/kuehle/carreport/util/gui/SectionListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Z)V

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 385
    .end local v1    # "lstData":Landroid/widget/ListView;
    .end local v2    # "prefs":Lme/kuehle/carreport/Preferences;
    :pswitch_1
    new-instance v4, Lme/kuehle/carreport/reports/FuelPriceReport;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/ReportActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lme/kuehle/carreport/reports/FuelPriceReport;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lme/kuehle/carreport/gui/ReportActivity;->mCurrentReport:Lme/kuehle/carreport/reports/AbstractReport;

    goto :goto_1

    .line 388
    :pswitch_2
    new-instance v4, Lme/kuehle/carreport/reports/MileageReport;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/ReportActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lme/kuehle/carreport/reports/MileageReport;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lme/kuehle/carreport/gui/ReportActivity;->mCurrentReport:Lme/kuehle/carreport/reports/AbstractReport;

    goto :goto_1

    .line 391
    :pswitch_3
    new-instance v4, Lme/kuehle/carreport/reports/CostsReport;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/ReportActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lme/kuehle/carreport/reports/CostsReport;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lme/kuehle/carreport/gui/ReportActivity;->mCurrentReport:Lme/kuehle/carreport/reports/AbstractReport;

    goto :goto_1

    .line 380
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateReportGraph()V
    .locals 4

    .prologue
    .line 408
    const v2, 0x7f0c0003

    invoke-virtual {p0, v2}, Lme/kuehle/carreport/gui/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 409
    .local v1, "graphHolder":Landroid/widget/FrameLayout;
    const v2, 0x7f0c0004

    invoke-virtual {p0, v2}, Lme/kuehle/carreport/gui/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lme/kuehle/chartlib/ChartView;

    .line 410
    .local v0, "graph":Lme/kuehle/chartlib/ChartView;
    iget-object v2, p0, Lme/kuehle/carreport/gui/ReportActivity;->mCurrentReport:Lme/kuehle/carreport/reports/AbstractReport;

    iget v3, p0, Lme/kuehle/carreport/gui/ReportActivity;->mCurrentGraphOption:I

    invoke-virtual {v2, v3}, Lme/kuehle/carreport/reports/AbstractReport;->getChart(I)Lme/kuehle/chartlib/chart/Chart;

    move-result-object v2

    invoke-virtual {v0, v2}, Lme/kuehle/chartlib/ChartView;->setChart(Lme/kuehle/chartlib/chart/Chart;)V

    .line 411
    invoke-virtual {v0}, Lme/kuehle/chartlib/ChartView;->getChart()Lme/kuehle/chartlib/chart/Chart;

    move-result-object v2

    if-nez v2, :cond_0

    .line 412
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 416
    :goto_0
    return-void

    .line 414
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 193
    invoke-direct {p0}, Lme/kuehle/carreport/gui/ReportActivity;->updateReport()V

    .line 194
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 199
    const v5, 0x7f030003

    invoke-virtual {p0, v5}, Lme/kuehle/carreport/gui/ReportActivity;->setContentView(I)V

    .line 201
    const/high16 v5, 0x7f070000

    const v6, 0x1090009

    invoke-static {p0, v5, v6}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 205
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/ReportActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 206
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 207
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 208
    iget-object v5, p0, Lme/kuehle/carreport/gui/ReportActivity;->navigationListener:Landroid/app/ActionBar$OnNavigationListener;

    invoke-virtual {v0, v1, v5}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 210
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/ReportActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v4

    .line 211
    .local v4, "reportId":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 212
    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "reportId":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 218
    :goto_0
    const v5, 0x7f0c0004

    invoke-virtual {p0, v5}, Lme/kuehle/carreport/gui/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lme/kuehle/chartlib/ChartView;

    .line 219
    .local v2, "graph":Lme/kuehle/chartlib/ChartView;
    const v5, 0x7f030004

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5}, Lme/kuehle/chartlib/ChartView;->setNotEnoughDataView(Landroid/view/View;)V

    .line 221
    return-void

    .line 214
    .end local v2    # "graph":Lme/kuehle/chartlib/ChartView;
    .restart local v4    # "reportId":Ljava/lang/Object;
    :cond_0
    new-instance v3, Lme/kuehle/carreport/Preferences;

    invoke-direct {v3, p0}, Lme/kuehle/carreport/Preferences;-><init>(Landroid/content/Context;)V

    .line 215
    .local v3, "prefs":Lme/kuehle/carreport/Preferences;
    invoke-virtual {v3}, Lme/kuehle/carreport/Preferences;->getDefaultReport()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 225
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/ReportActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 226
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0b0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 227
    const v1, 0x7f0c0033

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lme/kuehle/carreport/gui/ReportActivity;->mSyncMenuItem:Landroid/view/MenuItem;

    .line 228
    iget-object v1, p0, Lme/kuehle/carreport/gui/ReportActivity;->mSyncMenuItem:Landroid/view/MenuItem;

    invoke-static {}, Lme/kuehle/carreport/util/backup/Dropbox;->getInstance()Lme/kuehle/carreport/util/backup/Dropbox;

    move-result-object v2

    invoke-virtual {v2}, Lme/kuehle/carreport/util/backup/Dropbox;->isLinked()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 229
    invoke-static {}, Lme/kuehle/carreport/util/backup/Dropbox;->getInstance()Lme/kuehle/carreport/util/backup/Dropbox;

    move-result-object v1

    invoke-virtual {v1}, Lme/kuehle/carreport/util/backup/Dropbox;->isSynchronisationInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lme/kuehle/carreport/gui/ReportActivity;->mSyncMenuItem:Landroid/view/MenuItem;

    const/high16 v2, 0x7f030000

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 233
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 238
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0c003a

    if-ne v2, v3, :cond_1

    .line 239
    iget-object v2, p0, Lme/kuehle/carreport/gui/ReportActivity;->mCurrentReport:Lme/kuehle/carreport/reports/AbstractReport;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Lme/kuehle/carreport/reports/AbstractReport;->setShowTrend(Z)V

    .line 240
    invoke-direct {p0}, Lme/kuehle/carreport/gui/ReportActivity;->saveGraphSettings()V

    .line 241
    invoke-direct {p0}, Lme/kuehle/carreport/gui/ReportActivity;->updateReportGraph()V

    .line 249
    :goto_0
    return v1

    .line 243
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    const v3, 0x7f0c003b

    if-ne v2, v3, :cond_2

    .line 244
    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result v0

    iput v0, p0, Lme/kuehle/carreport/gui/ReportActivity;->mCurrentGraphOption:I

    .line 245
    invoke-direct {p0}, Lme/kuehle/carreport/gui/ReportActivity;->saveGraphSettings()V

    .line 246
    invoke-direct {p0}, Lme/kuehle/carreport/gui/ReportActivity;->updateReportGraph()V

    goto :goto_0

    :cond_2
    move v1, v0

    .line 249
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 255
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 275
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 276
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4, v5}, Lme/kuehle/carreport/gui/ReportActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 279
    :goto_0
    return v3

    .line 257
    :pswitch_1
    invoke-static {}, Lme/kuehle/carreport/util/backup/Dropbox;->getInstance()Lme/kuehle/carreport/util/backup/Dropbox;

    move-result-object v4

    invoke-virtual {v4}, Lme/kuehle/carreport/util/backup/Dropbox;->synchronize()V

    goto :goto_0

    .line 260
    :pswitch_2
    iget-object v4, p0, Lme/kuehle/carreport/gui/ReportActivity;->mCalculationActionMode:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, v4}, Lme/kuehle/carreport/gui/ReportActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto :goto_0

    .line 263
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lme/kuehle/carreport/gui/HelpActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .local v0, "intentData":Landroid/content/Intent;
    invoke-virtual {p0, v0, v5}, Lme/kuehle/carreport/gui/ReportActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 267
    .end local v0    # "intentData":Landroid/content/Intent;
    :pswitch_4
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lme/kuehle/carreport/gui/PreferencesActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    .local v2, "intentPrefs":Landroid/content/Intent;
    invoke-virtual {p0, v2, v5}, Lme/kuehle/carreport/gui/ReportActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 271
    .end local v2    # "intentPrefs":Landroid/content/Intent;
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lme/kuehle/carreport/gui/HelpActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    .local v1, "intentHelp":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lme/kuehle/carreport/gui/ReportActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 279
    .end local v1    # "intentHelp":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0033
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 420
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 421
    invoke-static {}, Lme/kuehle/carreport/util/backup/Dropbox;->getInstance()Lme/kuehle/carreport/util/backup/Dropbox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/kuehle/carreport/util/backup/Dropbox;->setSynchronisationCallback(Lme/kuehle/carreport/util/backup/Dropbox$OnSynchronizeListener;)V

    .line 422
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 16
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 286
    new-instance v12, Lme/kuehle/carreport/Preferences;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lme/kuehle/carreport/Preferences;-><init>(Landroid/content/Context;)V

    .line 287
    .local v12, "prefs":Lme/kuehle/carreport/Preferences;
    invoke-static {}, Lme/kuehle/carreport/db/Car;->getAll()[Lme/kuehle/carreport/db/Car;

    move-result-object v4

    .line 289
    .local v4, "cars":[Lme/kuehle/carreport/db/Car;
    const/4 v14, 0x2

    new-array v9, v14, [Landroid/view/MenuItem;

    const/4 v14, 0x0

    const v15, 0x7f0c0034

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    aput-object v15, v9, v14

    const/4 v14, 0x1

    const v15, 0x7f0c0035

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    aput-object v15, v9, v14

    .line 291
    .local v9, "items":[Landroid/view/MenuItem;
    move-object v1, v9

    .local v1, "arr$":[Landroid/view/MenuItem;
    array-length v10, v1

    .local v10, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v6, v5

    .end local v1    # "arr$":[Landroid/view/MenuItem;
    .end local v5    # "i$":I
    .end local v10    # "len$":I
    .local v6, "i$":I
    :goto_0
    if-ge v6, v10, :cond_3

    aget-object v8, v1, v6

    .line 292
    .local v8, "item":Landroid/view/MenuItem;
    invoke-interface {v8}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v13

    .line 293
    .local v13, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v13}, Landroid/view/SubMenu;->clear()V

    .line 295
    array-length v14, v4

    const/4 v15, 0x1

    if-eq v14, v15, :cond_0

    invoke-virtual {v12}, Lme/kuehle/carreport/Preferences;->isShowCarMenu()Z

    move-result v14

    if-nez v14, :cond_2

    .line 296
    :cond_0
    const/4 v14, 0x0

    invoke-virtual {v12}, Lme/kuehle/carreport/Preferences;->getDefaultCar()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lme/kuehle/carreport/gui/ReportActivity;->getDetailActivityIntent(II)Landroid/content/Intent;

    move-result-object v14

    invoke-interface {v8, v14}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 291
    .end local v6    # "i$":I
    :cond_1
    add-int/lit8 v5, v6, 0x1

    .restart local v5    # "i$":I
    move v6, v5

    .end local v5    # "i$":I
    .restart local v6    # "i$":I
    goto :goto_0

    .line 300
    :cond_2
    const/4 v14, 0x0

    invoke-interface {v8, v14}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 301
    move-object v2, v4

    .local v2, "arr$":[Lme/kuehle/carreport/db/Car;
    array-length v11, v2

    .local v11, "len$":I
    const/4 v5, 0x0

    .end local v6    # "i$":I
    .restart local v5    # "i$":I
    :goto_1
    if-ge v5, v11, :cond_1

    aget-object v3, v2, v5

    .line 302
    .local v3, "car":Lme/kuehle/carreport/db/Car;
    const/4 v14, 0x0

    invoke-virtual {v3}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lme/kuehle/carreport/gui/ReportActivity;->getDetailActivityIntent(II)Landroid/content/Intent;

    move-result-object v7

    .line 305
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Lme/kuehle/carreport/db/Car;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v7}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 301
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 310
    .end local v2    # "arr$":[Lme/kuehle/carreport/db/Car;
    .end local v3    # "car":Lme/kuehle/carreport/db/Car;
    .end local v5    # "i$":I
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "item":Landroid/view/MenuItem;
    .end local v11    # "len$":I
    .end local v13    # "subMenu":Landroid/view/SubMenu;
    .restart local v6    # "i$":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lme/kuehle/carreport/gui/ReportActivity;->mCurrentReport:Lme/kuehle/carreport/reports/AbstractReport;

    if-eqz v14, :cond_4

    .line 311
    const v14, 0x7f0c0037

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lme/kuehle/carreport/gui/ReportActivity;->mCurrentReport:Lme/kuehle/carreport/reports/AbstractReport;

    invoke-virtual {v14}, Lme/kuehle/carreport/reports/AbstractReport;->getCalculationOptions()[Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;

    move-result-object v14

    array-length v14, v14

    if-lez v14, :cond_5

    const/4 v14, 0x1

    :goto_2
    invoke-interface {v15, v14}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 315
    :cond_4
    const/4 v14, 0x1

    return v14

    .line 311
    :cond_5
    const/4 v14, 0x0

    goto :goto_2
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 426
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 427
    iget-object v0, p0, Lme/kuehle/carreport/gui/ReportActivity;->mSyncMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lme/kuehle/carreport/gui/ReportActivity;->mSyncMenuItem:Landroid/view/MenuItem;

    invoke-static {}, Lme/kuehle/carreport/util/backup/Dropbox;->getInstance()Lme/kuehle/carreport/util/backup/Dropbox;

    move-result-object v1

    invoke-virtual {v1}, Lme/kuehle/carreport/util/backup/Dropbox;->isLinked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 430
    :cond_0
    invoke-static {}, Lme/kuehle/carreport/util/backup/Dropbox;->getInstance()Lme/kuehle/carreport/util/backup/Dropbox;

    move-result-object v0

    iget-object v1, p0, Lme/kuehle/carreport/gui/ReportActivity;->mOnSynchronize:Lme/kuehle/carreport/util/backup/Dropbox$OnSynchronizeListener;

    invoke-virtual {v0, v1}, Lme/kuehle/carreport/util/backup/Dropbox;->setSynchronisationCallback(Lme/kuehle/carreport/util/backup/Dropbox$OnSynchronizeListener;)V

    .line 431
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 320
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/ReportActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 321
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public showReportOptions(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v9, 0x7f0c003b

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 325
    new-instance v4, Landroid/widget/PopupMenu;

    invoke-direct {v4, p0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 326
    .local v4, "popup":Landroid/widget/PopupMenu;
    const v5, 0x7f0b0004

    invoke-virtual {v4, v5}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 327
    invoke-virtual {v4, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 329
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 330
    .local v3, "menu":Landroid/view/Menu;
    const v5, 0x7f0c003a

    invoke-interface {v3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 331
    .local v2, "item":Landroid/view/MenuItem;
    iget-object v5, p0, Lme/kuehle/carreport/gui/ReportActivity;->mCurrentReport:Lme/kuehle/carreport/reports/AbstractReport;

    invoke-virtual {v5}, Lme/kuehle/carreport/reports/AbstractReport;->isShowTrend()Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 333
    iget-object v5, p0, Lme/kuehle/carreport/gui/ReportActivity;->mCurrentReport:Lme/kuehle/carreport/reports/AbstractReport;

    invoke-virtual {v5}, Lme/kuehle/carreport/reports/AbstractReport;->getGraphOptions()[I

    move-result-object v0

    .line 334
    .local v0, "graphOptions":[I
    array-length v5, v0

    const/4 v8, 0x2

    if-lt v5, v8, :cond_2

    .line 335
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_1

    .line 336
    aget v5, v0, v1

    invoke-interface {v3, v9, v7, v1, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 338
    iget v5, p0, Lme/kuehle/carreport/gui/ReportActivity;->mCurrentGraphOption:I

    if-ne v1, v5, :cond_0

    move v5, v6

    :goto_1
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v5, v7

    .line 338
    goto :goto_1

    .line 340
    :cond_1
    invoke-interface {v3, v9, v6, v6}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    .line 343
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->show()V

    .line 344
    return-void
.end method
