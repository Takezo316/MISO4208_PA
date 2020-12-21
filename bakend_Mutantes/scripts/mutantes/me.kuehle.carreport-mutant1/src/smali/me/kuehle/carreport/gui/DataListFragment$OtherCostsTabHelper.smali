.class public Lme/kuehle/carreport/gui/DataListFragment$OtherCostsTabHelper;
.super Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;
.source "DataListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/gui/DataListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OtherCostsTabHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lme/kuehle/carreport/gui/DataListFragment;


# direct methods
.method public constructor <init>(Lme/kuehle/carreport/gui/DataListFragment;Landroid/widget/ListView;)V
    .locals 0
    .param p2, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 91
    iput-object p1, p0, Lme/kuehle/carreport/gui/DataListFragment$OtherCostsTabHelper;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    .line 92
    invoke-direct {p0, p1, p2}, Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;-><init>(Lme/kuehle/carreport/gui/DataListFragment;Landroid/widget/ListView;)V

    .line 93
    return-void
.end method


# virtual methods
.method protected getAlertDeleteManyMessage()I
    .locals 1

    .prologue
    .line 97
    const v0, 0x7f09003a

    return v0
.end method

.method protected getExtraEdit()I
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method protected getIndicator()I
    .locals 1

    .prologue
    .line 102
    const v0, 0x7f09005e

    return v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string v0, "otherCosts"

    return-object v0
.end method

.method protected getView()I
    .locals 1

    .prologue
    .line 112
    const v0, 0x7f0c0021

    return v0
.end method

.method protected updateItems(Lme/kuehle/carreport/db/Car;)V
    .locals 1
    .param p1, "car"    # Lme/kuehle/carreport/db/Car;

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lme/kuehle/carreport/db/OtherCost;->getAllForCar(Lme/kuehle/carreport/db/Car;Z)[Lme/kuehle/carreport/db/OtherCost;

    move-result-object v0

    iput-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment$OtherCostsTabHelper;->mItems:[Lme/kuehle/carreport/db/AbstractItem;

    .line 118
    return-void
.end method

.method protected updateListAdapter()V
    .locals 14

    .prologue
    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    new-instance v5, Lme/kuehle/carreport/Preferences;

    iget-object v8, p0, Lme/kuehle/carreport/gui/DataListFragment$OtherCostsTabHelper;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-virtual {v8}, Lme/kuehle/carreport/gui/DataListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v5, v8}, Lme/kuehle/carreport/Preferences;-><init>(Landroid/content/Context;)V

    .line 125
    .local v5, "prefs":Lme/kuehle/carreport/Preferences;
    iget-object v8, p0, Lme/kuehle/carreport/gui/DataListFragment$OtherCostsTabHelper;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-virtual {v8}, Lme/kuehle/carreport/gui/DataListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .line 127
    .local v2, "dateFmt":Ljava/text/DateFormat;
    iget-object v8, p0, Lme/kuehle/carreport/gui/DataListFragment$OtherCostsTabHelper;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-virtual {v8}, Lme/kuehle/carreport/gui/DataListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070001

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 129
    .local v7, "repIntervals":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v8, p0, Lme/kuehle/carreport/gui/DataListFragment$OtherCostsTabHelper;->mItems:[Lme/kuehle/carreport/db/AbstractItem;

    array-length v8, v8

    if-ge v3, v8, :cond_2

    .line 130
    iget-object v8, p0, Lme/kuehle/carreport/gui/DataListFragment$OtherCostsTabHelper;->mItems:[Lme/kuehle/carreport/db/AbstractItem;

    aget-object v4, v8, v3

    check-cast v4, Lme/kuehle/carreport/db/OtherCost;

    .line 131
    .local v4, "other":Lme/kuehle/carreport/db/OtherCost;
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 132
    .local v1, "dataItem":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const v8, 0x7f0c0024

    invoke-virtual {v4}, Lme/kuehle/carreport/db/OtherCost;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    const v8, 0x7f0c0026

    invoke-virtual {v4}, Lme/kuehle/carreport/db/OtherCost;->getDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    invoke-virtual {v4}, Lme/kuehle/carreport/db/OtherCost;->getMileage()I

    move-result v8

    const/4 v9, -0x1

    if-le v8, v9, :cond_0

    .line 135
    const v8, 0x7f0c002a

    const-string v9, "%d %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v4}, Lme/kuehle/carreport/db/OtherCost;->getMileage()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v5}, Lme/kuehle/carreport/Preferences;->getUnitDistance()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    :cond_0
    const v8, 0x7f0c002b

    const-string v9, "%.2f %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v4}, Lme/kuehle/carreport/db/OtherCost;->getPrice()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v5}, Lme/kuehle/carreport/Preferences;->getUnitCurrency()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 144
    const v8, 0x7f0c002c

    invoke-virtual {v4}, Lme/kuehle/carreport/db/OtherCost;->getRecurrence()Lme/kuehle/carreport/util/Recurrence;

    move-result-object v9

    invoke-virtual {v9}, Lme/kuehle/carreport/util/Recurrence;->getInterval()Lme/kuehle/carreport/util/RecurrenceInterval;

    move-result-object v9

    invoke-virtual {v9}, Lme/kuehle/carreport/util/RecurrenceInterval;->getValue()I

    move-result v9

    aget-object v9, v7, v9

    invoke-virtual {v1, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    invoke-virtual {v4}, Lme/kuehle/carreport/db/OtherCost;->getRecurrence()Lme/kuehle/carreport/util/Recurrence;

    move-result-object v8

    invoke-virtual {v8}, Lme/kuehle/carreport/util/Recurrence;->getInterval()Lme/kuehle/carreport/util/RecurrenceInterval;

    move-result-object v8

    sget-object v9, Lme/kuehle/carreport/util/RecurrenceInterval;->ONCE:Lme/kuehle/carreport/util/RecurrenceInterval;

    invoke-virtual {v8, v9}, Lme/kuehle/carreport/util/RecurrenceInterval;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 148
    invoke-virtual {v4}, Lme/kuehle/carreport/db/OtherCost;->getRecurrence()Lme/kuehle/carreport/util/Recurrence;

    move-result-object v8

    invoke-virtual {v4}, Lme/kuehle/carreport/db/OtherCost;->getDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Lme/kuehle/carreport/util/Recurrence;->getRecurrencesSince(Ljava/util/Date;)I

    move-result v6

    .line 150
    .local v6, "recurrences":I
    const v8, 0x7f0c0028

    const-string v9, "%.2f %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v4}, Lme/kuehle/carreport/db/OtherCost;->getPrice()F

    move-result v12

    int-to-float v13, v6

    mul-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v5}, Lme/kuehle/carreport/Preferences;->getUnitCurrency()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 154
    const v8, 0x7f0c0029

    const-string v9, "x%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 157
    .end local v6    # "recurrences":I
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 160
    .end local v1    # "dataItem":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v4    # "other":Lme/kuehle/carreport/db/OtherCost;
    :cond_2
    iget-object v8, p0, Lme/kuehle/carreport/gui/DataListFragment$OtherCostsTabHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    check-cast v8, Lme/kuehle/carreport/gui/DataListFragment$DataListAdapter;

    invoke-virtual {v8, v0}, Lme/kuehle/carreport/gui/DataListFragment$DataListAdapter;->setData(Ljava/util/ArrayList;)V

    .line 161
    return-void
.end method
