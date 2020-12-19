.class public Lme/kuehle/carreport/gui/DataListFragment$RefuelingsTabHelper;
.super Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;
.source "DataListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/gui/DataListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RefuelingsTabHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lme/kuehle/carreport/gui/DataListFragment;


# direct methods
.method public constructor <init>(Lme/kuehle/carreport/gui/DataListFragment;Landroid/widget/ListView;)V
    .locals 0
    .param p2, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 170
    iput-object p1, p0, Lme/kuehle/carreport/gui/DataListFragment$RefuelingsTabHelper;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    .line 171
    invoke-direct {p0, p1, p2}, Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;-><init>(Lme/kuehle/carreport/gui/DataListFragment;Landroid/widget/ListView;)V

    .line 172
    return-void
.end method


# virtual methods
.method protected getAlertDeleteManyMessage()I
    .locals 1

    .prologue
    .line 176
    const v0, 0x7f090037

    return v0
.end method

.method protected getExtraEdit()I
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method protected getIndicator()I
    .locals 1

    .prologue
    .line 181
    const v0, 0x7f09005d

    return v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const-string v0, "refuelings"

    return-object v0
.end method

.method protected getView()I
    .locals 1

    .prologue
    .line 191
    const v0, 0x7f0c0020

    return v0
.end method

.method protected updateItems(Lme/kuehle/carreport/db/Car;)V
    .locals 1
    .param p1, "car"    # Lme/kuehle/carreport/db/Car;

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lme/kuehle/carreport/db/Refueling;->getAllForCar(Lme/kuehle/carreport/db/Car;Z)[Lme/kuehle/carreport/db/Refueling;

    move-result-object v0

    iput-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment$RefuelingsTabHelper;->mItems:[Lme/kuehle/carreport/db/AbstractItem;

    .line 197
    return-void
.end method

.method protected updateListAdapter()V
    .locals 17

    .prologue
    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    new-instance v9, Lme/kuehle/carreport/Preferences;

    move-object/from16 v0, p0

    iget-object v11, v0, Lme/kuehle/carreport/gui/DataListFragment$RefuelingsTabHelper;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-virtual {v11}, Lme/kuehle/carreport/gui/DataListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v9, v11}, Lme/kuehle/carreport/Preferences;-><init>(Landroid/content/Context;)V

    .line 204
    .local v9, "prefs":Lme/kuehle/carreport/Preferences;
    move-object/from16 v0, p0

    iget-object v11, v0, Lme/kuehle/carreport/gui/DataListFragment$RefuelingsTabHelper;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-virtual {v11}, Lme/kuehle/carreport/gui/DataListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    .line 206
    .local v3, "dateFmt":Ljava/text/DateFormat;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lme/kuehle/carreport/gui/DataListFragment$RefuelingsTabHelper;->mItems:[Lme/kuehle/carreport/db/AbstractItem;

    array-length v11, v11

    if-ge v6, v11, :cond_5

    .line 207
    move-object/from16 v0, p0

    iget-object v11, v0, Lme/kuehle/carreport/gui/DataListFragment$RefuelingsTabHelper;->mItems:[Lme/kuehle/carreport/db/AbstractItem;

    aget-object v10, v11, v6

    check-cast v10, Lme/kuehle/carreport/db/Refueling;

    .line 208
    .local v10, "refueling":Lme/kuehle/carreport/db/Refueling;
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 210
    .local v2, "dataItem":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const v11, 0x7f0c0024

    move-object/from16 v0, p0

    iget-object v12, v0, Lme/kuehle/carreport/gui/DataListFragment$RefuelingsTabHelper;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    const v13, 0x7f090030

    invoke-virtual {v12, v13}, Lme/kuehle/carreport/gui/DataListFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 212
    invoke-virtual {v10}, Lme/kuehle/carreport/db/Refueling;->getFuelType()Lme/kuehle/carreport/db/FuelType;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 213
    const v11, 0x7f0c0025

    invoke-virtual {v10}, Lme/kuehle/carreport/db/Refueling;->getFuelType()Lme/kuehle/carreport/db/FuelType;

    move-result-object v12

    invoke-virtual {v12}, Lme/kuehle/carreport/db/FuelType;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 216
    :cond_0
    const v11, 0x7f0c0026

    invoke-virtual {v10}, Lme/kuehle/carreport/db/Refueling;->getDate()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 218
    const v11, 0x7f0c002a

    const-string v12, "%d %s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v10}, Lme/kuehle/carreport/db/Refueling;->getMileage()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v9}, Lme/kuehle/carreport/Preferences;->getUnitDistance()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 222
    add-int/lit8 v11, v6, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lme/kuehle/carreport/gui/DataListFragment$RefuelingsTabHelper;->mItems:[Lme/kuehle/carreport/db/AbstractItem;

    array-length v12, v12

    if-ge v11, v12, :cond_1

    .line 223
    move-object/from16 v0, p0

    iget-object v11, v0, Lme/kuehle/carreport/gui/DataListFragment$RefuelingsTabHelper;->mItems:[Lme/kuehle/carreport/db/AbstractItem;

    add-int/lit8 v12, v6, 0x1

    aget-object v8, v11, v12

    check-cast v8, Lme/kuehle/carreport/db/Refueling;

    .line 224
    .local v8, "nextRefueling":Lme/kuehle/carreport/db/Refueling;
    const v11, 0x7f0c0027

    const-string v12, "+ %d %s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v10}, Lme/kuehle/carreport/db/Refueling;->getMileage()I

    move-result v15

    invoke-virtual {v8}, Lme/kuehle/carreport/db/Refueling;->getMileage()I

    move-result v16

    sub-int v15, v15, v16

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v9}, Lme/kuehle/carreport/Preferences;->getUnitDistance()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 231
    .end local v8    # "nextRefueling":Lme/kuehle/carreport/db/Refueling;
    :cond_1
    const v11, 0x7f0c002b

    const-string v12, "%.2f %s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v10}, Lme/kuehle/carreport/db/Refueling;->getPrice()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v9}, Lme/kuehle/carreport/Preferences;->getUnitCurrency()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 235
    const v11, 0x7f0c0028

    const-string v12, "%.3f %s/%s"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v10}, Lme/kuehle/carreport/db/Refueling;->getPrice()F

    move-result v15

    invoke-virtual {v10}, Lme/kuehle/carreport/db/Refueling;->getVolume()F

    move-result v16

    div-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v9}, Lme/kuehle/carreport/Preferences;->getUnitCurrency()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-virtual {v9}, Lme/kuehle/carreport/Preferences;->getUnitVolume()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 241
    const v11, 0x7f0c002c

    const-string v12, "%.2f %s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v10}, Lme/kuehle/carreport/db/Refueling;->getVolume()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v9}, Lme/kuehle/carreport/Preferences;->getUnitVolume()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 245
    invoke-virtual {v10}, Lme/kuehle/carreport/db/Refueling;->isPartial()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 246
    const v11, 0x7f0c0029

    move-object/from16 v0, p0

    iget-object v12, v0, Lme/kuehle/carreport/gui/DataListFragment$RefuelingsTabHelper;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    const v13, 0x7f09000d

    invoke-virtual {v12, v13}, Lme/kuehle/carreport/gui/DataListFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 268
    :cond_2
    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 248
    :cond_3
    add-int/lit8 v11, v6, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lme/kuehle/carreport/gui/DataListFragment$RefuelingsTabHelper;->mItems:[Lme/kuehle/carreport/db/AbstractItem;

    array-length v12, v12

    if-ge v11, v12, :cond_2

    .line 249
    invoke-virtual {v10}, Lme/kuehle/carreport/db/Refueling;->getVolume()F

    move-result v5

    .line 250
    .local v5, "diffVolume":F
    add-int/lit8 v7, v6, 0x1

    .local v7, "j":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lme/kuehle/carreport/gui/DataListFragment$RefuelingsTabHelper;->mItems:[Lme/kuehle/carreport/db/AbstractItem;

    array-length v11, v11

    if-ge v7, v11, :cond_2

    .line 251
    move-object/from16 v0, p0

    iget-object v11, v0, Lme/kuehle/carreport/gui/DataListFragment$RefuelingsTabHelper;->mItems:[Lme/kuehle/carreport/db/AbstractItem;

    aget-object v8, v11, v7

    check-cast v8, Lme/kuehle/carreport/db/Refueling;

    .line 252
    .restart local v8    # "nextRefueling":Lme/kuehle/carreport/db/Refueling;
    invoke-virtual {v8}, Lme/kuehle/carreport/db/Refueling;->isPartial()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 253
    invoke-virtual {v8}, Lme/kuehle/carreport/db/Refueling;->getVolume()F

    move-result v11

    add-float/2addr v5, v11

    .line 250
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 255
    :cond_4
    invoke-virtual {v10}, Lme/kuehle/carreport/db/Refueling;->getMileage()I

    move-result v11

    invoke-virtual {v8}, Lme/kuehle/carreport/db/Refueling;->getMileage()I

    move-result v12

    sub-int v4, v11, v12

    .line 257
    .local v4, "diffMileage":I
    const v11, 0x7f0c0029

    const-string v12, "%.2f %s/100%s"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    int-to-float v15, v4

    div-float v15, v5, v15

    const/high16 v16, 0x42c80000    # 100.0f

    mul-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v9}, Lme/kuehle/carreport/Preferences;->getUnitVolume()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-virtual {v9}, Lme/kuehle/carreport/Preferences;->getUnitDistance()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 271
    .end local v2    # "dataItem":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v4    # "diffMileage":I
    .end local v5    # "diffVolume":F
    .end local v7    # "j":I
    .end local v8    # "nextRefueling":Lme/kuehle/carreport/db/Refueling;
    .end local v10    # "refueling":Lme/kuehle/carreport/db/Refueling;
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lme/kuehle/carreport/gui/DataListFragment$RefuelingsTabHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v11}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    check-cast v11, Lme/kuehle/carreport/gui/DataListFragment$DataListAdapter;

    invoke-virtual {v11, v1}, Lme/kuehle/carreport/gui/DataListFragment$DataListAdapter;->setData(Ljava/util/ArrayList;)V

    .line 272
    return-void
.end method
