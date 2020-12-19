.class Lme/kuehle/carreport/reports/FuelConsumptionReport$ReportGraphData;
.super Lme/kuehle/carreport/reports/AbstractReportGraphData;
.source "FuelConsumptionReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/reports/FuelConsumptionReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReportGraphData"
.end annotation


# instance fields
.field final synthetic this$0:Lme/kuehle/carreport/reports/FuelConsumptionReport;


# direct methods
.method public constructor <init>(Lme/kuehle/carreport/reports/FuelConsumptionReport;Landroid/content/Context;Lme/kuehle/carreport/db/Car;[Lme/kuehle/carreport/db/FuelType;)V
    .locals 15
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "car"    # Lme/kuehle/carreport/db/Car;
    .param p4, "fuelTypes"    # [Lme/kuehle/carreport/db/FuelType;

    .prologue
    .line 75
    move-object/from16 v0, p1

    iput-object v0, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport$ReportGraphData;->this$0:Lme/kuehle/carreport/reports/FuelConsumptionReport;

    .line 76
    const-string v11, "%s (%s)"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p3 .. p3}, Lme/kuehle/carreport/db/Car;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lme/kuehle/carreport/reports/FuelConsumptionReport;->access$100(Lme/kuehle/carreport/reports/FuelConsumptionReport;[Lme/kuehle/carreport/db/FuelType;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Lme/kuehle/carreport/db/Car;->getColor()I

    move-result v12

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v11, v12}, Lme/kuehle/carreport/reports/AbstractReportGraphData;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 79
    const/4 v11, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v0, v1, v11}, Lme/kuehle/carreport/db/Refueling;->getAllForCar(Lme/kuehle/carreport/db/Car;[Lme/kuehle/carreport/db/FuelType;Z)[Lme/kuehle/carreport/db/Refueling;

    move-result-object v9

    .line 81
    .local v9, "refuelings":[Lme/kuehle/carreport/db/Refueling;
    const/4 v6, -0x1

    .line 82
    .local v6, "lastTacho":I
    const/4 v10, 0x0

    .line 83
    .local v10, "volume":F
    move-object v2, v9

    .local v2, "arr$":[Lme/kuehle/carreport/db/Refueling;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v8, v2, v5

    .line 84
    .local v8, "refueling":Lme/kuehle/carreport/db/Refueling;
    invoke-virtual {v8}, Lme/kuehle/carreport/db/Refueling;->getVolume()F

    move-result v11

    add-float/2addr v10, v11

    .line 85
    invoke-virtual {v8}, Lme/kuehle/carreport/db/Refueling;->isPartial()Z

    move-result v11

    if-nez v11, :cond_1

    .line 86
    const/4 v11, -0x1

    if-le v6, v11, :cond_0

    invoke-virtual {v8}, Lme/kuehle/carreport/db/Refueling;->getMileage()I

    move-result v11

    if-ge v6, v11, :cond_0

    .line 87
    invoke-virtual {v8}, Lme/kuehle/carreport/db/Refueling;->getMileage()I

    move-result v11

    sub-int/2addr v11, v6

    int-to-float v11, v11

    div-float v11, v10, v11

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v11, v12

    float-to-double v3, v11

    .line 89
    .local v3, "consumption":D
    iget-object v11, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport$ReportGraphData;->xValues:Ljava/util/Vector;

    invoke-virtual {v8}, Lme/kuehle/carreport/db/Refueling;->getDate()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v11, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport$ReportGraphData;->yValues:Ljava/util/Vector;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v3    # "consumption":D
    :cond_0
    invoke-virtual {v8}, Lme/kuehle/carreport/db/Refueling;->getMileage()I

    move-result v6

    .line 93
    const/4 v10, 0x0

    .line 83
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 96
    .end local v8    # "refueling":Lme/kuehle/carreport/db/Refueling;
    :cond_2
    return-void
.end method
