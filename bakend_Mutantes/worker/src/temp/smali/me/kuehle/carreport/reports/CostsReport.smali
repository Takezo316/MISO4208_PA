.class public Lme/kuehle/carreport/reports/CostsReport;
.super Lme/kuehle/carreport/reports/AbstractReport;
.source "CostsReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kuehle/carreport/reports/CostsReport$2;,
        Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;,
        Lme/kuehle/carreport/reports/CostsReport$CalculableItem;
    }
.end annotation


# static fields
.field public static final GRAPH_OPTION_MONTH:I = 0x0

.field public static final GRAPH_OPTION_YEAR:I = 0x1

.field private static final SEC_PER_PERIOD:[J


# instance fields
.field private costsPerMonth:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;",
            ">;"
        }
    .end annotation
.end field

.field private costsPerYear:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;",
            ">;"
        }
    .end annotation
.end field

.field private showLegend:Z

.field private unit:Ljava/lang/String;

.field private visibleBarCount:I

.field private xLabelFormat:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lme/kuehle/carreport/reports/CostsReport;->SEC_PER_PERIOD:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x9a7ec800L
        0x757b12c00L
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 34
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    invoke-direct/range {p0 .. p1}, Lme/kuehle/carreport/reports/AbstractReport;-><init>(Landroid/content/Context;)V

    .line 131
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lme/kuehle/carreport/reports/CostsReport;->costsPerMonth:Landroid/util/SparseArray;

    .line 132
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lme/kuehle/carreport/reports/CostsReport;->costsPerYear:Landroid/util/SparseArray;

    .line 135
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lme/kuehle/carreport/reports/CostsReport;->xLabelFormat:[Ljava/lang/String;

    .line 141
    new-instance v26, Lme/kuehle/carreport/Preferences;

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lme/kuehle/carreport/Preferences;-><init>(Landroid/content/Context;)V

    .line 142
    .local v26, "prefs":Lme/kuehle/carreport/Preferences;
    invoke-virtual/range {v26 .. v26}, Lme/kuehle/carreport/Preferences;->getUnitCurrency()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lme/kuehle/carreport/reports/CostsReport;->unit:Ljava/lang/String;

    .line 143
    invoke-virtual/range {v26 .. v26}, Lme/kuehle/carreport/Preferences;->isShowLegend()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lme/kuehle/carreport/reports/CostsReport;->showLegend:Z

    .line 146
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x1e0

    if-le v2, v3, :cond_0

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/kuehle/carreport/reports/CostsReport;->xLabelFormat:[Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "MMMM, yyyy"

    aput-object v4, v2, v3

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/kuehle/carreport/reports/CostsReport;->xLabelFormat:[Ljava/lang/String;

    const/4 v3, 0x1

    const-string v4, "yyyy"

    aput-object v4, v2, v3

    .line 149
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lme/kuehle/carreport/reports/CostsReport;->visibleBarCount:I

    .line 156
    :goto_0
    invoke-static {}, Lme/kuehle/carreport/db/Car;->getAll()[Lme/kuehle/carreport/db/Car;

    move-result-object v11

    .line 157
    .local v11, "cars":[Lme/kuehle/carreport/db/Car;
    move-object v8, v11

    .local v8, "arr$":[Lme/kuehle/carreport/db/Car;
    array-length v0, v8

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v20, 0x0

    .local v20, "i$":I
    move/from16 v21, v20

    .end local v8    # "arr$":[Lme/kuehle/carreport/db/Car;
    .end local v20    # "i$":I
    .end local v22    # "len$":I
    .local v21, "i$":I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    aget-object v10, v8, v21

    .line 159
    .local v10, "car":Lme/kuehle/carreport/db/Car;
    invoke-virtual {v10}, Lme/kuehle/carreport/db/Car;->isSuspended()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    const-string v2, "%s [%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v10}, Lme/kuehle/carreport/db/Car;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const v5, 0x7f090014

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lme/kuehle/carreport/db/Car;->getColor()I

    move-result v3

    const v4, 0x7fffffff

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lme/kuehle/carreport/reports/CostsReport;->addDataSection(Ljava/lang/String;II)Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;

    move-result-object v30

    .line 168
    .local v30, "section":Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/kuehle/carreport/reports/CostsReport;->costsPerMonth:Landroid/util/SparseArray;

    invoke-virtual {v10}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v3

    new-instance v4, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1, v10, v5}, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;-><init>(Lme/kuehle/carreport/reports/CostsReport;Landroid/content/Context;Lme/kuehle/carreport/db/Car;I)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/kuehle/carreport/reports/CostsReport;->costsPerYear:Landroid/util/SparseArray;

    invoke-virtual {v10}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v3

    new-instance v4, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1, v10, v5}, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;-><init>(Lme/kuehle/carreport/reports/CostsReport;Landroid/content/Context;Lme/kuehle/carreport/db/Car;I)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    const v32, 0x7fffffff

    .line 174
    .local v32, "startMileage":I
    const/high16 v19, -0x80000000

    .line 175
    .local v19, "endMileage":I
    new-instance v31, Lorg/joda/time/DateTime;

    invoke-direct/range {v31 .. v31}, Lorg/joda/time/DateTime;-><init>()V

    .line 177
    .local v31, "startDate":Lorg/joda/time/DateTime;
    invoke-virtual {v10}, Lme/kuehle/carreport/db/Car;->isSuspended()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 178
    new-instance v18, Lorg/joda/time/DateTime;

    invoke-virtual {v10}, Lme/kuehle/carreport/db/Car;->getSuspended()Ljava/util/Date;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    .line 182
    .local v18, "endDate":Lorg/joda/time/DateTime;
    :goto_3
    const-wide/16 v12, 0x0

    .line 184
    .local v12, "costs":D
    const/4 v2, 0x1

    invoke-static {v10, v2}, Lme/kuehle/carreport/db/Refueling;->getAllForCar(Lme/kuehle/carreport/db/Car;Z)[Lme/kuehle/carreport/db/Refueling;

    move-result-object v29

    .line 185
    .local v29, "refuelings":[Lme/kuehle/carreport/db/Refueling;
    const/4 v2, 0x1

    invoke-static {v10, v2}, Lme/kuehle/carreport/db/OtherCost;->getAllForCar(Lme/kuehle/carreport/db/Car;Z)[Lme/kuehle/carreport/db/OtherCost;

    move-result-object v25

    .line 187
    .local v25, "otherCosts":[Lme/kuehle/carreport/db/OtherCost;
    move-object/from16 v0, v29

    array-length v2, v0

    move-object/from16 v0, v25

    array-length v3, v0

    add-int/2addr v2, v3

    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    .line 188
    new-instance v2, Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;

    const v3, 0x7f090066

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->addItem(Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;)V

    .line 157
    .end local v21    # "i$":I
    :goto_4
    add-int/lit8 v20, v21, 0x1

    .restart local v20    # "i$":I
    move/from16 v21, v20

    .end local v20    # "i$":I
    .restart local v21    # "i$":I
    goto/16 :goto_1

    .line 151
    .end local v10    # "car":Lme/kuehle/carreport/db/Car;
    .end local v11    # "cars":[Lme/kuehle/carreport/db/Car;
    .end local v12    # "costs":D
    .end local v18    # "endDate":Lorg/joda/time/DateTime;
    .end local v19    # "endMileage":I
    .end local v21    # "i$":I
    .end local v25    # "otherCosts":[Lme/kuehle/carreport/db/OtherCost;
    .end local v29    # "refuelings":[Lme/kuehle/carreport/db/Refueling;
    .end local v30    # "section":Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;
    .end local v31    # "startDate":Lorg/joda/time/DateTime;
    .end local v32    # "startMileage":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/kuehle/carreport/reports/CostsReport;->xLabelFormat:[Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "MMM, yyyy"

    aput-object v4, v2, v3

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/kuehle/carreport/reports/CostsReport;->xLabelFormat:[Ljava/lang/String;

    const/4 v3, 0x1

    const-string v4, "yyyy"

    aput-object v4, v2, v3

    .line 153
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lme/kuehle/carreport/reports/CostsReport;->visibleBarCount:I

    goto/16 :goto_0

    .line 165
    .restart local v10    # "car":Lme/kuehle/carreport/db/Car;
    .restart local v11    # "cars":[Lme/kuehle/carreport/db/Car;
    .restart local v21    # "i$":I
    :cond_1
    invoke-virtual {v10}, Lme/kuehle/carreport/db/Car;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lme/kuehle/carreport/db/Car;->getColor()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lme/kuehle/carreport/reports/CostsReport;->addDataSection(Ljava/lang/String;I)Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;

    move-result-object v30

    .restart local v30    # "section":Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;
    goto/16 :goto_2

    .line 180
    .restart local v19    # "endMileage":I
    .restart local v31    # "startDate":Lorg/joda/time/DateTime;
    .restart local v32    # "startMileage":I
    :cond_2
    new-instance v18, Lorg/joda/time/DateTime;

    invoke-direct/range {v18 .. v18}, Lorg/joda/time/DateTime;-><init>()V

    .restart local v18    # "endDate":Lorg/joda/time/DateTime;
    goto :goto_3

    .line 193
    .restart local v12    # "costs":D
    .restart local v25    # "otherCosts":[Lme/kuehle/carreport/db/OtherCost;
    .restart local v29    # "refuelings":[Lme/kuehle/carreport/db/Refueling;
    :cond_3
    move-object/from16 v9, v29

    .local v9, "arr$":[Lme/kuehle/carreport/db/Refueling;
    array-length v0, v9

    move/from16 v23, v0

    .local v23, "len$":I
    const/16 v20, 0x0

    .end local v21    # "i$":I
    .restart local v20    # "i$":I
    :goto_5
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    aget-object v28, v9, v20

    .line 194
    .local v28, "refueling":Lme/kuehle/carreport/db/Refueling;
    invoke-virtual/range {v28 .. v28}, Lme/kuehle/carreport/db/Refueling;->getPrice()F

    move-result v2

    float-to-double v2, v2

    add-double/2addr v12, v2

    .line 196
    new-instance v16, Lorg/joda/time/DateTime;

    invoke-virtual/range {v28 .. v28}, Lme/kuehle/carreport/db/Refueling;->getDate()Ljava/util/Date;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    .line 198
    .local v16, "date":Lorg/joda/time/DateTime;
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/kuehle/carreport/reports/CostsReport;->costsPerMonth:Landroid/util/SparseArray;

    invoke-virtual {v10}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;

    invoke-virtual/range {v28 .. v28}, Lme/kuehle/carreport/db/Refueling;->getPrice()F

    move-result v3

    float-to-double v3, v3

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3, v4}, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;->add(Lorg/joda/time/DateTime;D)V

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/kuehle/carreport/reports/CostsReport;->costsPerYear:Landroid/util/SparseArray;

    invoke-virtual {v10}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;

    invoke-virtual/range {v28 .. v28}, Lme/kuehle/carreport/db/Refueling;->getPrice()F

    move-result v3

    float-to-double v3, v3

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3, v4}, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;->add(Lorg/joda/time/DateTime;D)V

    .line 201
    invoke-virtual/range {v28 .. v28}, Lme/kuehle/carreport/db/Refueling;->getMileage()I

    move-result v2

    move/from16 v0, v32

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v32

    .line 202
    invoke-virtual/range {v28 .. v28}, Lme/kuehle/carreport/db/Refueling;->getMileage()I

    move-result v2

    move/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 203
    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTime;->isAfter(Lorg/joda/time/ReadableInstant;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 204
    move-object/from16 v31, v16

    .line 193
    :cond_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 208
    .end local v16    # "date":Lorg/joda/time/DateTime;
    .end local v28    # "refueling":Lme/kuehle/carreport/db/Refueling;
    :cond_5
    move-object/from16 v9, v25

    .local v9, "arr$":[Lme/kuehle/carreport/db/OtherCost;
    array-length v0, v9

    move/from16 v23, v0

    const/16 v20, 0x0

    :goto_6
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    aget-object v24, v9, v20

    .line 209
    .local v24, "otherCost":Lme/kuehle/carreport/db/OtherCost;
    invoke-virtual/range {v24 .. v24}, Lme/kuehle/carreport/db/OtherCost;->getPrice()F

    move-result v2

    invoke-virtual/range {v24 .. v24}, Lme/kuehle/carreport/db/OtherCost;->getRecurrence()Lme/kuehle/carreport/util/Recurrence;

    move-result-object v3

    invoke-virtual/range {v24 .. v24}, Lme/kuehle/carreport/db/OtherCost;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Lme/kuehle/carreport/util/Recurrence;->getRecurrencesSince(Ljava/util/Date;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    add-double/2addr v12, v2

    .line 213
    invoke-virtual/range {v24 .. v24}, Lme/kuehle/carreport/db/OtherCost;->getRecurrence()Lme/kuehle/carreport/util/Recurrence;

    move-result-object v27

    .line 214
    .local v27, "recurrence":Lme/kuehle/carreport/util/Recurrence;
    new-instance v16, Lorg/joda/time/DateTime;

    invoke-virtual/range {v24 .. v24}, Lme/kuehle/carreport/db/OtherCost;->getDate()Ljava/util/Date;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    .line 215
    .restart local v16    # "date":Lorg/joda/time/DateTime;
    :goto_7
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTime;->isBefore(Lorg/joda/time/ReadableInstant;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/kuehle/carreport/reports/CostsReport;->costsPerMonth:Landroid/util/SparseArray;

    invoke-virtual {v10}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;

    invoke-virtual/range {v24 .. v24}, Lme/kuehle/carreport/db/OtherCost;->getPrice()F

    move-result v3

    float-to-double v3, v3

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3, v4}, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;->add(Lorg/joda/time/DateTime;D)V

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/kuehle/carreport/reports/CostsReport;->costsPerYear:Landroid/util/SparseArray;

    invoke-virtual {v10}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;

    invoke-virtual/range {v24 .. v24}, Lme/kuehle/carreport/db/OtherCost;->getPrice()F

    move-result v3

    float-to-double v3, v3

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3, v4}, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;->add(Lorg/joda/time/DateTime;D)V

    .line 220
    sget-object v2, Lme/kuehle/carreport/reports/CostsReport$2;->$SwitchMap$me$kuehle$carreport$util$RecurrenceInterval:[I

    invoke-virtual/range {v27 .. v27}, Lme/kuehle/carreport/util/Recurrence;->getInterval()Lme/kuehle/carreport/util/RecurrenceInterval;

    move-result-object v3

    invoke-virtual {v3}, Lme/kuehle/carreport/util/RecurrenceInterval;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_7

    .line 223
    :pswitch_0
    invoke-static {}, Lorg/joda/time/DateTime;->now()Lorg/joda/time/DateTime;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/joda/time/DateTime;->plusYears(I)Lorg/joda/time/DateTime;

    move-result-object v16

    .line 224
    goto :goto_7

    .line 226
    :pswitch_1
    invoke-virtual/range {v27 .. v27}, Lme/kuehle/carreport/util/Recurrence;->getMultiplier()I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/joda/time/DateTime;->plusDays(I)Lorg/joda/time/DateTime;

    move-result-object v16

    .line 227
    goto :goto_7

    .line 229
    :pswitch_2
    invoke-virtual/range {v27 .. v27}, Lme/kuehle/carreport/util/Recurrence;->getMultiplier()I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/joda/time/DateTime;->plusMonths(I)Lorg/joda/time/DateTime;

    move-result-object v16

    .line 230
    goto :goto_7

    .line 232
    :pswitch_3
    invoke-virtual/range {v27 .. v27}, Lme/kuehle/carreport/util/Recurrence;->getMultiplier()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/joda/time/DateTime;->plusDays(I)Lorg/joda/time/DateTime;

    move-result-object v16

    .line 233
    goto :goto_7

    .line 235
    :pswitch_4
    invoke-virtual/range {v27 .. v27}, Lme/kuehle/carreport/util/Recurrence;->getMultiplier()I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/joda/time/DateTime;->plusYears(I)Lorg/joda/time/DateTime;

    move-result-object v16

    goto/16 :goto_7

    .line 240
    :cond_6
    invoke-virtual/range {v24 .. v24}, Lme/kuehle/carreport/db/OtherCost;->getMileage()I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_7

    .line 241
    invoke-virtual/range {v24 .. v24}, Lme/kuehle/carreport/db/OtherCost;->getMileage()I

    move-result v2

    move/from16 v0, v32

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v32

    .line 243
    invoke-virtual/range {v24 .. v24}, Lme/kuehle/carreport/db/OtherCost;->getMileage()I

    move-result v2

    move/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 245
    :cond_7
    invoke-virtual/range {v24 .. v24}, Lme/kuehle/carreport/db/OtherCost;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTime;->isAfter(J)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 246
    new-instance v31, Lorg/joda/time/DateTime;

    .end local v31    # "startDate":Lorg/joda/time/DateTime;
    invoke-virtual/range {v24 .. v24}, Lme/kuehle/carreport/db/OtherCost;->getDate()Ljava/util/Date;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-direct {v0, v2}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    .line 208
    .restart local v31    # "startDate":Lorg/joda/time/DateTime;
    :cond_8
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_6

    .line 251
    .end local v16    # "date":Lorg/joda/time/DateTime;
    .end local v24    # "otherCost":Lme/kuehle/carreport/db/OtherCost;
    .end local v27    # "recurrence":Lme/kuehle/carreport/util/Recurrence;
    :cond_9
    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/joda/time/Seconds;->secondsBetween(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Seconds;

    move-result-object v17

    .line 252
    .local v17, "elapsedSeconds":Lorg/joda/time/Seconds;
    invoke-virtual/range {v17 .. v17}, Lorg/joda/time/Seconds;->getSeconds()I

    move-result v2

    int-to-double v2, v2

    div-double v14, v12, v2

    .line 255
    .local v14, "costsPerSecond":D
    new-instance v2, Lme/kuehle/carreport/reports/CostsReport$CalculableItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u00d8 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f080000

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x7f080000

    const-wide v6, 0x40f5180000000000L    # 86400.0

    mul-double/2addr v6, v14

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lme/kuehle/carreport/reports/CostsReport$CalculableItem;-><init>(Lme/kuehle/carreport/reports/CostsReport;Ljava/lang/String;ID)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->addItem(Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;)V

    .line 262
    new-instance v2, Lme/kuehle/carreport/reports/CostsReport$CalculableItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u00d8 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080001

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080001

    const-wide v6, 0x4144105400000000L    # 2629800.0

    mul-double/2addr v6, v14

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lme/kuehle/carreport/reports/CostsReport$CalculableItem;-><init>(Lme/kuehle/carreport/reports/CostsReport;Ljava/lang/String;ID)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->addItem(Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;)V

    .line 268
    new-instance v2, Lme/kuehle/carreport/reports/CostsReport$CalculableItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u00d8 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080002

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080002

    const-wide v6, 0x417e187e00000000L    # 3.15576E7

    mul-double/2addr v6, v14

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lme/kuehle/carreport/reports/CostsReport$CalculableItem;-><init>(Lme/kuehle/carreport/reports/CostsReport;Ljava/lang/String;ID)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->addItem(Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;)V

    .line 272
    const/4 v2, 0x1

    sub-int v3, v19, v32

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v33

    .line 273
    .local v33, "tachoDiff":I
    new-instance v2, Lme/kuehle/carreport/reports/CostsReport$CalculableItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u00d8 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Lme/kuehle/carreport/Preferences;->getUnitDistance()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Lme/kuehle/carreport/Preferences;->getUnitDistance()Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v33

    int-to-double v6, v0

    div-double v6, v12, v6

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lme/kuehle/carreport/reports/CostsReport$CalculableItem;-><init>(Lme/kuehle/carreport/reports/CostsReport;Ljava/lang/String;Ljava/lang/String;D)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->addItem(Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;)V

    .line 277
    new-instance v2, Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;

    const v3, 0x7f090068

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    invoke-virtual/range {v31 .. v31}, Lorg/joda/time/DateTime;->toDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%.2f %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lme/kuehle/carreport/reports/CostsReport;->unit:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->addItem(Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;)V

    goto/16 :goto_4

    .line 282
    .end local v9    # "arr$":[Lme/kuehle/carreport/db/OtherCost;
    .end local v10    # "car":Lme/kuehle/carreport/db/Car;
    .end local v12    # "costs":D
    .end local v14    # "costsPerSecond":D
    .end local v17    # "elapsedSeconds":Lorg/joda/time/Seconds;
    .end local v18    # "endDate":Lorg/joda/time/DateTime;
    .end local v19    # "endMileage":I
    .end local v20    # "i$":I
    .end local v23    # "len$":I
    .end local v25    # "otherCosts":[Lme/kuehle/carreport/db/OtherCost;
    .end local v29    # "refuelings":[Lme/kuehle/carreport/db/Refueling;
    .end local v30    # "section":Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;
    .end local v31    # "startDate":Lorg/joda/time/DateTime;
    .end local v32    # "startMileage":I
    .end local v33    # "tachoDiff":I
    .restart local v21    # "i$":I
    :cond_a
    return-void

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic access$000(Lme/kuehle/carreport/reports/CostsReport;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/reports/CostsReport;

    .prologue
    .line 46
    iget-object v0, p0, Lme/kuehle/carreport/reports/CostsReport;->unit:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lme/kuehle/carreport/reports/CostsReport;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/reports/CostsReport;

    .prologue
    .line 46
    iget-object v0, p0, Lme/kuehle/carreport/reports/CostsReport;->xLabelFormat:[Ljava/lang/String;

    return-object v0
.end method

.method private getXValues(Lme/kuehle/chartlib/data/Dataset;)[D
    .locals 9
    .param p1, "dataset"    # Lme/kuehle/chartlib/data/Dataset;

    .prologue
    .line 360
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 361
    .local v6, "values":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Double;>;"
    const/4 v4, 0x0

    .local v4, "s":I
    :goto_0
    invoke-virtual {p1}, Lme/kuehle/chartlib/data/Dataset;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 362
    invoke-virtual {p1, v4}, Lme/kuehle/chartlib/data/Dataset;->get(I)Lme/kuehle/chartlib/data/Series;

    move-result-object v5

    .line 363
    .local v5, "series":Lme/kuehle/chartlib/data/Series;
    const/4 v3, 0x0

    .local v3, "p":I
    :goto_1
    invoke-virtual {v5}, Lme/kuehle/chartlib/data/Series;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 364
    invoke-virtual {v5, v3}, Lme/kuehle/chartlib/data/Series;->get(I)Lme/kuehle/chartlib/data/PointD;

    move-result-object v7

    iget-wide v7, v7, Lme/kuehle/chartlib/data/PointD;->x:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 363
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 361
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 367
    .end local v3    # "p":I
    .end local v5    # "series":Lme/kuehle/chartlib/data/Series;
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 368
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 370
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v0, v7, [D

    .line 371
    .local v0, "arrValues":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v7, v0

    if-ge v1, v7, :cond_2

    .line 372
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    aput-wide v7, v0, v1

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 375
    :cond_2
    return-object v0
.end method


# virtual methods
.method public getCalculationOptions()[Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;
    .locals 5

    .prologue
    .line 286
    const/4 v0, 0x1

    new-array v0, v0, [Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;

    const/4 v1, 0x0

    new-instance v2, Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;

    const v3, 0x7f090075

    const v4, 0x7f090076

    invoke-direct {v2, p0, v3, v4}, Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;-><init>(Lme/kuehle/carreport/reports/AbstractReport;II)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getChart(I)Lme/kuehle/chartlib/chart/Chart;
    .locals 27
    .param p1, "option"    # I

    .prologue
    .line 293
    new-instance v9, Lme/kuehle/chartlib/data/Dataset;

    invoke-direct {v9}, Lme/kuehle/chartlib/data/Dataset;-><init>()V

    .line 294
    .local v9, "dataset":Lme/kuehle/chartlib/data/Dataset;
    new-instance v16, Lme/kuehle/chartlib/renderer/RendererList;

    invoke-direct/range {v16 .. v16}, Lme/kuehle/chartlib/renderer/RendererList;-><init>()V

    .line 295
    .local v16, "renderers":Lme/kuehle/chartlib/renderer/RendererList;
    new-instance v15, Lme/kuehle/chartlib/renderer/BarRenderer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lme/kuehle/carreport/reports/CostsReport;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v15, v0}, Lme/kuehle/chartlib/renderer/BarRenderer;-><init>(Landroid/content/Context;)V

    .line 296
    .local v15, "renderer":Lme/kuehle/chartlib/renderer/BarRenderer;
    new-instance v21, Lme/kuehle/chartlib/renderer/LineRenderer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lme/kuehle/carreport/reports/CostsReport;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lme/kuehle/chartlib/renderer/LineRenderer;-><init>(Landroid/content/Context;)V

    .line 297
    .local v21, "trendRenderer":Lme/kuehle/chartlib/renderer/LineRenderer;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lme/kuehle/chartlib/renderer/RendererList;->addRenderer(Lme/kuehle/chartlib/renderer/AbstractRenderer;)V

    .line 298
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lme/kuehle/chartlib/renderer/RendererList;->addRenderer(Lme/kuehle/chartlib/renderer/AbstractRenderer;)V

    .line 300
    const/16 v17, 0x0

    .line 301
    .local v17, "series":I
    invoke-static {}, Lme/kuehle/carreport/db/Car;->getAll()[Lme/kuehle/carreport/db/Car;

    move-result-object v3

    .local v3, "arr$":[Lme/kuehle/carreport/db/Car;
    array-length v12, v3

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_3

    aget-object v6, v3, v11

    .line 302
    .local v6, "car":Lme/kuehle/carreport/db/Car;
    if-nez p1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lme/kuehle/carreport/reports/CostsReport;->costsPerMonth:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    invoke-virtual {v6}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;

    move-object/from16 v8, v23

    .line 304
    .local v8, "data":Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;
    :goto_1
    invoke-virtual {v8}, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 301
    :cond_0
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 302
    .end local v8    # "data":Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/kuehle/carreport/reports/CostsReport;->costsPerYear:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    invoke-virtual {v6}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;

    move-object/from16 v8, v23

    goto :goto_1

    .line 308
    .restart local v8    # "data":Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;
    :cond_2
    invoke-virtual {v8}, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;->getSeries()Lme/kuehle/chartlib/data/Series;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lme/kuehle/chartlib/data/Dataset;->add(Lme/kuehle/chartlib/data/Series;)V

    .line 309
    move/from16 v0, v17

    invoke-virtual {v8, v0, v15}, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;->applySeriesStyle(ILme/kuehle/chartlib/renderer/AbstractRenderer;)V

    .line 310
    add-int/lit8 v17, v17, 0x1

    .line 312
    invoke-virtual/range {p0 .. p0}, Lme/kuehle/carreport/reports/CostsReport;->isShowTrend()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 313
    invoke-virtual {v8}, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;->createRegressionData()Lme/kuehle/carreport/reports/AbstractReportGraphData;

    move-result-object v20

    .line 314
    .local v20, "trendData":Lme/kuehle/carreport/reports/AbstractReportGraphData;
    invoke-virtual/range {v20 .. v20}, Lme/kuehle/carreport/reports/AbstractReportGraphData;->getSeries()Lme/kuehle/chartlib/data/Series;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lme/kuehle/chartlib/data/Dataset;->add(Lme/kuehle/chartlib/data/Series;)V

    .line 315
    move-object/from16 v0, v20

    move/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lme/kuehle/carreport/reports/AbstractReportGraphData;->applySeriesStyle(ILme/kuehle/chartlib/renderer/AbstractRenderer;)V

    .line 316
    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lme/kuehle/chartlib/renderer/RendererList;->mapSeriesToRenderer(ILme/kuehle/chartlib/renderer/AbstractRenderer;)V

    .line 317
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 322
    .end local v6    # "car":Lme/kuehle/carreport/db/Car;
    .end local v8    # "data":Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;
    .end local v20    # "trendData":Lme/kuehle/carreport/reports/AbstractReportGraphData;
    :cond_3
    new-instance v7, Lme/kuehle/chartlib/chart/Chart;

    move-object/from16 v0, p0

    iget-object v0, v0, Lme/kuehle/carreport/reports/CostsReport;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-direct {v7, v0, v9, v1}, Lme/kuehle/chartlib/chart/Chart;-><init>(Landroid/content/Context;Lme/kuehle/chartlib/data/Dataset;Lme/kuehle/chartlib/renderer/RendererList;)V

    .line 323
    .local v7, "chart":Lme/kuehle/chartlib/chart/Chart;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lme/kuehle/carreport/reports/CostsReport;->applyDefaultChartStyles(Lme/kuehle/chartlib/chart/Chart;)V

    .line 324
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lme/kuehle/carreport/reports/CostsReport;->showLegend:Z

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Lme/kuehle/chartlib/chart/Chart;->setShowLegend(Z)V

    .line 325
    invoke-virtual/range {p0 .. p0}, Lme/kuehle/carreport/reports/CostsReport;->isShowTrend()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 326
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_3
    invoke-virtual {v9}, Lme/kuehle/chartlib/data/Dataset;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v10, v0, :cond_4

    .line 327
    invoke-virtual {v7}, Lme/kuehle/chartlib/chart/Chart;->getLegend()Lme/kuehle/chartlib/chart/Legend;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v10, v1}, Lme/kuehle/chartlib/chart/Legend;->setSeriesVisible(IZ)V

    .line 326
    add-int/lit8 v10, v10, 0x2

    goto :goto_3

    .line 330
    .end local v10    # "i":I
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lme/kuehle/carreport/reports/CostsReport;->getXValues(Lme/kuehle/chartlib/data/Dataset;)[D

    move-result-object v22

    .line 331
    .local v22, "xValues":[D
    invoke-virtual {v7}, Lme/kuehle/chartlib/chart/Chart;->getDomainAxis()Lme/kuehle/chartlib/axis/AbstractAxis;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lme/kuehle/chartlib/axis/AbstractAxis;->setLabels([D)V

    .line 332
    invoke-virtual {v7}, Lme/kuehle/chartlib/chart/Chart;->getDomainAxis()Lme/kuehle/chartlib/axis/AbstractAxis;

    move-result-object v23

    new-instance v24, Lme/kuehle/carreport/reports/CostsReport$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lme/kuehle/carreport/reports/CostsReport$1;-><init>(Lme/kuehle/carreport/reports/CostsReport;I)V

    invoke-virtual/range {v23 .. v24}, Lme/kuehle/chartlib/axis/AbstractAxis;->setLabelFormatter(Lme/kuehle/chartlib/axis/AxisLabelFormatter;)V

    .line 339
    sget-object v23, Lme/kuehle/carreport/reports/CostsReport;->SEC_PER_PERIOD:[J

    aget-wide v23, v23, p1

    const-wide/16 v25, 0x2

    div-long v23, v23, v25

    move-wide/from16 v0, v23

    long-to-double v13, v0

    .line 340
    .local v13, "padding":D
    invoke-virtual {v9}, Lme/kuehle/chartlib/data/Dataset;->maxX()D

    move-result-wide v18

    .line 341
    .local v18, "topBound":D
    sget-object v23, Lme/kuehle/carreport/reports/CostsReport;->SEC_PER_PERIOD:[J

    aget-wide v23, v23, p1

    move-object/from16 v0, p0

    iget v0, v0, Lme/kuehle/carreport/reports/CostsReport;->visibleBarCount:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(II)I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    mul-long v23, v23, v25

    move-wide/from16 v0, v23

    long-to-double v0, v0

    move-wide/from16 v23, v0

    sub-double v4, v18, v23

    .line 344
    .local v4, "bottomBound":D
    invoke-virtual {v7}, Lme/kuehle/chartlib/chart/Chart;->getDomainAxis()Lme/kuehle/chartlib/axis/AbstractAxis;

    move-result-object v23

    sub-double v24, v4, v13

    invoke-virtual/range {v23 .. v25}, Lme/kuehle/chartlib/axis/AbstractAxis;->setDefaultBottomBound(D)V

    .line 345
    invoke-virtual {v7}, Lme/kuehle/chartlib/chart/Chart;->getDomainAxis()Lme/kuehle/chartlib/axis/AbstractAxis;

    move-result-object v23

    add-double v24, v18, v13

    invoke-virtual/range {v23 .. v25}, Lme/kuehle/chartlib/axis/AbstractAxis;->setDefaultTopBound(D)V

    .line 346
    invoke-virtual {v7}, Lme/kuehle/chartlib/chart/Chart;->getRangeAxis()Lme/kuehle/chartlib/axis/AbstractAxis;

    move-result-object v23

    const-wide/16 v24, 0x0

    invoke-virtual/range {v23 .. v25}, Lme/kuehle/chartlib/axis/AbstractAxis;->setDefaultBottomBound(D)V

    .line 348
    return-object v7
.end method

.method public getGraphOptions()[I
    .locals 3

    .prologue
    .line 353
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 354
    .local v0, "options":[I
    const/4 v1, 0x0

    const v2, 0x7f090062

    aput v2, v0, v1

    .line 355
    const/4 v1, 0x1

    const v2, 0x7f090063

    aput v2, v0, v1

    .line 356
    return-object v0
.end method
