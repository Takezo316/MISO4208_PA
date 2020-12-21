.class Lme/kuehle/carreport/reports/FuelConsumptionReport$CalculableItem;
.super Lme/kuehle/carreport/reports/ReportData$AbstractCalculableItem;
.source "FuelConsumptionReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/reports/FuelConsumptionReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalculableItem"
.end annotation


# static fields
.field private static final FORMAT:Ljava/lang/String; = "%.2f %s"


# instance fields
.field private calcLabels:[Ljava/lang/String;

.field final synthetic this$0:Lme/kuehle/carreport/reports/FuelConsumptionReport;

.field private value:D


# direct methods
.method public constructor <init>(Lme/kuehle/carreport/reports/FuelConsumptionReport;Ljava/lang/String;D)V
    .locals 6
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # D

    .prologue
    .line 51
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v5, v0

    const/4 v0, 0x1

    aput-object p2, v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lme/kuehle/carreport/reports/FuelConsumptionReport$CalculableItem;-><init>(Lme/kuehle/carreport/reports/FuelConsumptionReport;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lme/kuehle/carreport/reports/FuelConsumptionReport;Ljava/lang/String;D[Ljava/lang/String;)V
    .locals 4
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # D
    .param p5, "calcLabels"    # [Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport$CalculableItem;->this$0:Lme/kuehle/carreport/reports/FuelConsumptionReport;

    .line 55
    const-string v0, "%.2f %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lme/kuehle/carreport/reports/FuelConsumptionReport;->access$000(Lme/kuehle/carreport/reports/FuelConsumptionReport;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lme/kuehle/carreport/reports/ReportData$AbstractCalculableItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iput-wide p3, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport$CalculableItem;->value:D

    .line 57
    iput-object p5, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport$CalculableItem;->calcLabels:[Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public applyCalculation(DI)V
    .locals 10
    .param p1, "value1"    # D
    .param p3, "option"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v9, 0x0

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    const/4 v6, 0x1

    .line 62
    new-instance v0, Lme/kuehle/carreport/Preferences;

    iget-object v3, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport$CalculableItem;->this$0:Lme/kuehle/carreport/reports/FuelConsumptionReport;

    iget-object v3, v3, Lme/kuehle/carreport/reports/FuelConsumptionReport;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lme/kuehle/carreport/Preferences;-><init>(Landroid/content/Context;)V

    .line 63
    .local v0, "prefs":Lme/kuehle/carreport/Preferences;
    if-nez p3, :cond_1

    .line 64
    iget-wide v3, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport$CalculableItem;->value:D

    div-double/2addr v3, v7

    div-double v1, p1, v3

    .line 65
    .local v1, "result":D
    const-string v3, "%.2f %s"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v0}, Lme/kuehle/carreport/Preferences;->getUnitDistance()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lme/kuehle/carreport/reports/FuelConsumptionReport$CalculableItem;->setValue(Ljava/lang/String;)V

    .line 70
    .end local v1    # "result":D
    :cond_0
    :goto_0
    iget-object v3, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport$CalculableItem;->calcLabels:[Ljava/lang/String;

    aget-object v3, v3, p3

    invoke-virtual {p0, v3}, Lme/kuehle/carreport/reports/FuelConsumptionReport$CalculableItem;->setLabel(Ljava/lang/String;)V

    .line 71
    return-void

    .line 66
    :cond_1
    if-ne p3, v6, :cond_0

    .line 67
    iget-wide v3, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport$CalculableItem;->value:D

    div-double/2addr v3, v7

    mul-double v1, v3, p1

    .line 68
    .restart local v1    # "result":D
    const-string v3, "%.2f %s"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v0}, Lme/kuehle/carreport/Preferences;->getUnitVolume()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lme/kuehle/carreport/reports/FuelConsumptionReport$CalculableItem;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method
