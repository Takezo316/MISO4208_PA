.class Lme/kuehle/carreport/reports/CostsReport$CalculableItem;
.super Lme/kuehle/carreport/reports/ReportData$AbstractCalculableItem;
.source "CostsReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/reports/CostsReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalculableItem"
.end annotation


# static fields
.field private static final FORMAT:Ljava/lang/String; = "%.2f %s"


# instance fields
.field private calcLabel:Ljava/lang/String;

.field private calcLabelPluralId:I

.field final synthetic this$0:Lme/kuehle/carreport/reports/CostsReport;

.field private value:D


# direct methods
.method public constructor <init>(Lme/kuehle/carreport/reports/CostsReport;Ljava/lang/String;ID)V
    .locals 4
    .param p2, "defaultLabel"    # Ljava/lang/String;
    .param p3, "calclabelPluralId"    # I
    .param p4, "value"    # D

    .prologue
    .line 54
    iput-object p1, p0, Lme/kuehle/carreport/reports/CostsReport$CalculableItem;->this$0:Lme/kuehle/carreport/reports/CostsReport;

    .line 55
    const-string v0, "%.2f %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lme/kuehle/carreport/reports/CostsReport;->access$000(Lme/kuehle/carreport/reports/CostsReport;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lme/kuehle/carreport/reports/ReportData$AbstractCalculableItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iput p3, p0, Lme/kuehle/carreport/reports/CostsReport$CalculableItem;->calcLabelPluralId:I

    .line 57
    iput-wide p4, p0, Lme/kuehle/carreport/reports/CostsReport$CalculableItem;->value:D

    .line 58
    return-void
.end method

.method public constructor <init>(Lme/kuehle/carreport/reports/CostsReport;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 4
    .param p2, "defaultLabel"    # Ljava/lang/String;
    .param p3, "calcLabel"    # Ljava/lang/String;
    .param p4, "value"    # D

    .prologue
    .line 61
    iput-object p1, p0, Lme/kuehle/carreport/reports/CostsReport$CalculableItem;->this$0:Lme/kuehle/carreport/reports/CostsReport;

    .line 62
    const-string v0, "%.2f %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lme/kuehle/carreport/reports/CostsReport;->access$000(Lme/kuehle/carreport/reports/CostsReport;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lme/kuehle/carreport/reports/ReportData$AbstractCalculableItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iput-object p3, p0, Lme/kuehle/carreport/reports/CostsReport$CalculableItem;->calcLabel:Ljava/lang/String;

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lme/kuehle/carreport/reports/CostsReport$CalculableItem;->calcLabelPluralId:I

    .line 65
    iput-wide p4, p0, Lme/kuehle/carreport/reports/CostsReport$CalculableItem;->value:D

    .line 66
    return-void
.end method


# virtual methods
.method public applyCalculation(DI)V
    .locals 9
    .param p1, "value1"    # D
    .param p3, "option"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 70
    iget-wide v5, p0, Lme/kuehle/carreport/reports/CostsReport$CalculableItem;->value:D

    mul-double v1, v5, p1

    .line 71
    .local v1, "result":D
    const-string v5, "%.2f %s"

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    iget-object v7, p0, Lme/kuehle/carreport/reports/CostsReport$CalculableItem;->this$0:Lme/kuehle/carreport/reports/CostsReport;

    invoke-static {v7}, Lme/kuehle/carreport/reports/CostsReport;->access$000(Lme/kuehle/carreport/reports/CostsReport;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lme/kuehle/carreport/reports/CostsReport$CalculableItem;->setValue(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lme/kuehle/carreport/reports/CostsReport$CalculableItem;->calcLabel:Ljava/lang/String;

    .line 74
    .local v0, "newLabel":Ljava/lang/String;
    iget v5, p0, Lme/kuehle/carreport/reports/CostsReport$CalculableItem;->calcLabelPluralId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 75
    iget-object v5, p0, Lme/kuehle/carreport/reports/CostsReport$CalculableItem;->this$0:Lme/kuehle/carreport/reports/CostsReport;

    iget-object v5, v5, Lme/kuehle/carreport/reports/CostsReport;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lme/kuehle/carreport/reports/CostsReport$CalculableItem;->calcLabelPluralId:I

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, p1, v7

    if-nez v7, :cond_1

    :goto_0
    invoke-virtual {v5, v6, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 78
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    double-to-int v3, p1

    int-to-double v5, v3

    cmpl-double v3, p1, v5

    if-nez v3, :cond_2

    double-to-int v3, p1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lme/kuehle/carreport/reports/CostsReport$CalculableItem;->setLabel(Ljava/lang/String;)V

    .line 80
    return-void

    :cond_1
    move v3, v4

    .line 75
    goto :goto_0

    .line 78
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
