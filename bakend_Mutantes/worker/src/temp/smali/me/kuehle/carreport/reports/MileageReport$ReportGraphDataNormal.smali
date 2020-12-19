.class Lme/kuehle/carreport/reports/MileageReport$ReportGraphDataNormal;
.super Lme/kuehle/carreport/reports/AbstractReportGraphData;
.source "MileageReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/reports/MileageReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReportGraphDataNormal"
.end annotation


# instance fields
.field final synthetic this$0:Lme/kuehle/carreport/reports/MileageReport;


# direct methods
.method public constructor <init>(Lme/kuehle/carreport/reports/MileageReport;Landroid/content/Context;Lme/kuehle/carreport/db/Car;)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "car"    # Lme/kuehle/carreport/db/Car;

    .prologue
    .line 51
    iput-object p1, p0, Lme/kuehle/carreport/reports/MileageReport$ReportGraphDataNormal;->this$0:Lme/kuehle/carreport/reports/MileageReport;

    .line 52
    invoke-virtual {p3}, Lme/kuehle/carreport/db/Car;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lme/kuehle/carreport/db/Car;->getColor()I

    move-result v3

    invoke-direct {p0, p2, v2, v3}, Lme/kuehle/carreport/reports/AbstractReportGraphData;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 54
    const/4 v2, 0x1

    invoke-static {p3, v2}, Lme/kuehle/carreport/db/Refueling;->getAllForCar(Lme/kuehle/carreport/db/Car;Z)[Lme/kuehle/carreport/db/Refueling;

    move-result-object v1

    .line 55
    .local v1, "refuelings":[Lme/kuehle/carreport/db/Refueling;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 56
    iget-object v2, p0, Lme/kuehle/carreport/reports/MileageReport$ReportGraphDataNormal;->xValues:Ljava/util/Vector;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lme/kuehle/carreport/db/Refueling;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v2, p0, Lme/kuehle/carreport/reports/MileageReport$ReportGraphDataNormal;->yValues:Ljava/util/Vector;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lme/kuehle/carreport/db/Refueling;->getMileage()I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Lme/kuehle/carreport/db/Refueling;->getMileage()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method
