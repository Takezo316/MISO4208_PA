.class Lme/kuehle/carreport/reports/MileageReport$ReportGraphDataAccumulated;
.super Lme/kuehle/carreport/reports/AbstractReportGraphData;
.source "MileageReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/reports/MileageReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReportGraphDataAccumulated"
.end annotation


# instance fields
.field final synthetic this$0:Lme/kuehle/carreport/reports/MileageReport;


# direct methods
.method public constructor <init>(Lme/kuehle/carreport/reports/MileageReport;Landroid/content/Context;Lme/kuehle/carreport/db/Car;)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "car"    # Lme/kuehle/carreport/db/Car;

    .prologue
    .line 41
    iput-object p1, p0, Lme/kuehle/carreport/reports/MileageReport$ReportGraphDataAccumulated;->this$0:Lme/kuehle/carreport/reports/MileageReport;

    .line 42
    invoke-virtual {p3}, Lme/kuehle/carreport/db/Car;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lme/kuehle/carreport/db/Car;->getColor()I

    move-result v5

    invoke-direct {p0, p2, v4, v5}, Lme/kuehle/carreport/reports/AbstractReportGraphData;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 43
    const/4 v4, 0x1

    invoke-static {p3, v4}, Lme/kuehle/carreport/db/Refueling;->getAllForCar(Lme/kuehle/carreport/db/Car;Z)[Lme/kuehle/carreport/db/Refueling;

    move-result-object v0

    .local v0, "arr$":[Lme/kuehle/carreport/db/Refueling;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 44
    .local v3, "refueling":Lme/kuehle/carreport/db/Refueling;
    iget-object v4, p0, Lme/kuehle/carreport/reports/MileageReport$ReportGraphDataAccumulated;->xValues:Ljava/util/Vector;

    invoke-virtual {v3}, Lme/kuehle/carreport/db/Refueling;->getDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v4, p0, Lme/kuehle/carreport/reports/MileageReport$ReportGraphDataAccumulated;->yValues:Ljava/util/Vector;

    invoke-virtual {v3}, Lme/kuehle/carreport/db/Refueling;->getMileage()I

    move-result v5

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v3    # "refueling":Lme/kuehle/carreport/db/Refueling;
    :cond_0
    return-void
.end method
