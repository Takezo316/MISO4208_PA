.class public Lme/kuehle/carreport/reports/FuelConsumptionReport;
.super Lme/kuehle/carreport/reports/AbstractReport;
.source "FuelConsumptionReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kuehle/carreport/reports/FuelConsumptionReport$ReportGraphData;,
        Lme/kuehle/carreport/reports/FuelConsumptionReport$CalculableItem;
    }
.end annotation


# instance fields
.field private minXValue:D

.field private reportData:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lme/kuehle/carreport/reports/AbstractReportGraphData;",
            ">;"
        }
    .end annotation
.end field

.field private showLegend:Z

.field private unit:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-direct/range {p0 .. p1}, Lme/kuehle/carreport/reports/AbstractReport;-><init>(Landroid/content/Context;)V

    .line 99
    new-instance v20, Ljava/util/Vector;

    invoke-direct/range {v20 .. v20}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lme/kuehle/carreport/reports/FuelConsumptionReport;->reportData:Ljava/util/Vector;

    .line 100
    const-wide/high16 v20, 0x43e0000000000000L    # 9.223372036854776E18

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lme/kuehle/carreport/reports/FuelConsumptionReport;->minXValue:D

    .line 110
    new-instance v15, Lme/kuehle/carreport/Preferences;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lme/kuehle/carreport/Preferences;-><init>(Landroid/content/Context;)V

    .line 111
    .local v15, "prefs":Lme/kuehle/carreport/Preferences;
    const-string v20, "%s/100%s"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v15}, Lme/kuehle/carreport/Preferences;->getUnitVolume()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-virtual {v15}, Lme/kuehle/carreport/Preferences;->getUnitDistance()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lme/kuehle/carreport/reports/FuelConsumptionReport;->unit:Ljava/lang/String;

    .line 113
    invoke-virtual {v15}, Lme/kuehle/carreport/Preferences;->isShowLegend()Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lme/kuehle/carreport/reports/FuelConsumptionReport;->showLegend:Z

    .line 117
    invoke-static {}, Lme/kuehle/carreport/db/Car;->getAll()[Lme/kuehle/carreport/db/Car;

    move-result-object v7

    .line 118
    .local v7, "cars":[Lme/kuehle/carreport/db/Car;
    move-object v3, v7

    .local v3, "arr$":[Lme/kuehle/carreport/db/Car;
    array-length v13, v3

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    move v12, v11

    .end local v3    # "arr$":[Lme/kuehle/carreport/db/Car;
    .end local v11    # "i$":I
    .end local v13    # "len$":I
    .local v12, "i$":I
    :goto_0
    if-ge v12, v13, :cond_7

    aget-object v5, v3, v12

    .line 119
    .local v5, "car":Lme/kuehle/carreport/db/Car;
    const/16 v17, 0x0

    .line 121
    .local v17, "sectionAdded":Z
    invoke-static {v5}, Lme/kuehle/carreport/db/FuelType;->getAllForCar(Lme/kuehle/carreport/db/Car;)[Lme/kuehle/carreport/db/FuelType;

    move-result-object v9

    .line 122
    .local v9, "fuelTypes":[Lme/kuehle/carreport/db/FuelType;
    new-instance v19, Landroid/util/SparseArray;

    invoke-direct/range {v19 .. v19}, Landroid/util/SparseArray;-><init>()V

    .line 123
    .local v19, "tanks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Lme/kuehle/carreport/db/FuelType;>;>;"
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    move-object v4, v9

    .local v4, "arr$":[Lme/kuehle/carreport/db/FuelType;
    array-length v14, v4

    .local v14, "len$":I
    const/4 v11, 0x0

    .end local v12    # "i$":I
    .restart local v11    # "i$":I
    :goto_1
    if-ge v11, v14, :cond_1

    aget-object v8, v4, v11

    .line 125
    .local v8, "fuelType":Lme/kuehle/carreport/db/FuelType;
    invoke-virtual {v8}, Lme/kuehle/carreport/db/FuelType;->getTank()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    if-nez v20, :cond_0

    .line 126
    invoke-virtual {v8}, Lme/kuehle/carreport/db/FuelType;->getTank()I

    move-result v20

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v19 .. v21}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    :cond_0
    invoke-virtual {v8}, Lme/kuehle/carreport/db/FuelType;->getTank()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 132
    .end local v8    # "fuelType":Lme/kuehle/carreport/db/FuelType;
    :cond_1
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_5

    .line 133
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    if-nez v20, :cond_3

    const/16 v18, 0x0

    .line 135
    .local v18, "tankFuelTypes":[Lme/kuehle/carreport/db/FuelType;
    :goto_3
    new-instance v6, Lme/kuehle/carreport/reports/FuelConsumptionReport$ReportGraphData;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v6, v0, v1, v5, v2}, Lme/kuehle/carreport/reports/FuelConsumptionReport$ReportGraphData;-><init>(Lme/kuehle/carreport/reports/FuelConsumptionReport;Landroid/content/Context;Lme/kuehle/carreport/db/Car;[Lme/kuehle/carreport/db/FuelType;)V

    .line 137
    .local v6, "carData":Lme/kuehle/carreport/reports/FuelConsumptionReport$ReportGraphData;
    invoke-virtual {v6}, Lme/kuehle/carreport/reports/FuelConsumptionReport$ReportGraphData;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 132
    :cond_2
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 133
    .end local v6    # "carData":Lme/kuehle/carreport/reports/FuelConsumptionReport$ReportGraphData;
    .end local v18    # "tankFuelTypes":[Lme/kuehle/carreport/db/FuelType;
    :cond_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Lme/kuehle/carreport/db/FuelType;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Lme/kuehle/carreport/db/FuelType;

    move-object/from16 v18, v20

    goto :goto_3

    .line 141
    .restart local v6    # "carData":Lme/kuehle/carreport/reports/FuelConsumptionReport$ReportGraphData;
    .restart local v18    # "tankFuelTypes":[Lme/kuehle/carreport/db/FuelType;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/kuehle/carreport/reports/FuelConsumptionReport;->reportData:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 142
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-direct {v0, v5, v1, v2}, Lme/kuehle/carreport/reports/FuelConsumptionReport;->addDataSection(Lme/kuehle/carreport/db/Car;[Lme/kuehle/carreport/db/FuelType;Z)Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;

    move-result-object v16

    .line 143
    .local v16, "section":Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;
    iget-object v0, v6, Lme/kuehle/carreport/reports/FuelConsumptionReport$ReportGraphData;->yValues:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lme/kuehle/carreport/reports/FuelConsumptionReport;->addConsumptionData(Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;Ljava/util/Vector;)V

    .line 144
    const/16 v17, 0x1

    .line 146
    invoke-virtual {v5}, Lme/kuehle/carreport/db/Car;->isSuspended()Z

    move-result v20

    if-nez v20, :cond_2

    .line 147
    move-object/from16 v0, p0

    iget-wide v0, v0, Lme/kuehle/carreport/reports/FuelConsumptionReport;->minXValue:D

    move-wide/from16 v20, v0

    invoke-virtual {v6}, Lme/kuehle/carreport/reports/FuelConsumptionReport$ReportGraphData;->getSeries()Lme/kuehle/chartlib/data/Series;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lme/kuehle/chartlib/data/Series;->minX()D

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->min(DD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lme/kuehle/carreport/reports/FuelConsumptionReport;->minXValue:D

    goto :goto_4

    .line 151
    .end local v6    # "carData":Lme/kuehle/carreport/reports/FuelConsumptionReport$ReportGraphData;
    .end local v16    # "section":Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;
    .end local v18    # "tankFuelTypes":[Lme/kuehle/carreport/db/FuelType;
    :cond_5
    if-nez v17, :cond_6

    .line 152
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v5, v1, v2}, Lme/kuehle/carreport/reports/FuelConsumptionReport;->addDataSection(Lme/kuehle/carreport/db/Car;[Lme/kuehle/carreport/db/FuelType;Z)Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;

    move-result-object v16

    .line 153
    .restart local v16    # "section":Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;
    new-instance v20, Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;

    const v21, 0x7f090066

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    const-string v22, ""

    invoke-direct/range {v20 .. v22}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->addItem(Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;)V

    .line 118
    .end local v16    # "section":Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;
    :cond_6
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    .end local v11    # "i$":I
    .restart local v12    # "i$":I
    goto/16 :goto_0

    .line 157
    .end local v4    # "arr$":[Lme/kuehle/carreport/db/FuelType;
    .end local v5    # "car":Lme/kuehle/carreport/db/Car;
    .end local v9    # "fuelTypes":[Lme/kuehle/carreport/db/FuelType;
    .end local v10    # "i":I
    .end local v14    # "len$":I
    .end local v17    # "sectionAdded":Z
    .end local v19    # "tanks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Lme/kuehle/carreport/db/FuelType;>;>;"
    :cond_7
    return-void
.end method

.method static synthetic access$000(Lme/kuehle/carreport/reports/FuelConsumptionReport;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/reports/FuelConsumptionReport;

    .prologue
    .line 44
    iget-object v0, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport;->unit:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lme/kuehle/carreport/reports/FuelConsumptionReport;[Lme/kuehle/carreport/db/FuelType;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/reports/FuelConsumptionReport;
    .param p1, "x1"    # [Lme/kuehle/carreport/db/FuelType;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lme/kuehle/carreport/reports/FuelConsumptionReport;->getCommaSeparatedFuelTypeNames([Lme/kuehle/carreport/db/FuelType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addConsumptionData(Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;Ljava/util/Vector;)V
    .locals 11
    .param p1, "section"    # Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "numbers":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Double;>;"
    const v10, 0x7f09006c

    const v9, 0x7f09006b

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 160
    new-instance v0, Lme/kuehle/carreport/reports/FuelConsumptionReport$CalculableItem;

    iget-object v1, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport;->context:Landroid/content/Context;

    const v2, 0x7f09006a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lme/kuehle/carreport/util/Calculator;->max(Ljava/util/Vector;)Ljava/lang/Number;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    new-array v5, v8, [Ljava/lang/String;

    iget-object v1, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport;->context:Landroid/content/Context;

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    iget-object v1, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport;->context:Landroid/content/Context;

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lme/kuehle/carreport/reports/FuelConsumptionReport$CalculableItem;-><init>(Lme/kuehle/carreport/reports/FuelConsumptionReport;Ljava/lang/String;D[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->addItem(Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;)V

    .line 164
    new-instance v0, Lme/kuehle/carreport/reports/FuelConsumptionReport$CalculableItem;

    iget-object v1, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport;->context:Landroid/content/Context;

    const v2, 0x7f090069

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lme/kuehle/carreport/util/Calculator;->min(Ljava/util/Vector;)Ljava/lang/Number;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    new-array v5, v8, [Ljava/lang/String;

    iget-object v1, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport;->context:Landroid/content/Context;

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    iget-object v1, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport;->context:Landroid/content/Context;

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lme/kuehle/carreport/reports/FuelConsumptionReport$CalculableItem;-><init>(Lme/kuehle/carreport/reports/FuelConsumptionReport;Ljava/lang/String;D[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->addItem(Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;)V

    .line 168
    new-instance v1, Lme/kuehle/carreport/reports/FuelConsumptionReport$CalculableItem;

    iget-object v0, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport;->context:Landroid/content/Context;

    const v2, 0x7f09006d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lme/kuehle/carreport/util/Calculator;->avg(Ljava/util/Vector;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-direct {v1, p0, v2, v3, v4}, Lme/kuehle/carreport/reports/FuelConsumptionReport$CalculableItem;-><init>(Lme/kuehle/carreport/reports/FuelConsumptionReport;Ljava/lang/String;D)V

    invoke-virtual {p1, v1}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->addItem(Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;)V

    .line 170
    return-void
.end method

.method private addDataSection(Lme/kuehle/carreport/db/Car;[Lme/kuehle/carreport/db/FuelType;Z)Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;
    .locals 8
    .param p1, "car"    # Lme/kuehle/carreport/db/Car;
    .param p2, "fuelTypes"    # [Lme/kuehle/carreport/db/FuelType;
    .param p3, "displayFuelType"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 175
    if-eqz p3, :cond_0

    .line 176
    invoke-direct {p0, p2}, Lme/kuehle/carreport/reports/FuelConsumptionReport;->getCommaSeparatedFuelTypeNames([Lme/kuehle/carreport/db/FuelType;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "fuelTypeName":Ljava/lang/String;
    const-string v2, "%s (%s)"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lme/kuehle/carreport/db/Car;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 182
    .end local v0    # "fuelTypeName":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lme/kuehle/carreport/db/Car;->isSuspended()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 183
    const-string v2, "%s [%s]"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v5

    iget-object v4, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport;->context:Landroid/content/Context;

    const v5, 0x7f090014

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lme/kuehle/carreport/db/Car;->getColor()I

    move-result v3

    const v4, 0x7fffffff

    invoke-virtual {p0, v2, v3, v4}, Lme/kuehle/carreport/reports/FuelConsumptionReport;->addDataSection(Ljava/lang/String;II)Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;

    move-result-object v2

    .line 188
    :goto_1
    return-object v2

    .line 179
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lme/kuehle/carreport/db/Car;->getName()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {p1}, Lme/kuehle/carreport/db/Car;->getColor()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lme/kuehle/carreport/reports/FuelConsumptionReport;->addDataSection(Ljava/lang/String;I)Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;

    move-result-object v2

    goto :goto_1
.end method

.method private getCommaSeparatedFuelTypeNames([Lme/kuehle/carreport/db/FuelType;)Ljava/lang/String;
    .locals 7
    .param p1, "fuelTypes"    # [Lme/kuehle/carreport/db/FuelType;

    .prologue
    .line 193
    if-nez p1, :cond_0

    .line 194
    iget-object v5, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport;->context:Landroid/content/Context;

    const v6, 0x7f090067

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 200
    :goto_0
    return-object v5

    .line 196
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v4, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, "arr$":[Lme/kuehle/carreport/db/FuelType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 198
    .local v1, "fuelType":Lme/kuehle/carreport/db/FuelType;
    invoke-virtual {v1}, Lme/kuehle/carreport/db/FuelType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 200
    .end local v1    # "fuelType":Lme/kuehle/carreport/db/FuelType;
    :cond_1
    const-string v5, ", "

    invoke-static {v5, v4}, Lme/kuehle/carreport/util/Strings;->join(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method public getCalculationOptions()[Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 206
    new-instance v0, Lme/kuehle/carreport/Preferences;

    iget-object v1, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lme/kuehle/carreport/Preferences;-><init>(Landroid/content/Context;)V

    .line 207
    .local v0, "prefs":Lme/kuehle/carreport/Preferences;
    new-array v1, v9, [Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;

    new-instance v2, Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;

    iget-object v3, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport;->context:Landroid/content/Context;

    const v4, 0x7f090077

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lme/kuehle/carreport/Preferences;->getUnitVolume()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lme/kuehle/carreport/Preferences;->getUnitVolume()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;-><init>(Lme/kuehle/carreport/reports/AbstractReport;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v7

    new-instance v2, Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;

    iget-object v3, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport;->context:Landroid/content/Context;

    const v4, 0x7f090078

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lme/kuehle/carreport/Preferences;->getUnitVolume()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0}, Lme/kuehle/carreport/Preferences;->getUnitDistance()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lme/kuehle/carreport/Preferences;->getUnitDistance()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;-><init>(Lme/kuehle/carreport/reports/AbstractReport;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v8

    return-object v1
.end method

.method public getChart(I)Lme/kuehle/chartlib/chart/Chart;
    .locals 11
    .param p1, "option"    # I

    .prologue
    .line 219
    new-instance v2, Lme/kuehle/chartlib/data/Dataset;

    invoke-direct {v2}, Lme/kuehle/chartlib/data/Dataset;-><init>()V

    .line 220
    .local v2, "dataset":Lme/kuehle/chartlib/data/Dataset;
    new-instance v6, Lme/kuehle/chartlib/renderer/RendererList;

    invoke-direct {v6}, Lme/kuehle/chartlib/renderer/RendererList;-><init>()V

    .line 221
    .local v6, "renderers":Lme/kuehle/chartlib/renderer/RendererList;
    new-instance v5, Lme/kuehle/chartlib/renderer/LineRenderer;

    iget-object v8, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport;->context:Landroid/content/Context;

    invoke-direct {v5, v8}, Lme/kuehle/chartlib/renderer/LineRenderer;-><init>(Landroid/content/Context;)V

    .line 222
    .local v5, "renderer":Lme/kuehle/chartlib/renderer/LineRenderer;
    invoke-virtual {v6, v5}, Lme/kuehle/chartlib/renderer/RendererList;->addRenderer(Lme/kuehle/chartlib/renderer/AbstractRenderer;)V

    .line 224
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 225
    .local v7, "reportData":Ljava/util/Vector;, "Ljava/util/Vector<Lme/kuehle/carreport/reports/AbstractReportGraphData;>;"
    invoke-virtual {p0}, Lme/kuehle/carreport/reports/FuelConsumptionReport;->isShowTrend()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 226
    iget-object v8, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport;->reportData:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/kuehle/carreport/reports/AbstractReportGraphData;

    .line 227
    .local v1, "data":Lme/kuehle/carreport/reports/AbstractReportGraphData;
    invoke-virtual {v1}, Lme/kuehle/carreport/reports/AbstractReportGraphData;->createRegressionData()Lme/kuehle/carreport/reports/AbstractReportGraphData;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 230
    .end local v1    # "data":Lme/kuehle/carreport/reports/AbstractReportGraphData;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v8, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport;->reportData:Ljava/util/Vector;

    invoke-virtual {v7, v8}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 231
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 232
    invoke-virtual {v7, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lme/kuehle/carreport/reports/AbstractReportGraphData;

    invoke-virtual {v8}, Lme/kuehle/carreport/reports/AbstractReportGraphData;->getSeries()Lme/kuehle/chartlib/data/Series;

    move-result-object v8

    invoke-virtual {v2, v8}, Lme/kuehle/chartlib/data/Dataset;->add(Lme/kuehle/chartlib/data/Series;)V

    .line 233
    invoke-virtual {v7, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lme/kuehle/carreport/reports/AbstractReportGraphData;

    invoke-virtual {v8, v3, v5}, Lme/kuehle/carreport/reports/AbstractReportGraphData;->applySeriesStyle(ILme/kuehle/chartlib/renderer/AbstractRenderer;)V

    .line 231
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 236
    :cond_1
    new-instance v8, Lme/kuehle/carreport/reports/FuelConsumptionReport$1;

    invoke-direct {v8, p0, v2}, Lme/kuehle/carreport/reports/FuelConsumptionReport$1;-><init>(Lme/kuehle/carreport/reports/FuelConsumptionReport;Lme/kuehle/chartlib/data/Dataset;)V

    invoke-virtual {v5, v8}, Lme/kuehle/chartlib/renderer/LineRenderer;->setOnClickListener(Lme/kuehle/chartlib/renderer/OnClickListener;)V

    .line 262
    new-instance v0, Lme/kuehle/chartlib/chart/Chart;

    iget-object v8, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport;->context:Landroid/content/Context;

    invoke-direct {v0, v8, v2, v6}, Lme/kuehle/chartlib/chart/Chart;-><init>(Landroid/content/Context;Lme/kuehle/chartlib/data/Dataset;Lme/kuehle/chartlib/renderer/RendererList;)V

    .line 263
    .local v0, "chart":Lme/kuehle/chartlib/chart/Chart;
    invoke-virtual {p0, v0}, Lme/kuehle/carreport/reports/FuelConsumptionReport;->applyDefaultChartStyles(Lme/kuehle/chartlib/chart/Chart;)V

    .line 264
    iget-boolean v8, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport;->showLegend:Z

    invoke-virtual {v0, v8}, Lme/kuehle/chartlib/chart/Chart;->setShowLegend(Z)V

    .line 265
    invoke-virtual {p0}, Lme/kuehle/carreport/reports/FuelConsumptionReport;->isShowTrend()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 266
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    if-ge v3, v8, :cond_2

    .line 267
    invoke-virtual {v0}, Lme/kuehle/chartlib/chart/Chart;->getLegend()Lme/kuehle/chartlib/chart/Legend;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v9}, Lme/kuehle/chartlib/chart/Legend;->setSeriesVisible(IZ)V

    .line 266
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 270
    :cond_2
    invoke-virtual {v0}, Lme/kuehle/chartlib/chart/Chart;->getDomainAxis()Lme/kuehle/chartlib/axis/AbstractAxis;

    move-result-object v8

    iget-object v9, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport;->dateLabelFormatter:Lme/kuehle/chartlib/axis/AxisLabelFormatter;

    invoke-virtual {v8, v9}, Lme/kuehle/chartlib/axis/AbstractAxis;->setLabelFormatter(Lme/kuehle/chartlib/axis/AxisLabelFormatter;)V

    .line 271
    invoke-virtual {v0}, Lme/kuehle/chartlib/chart/Chart;->getDomainAxis()Lme/kuehle/chartlib/axis/AbstractAxis;

    move-result-object v8

    iget-wide v9, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport;->minXValue:D

    invoke-virtual {v8, v9, v10}, Lme/kuehle/chartlib/axis/AbstractAxis;->setDefaultBottomBound(D)V

    .line 272
    invoke-virtual {v0}, Lme/kuehle/chartlib/chart/Chart;->getRangeAxis()Lme/kuehle/chartlib/axis/AbstractAxis;

    move-result-object v8

    new-instance v9, Lme/kuehle/chartlib/axis/DecimalAxisLabelFormatter;

    const/4 v10, 0x2

    invoke-direct {v9, v10}, Lme/kuehle/chartlib/axis/DecimalAxisLabelFormatter;-><init>(I)V

    invoke-virtual {v8, v9}, Lme/kuehle/chartlib/axis/AbstractAxis;->setLabelFormatter(Lme/kuehle/chartlib/axis/AxisLabelFormatter;)V

    .line 275
    return-object v0
.end method

.method public getGraphOptions()[I
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x1

    new-array v0, v0, [I

    return-object v0
.end method
