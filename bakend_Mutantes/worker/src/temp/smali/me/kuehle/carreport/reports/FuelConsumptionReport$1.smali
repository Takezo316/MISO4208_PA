.class Lme/kuehle/carreport/reports/FuelConsumptionReport$1;
.super Ljava/lang/Object;
.source "FuelConsumptionReport.java"

# interfaces
.implements Lme/kuehle/chartlib/renderer/OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kuehle/carreport/reports/FuelConsumptionReport;->getChart(I)Lme/kuehle/chartlib/chart/Chart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/kuehle/carreport/reports/FuelConsumptionReport;

.field final synthetic val$dataset:Lme/kuehle/chartlib/data/Dataset;


# direct methods
.method constructor <init>(Lme/kuehle/carreport/reports/FuelConsumptionReport;Lme/kuehle/chartlib/data/Dataset;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport$1;->this$0:Lme/kuehle/carreport/reports/FuelConsumptionReport;

    iput-object p2, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport$1;->val$dataset:Lme/kuehle/chartlib/data/Dataset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeriesClick(II)V
    .locals 11
    .param p1, "series"    # I
    .param p2, "point"    # I

    .prologue
    const/16 v6, 0x28

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 239
    iget-object v4, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport$1;->val$dataset:Lme/kuehle/chartlib/data/Dataset;

    invoke-virtual {v4, p1}, Lme/kuehle/chartlib/data/Dataset;->get(I)Lme/kuehle/chartlib/data/Series;

    move-result-object v3

    .line 240
    .local v3, "s":Lme/kuehle/chartlib/data/Series;
    invoke-virtual {v3}, Lme/kuehle/chartlib/data/Series;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lme/kuehle/chartlib/data/Series;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "car":Ljava/lang/String;
    invoke-virtual {v3}, Lme/kuehle/chartlib/data/Series;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lme/kuehle/chartlib/data/Series;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3}, Lme/kuehle/chartlib/data/Series;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "fuelType":Ljava/lang/String;
    iget-object v4, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport$1;->this$0:Lme/kuehle/carreport/reports/FuelConsumptionReport;

    iget-object v4, v4, Lme/kuehle/carreport/reports/FuelConsumptionReport;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v3, p2}, Lme/kuehle/chartlib/data/Series;->get(I)Lme/kuehle/chartlib/data/PointD;

    move-result-object v6

    iget-wide v6, v6, Lme/kuehle/chartlib/data/PointD;->x:D

    double-to-long v6, v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "date":Ljava/lang/String;
    iget-object v4, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport$1;->this$0:Lme/kuehle/carreport/reports/FuelConsumptionReport;

    iget-object v4, v4, Lme/kuehle/carreport/reports/FuelConsumptionReport;->context:Landroid/content/Context;

    const-string v5, "%s: %s\n%s: %s\n%s: %.2f %s\n%s: %s"

    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport$1;->this$0:Lme/kuehle/carreport/reports/FuelConsumptionReport;

    iget-object v7, v7, Lme/kuehle/carreport/reports/FuelConsumptionReport;->context:Landroid/content/Context;

    const v8, 0x7f09006e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    aput-object v0, v6, v10

    const/4 v7, 0x2

    iget-object v8, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport$1;->this$0:Lme/kuehle/carreport/reports/FuelConsumptionReport;

    iget-object v8, v8, Lme/kuehle/carreport/reports/FuelConsumptionReport;->context:Landroid/content/Context;

    const v9, 0x7f090073

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v2, v6, v7

    const/4 v7, 0x4

    iget-object v8, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport$1;->this$0:Lme/kuehle/carreport/reports/FuelConsumptionReport;

    iget-object v8, v8, Lme/kuehle/carreport/reports/FuelConsumptionReport;->context:Landroid/content/Context;

    const v9, 0x7f09006f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    invoke-virtual {v3, p2}, Lme/kuehle/chartlib/data/Series;->get(I)Lme/kuehle/chartlib/data/PointD;

    move-result-object v8

    iget-wide v8, v8, Lme/kuehle/chartlib/data/PointD;->y:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    iget-object v8, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport$1;->this$0:Lme/kuehle/carreport/reports/FuelConsumptionReport;

    invoke-static {v8}, Lme/kuehle/carreport/reports/FuelConsumptionReport;->access$000(Lme/kuehle/carreport/reports/FuelConsumptionReport;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    iget-object v8, p0, Lme/kuehle/carreport/reports/FuelConsumptionReport$1;->this$0:Lme/kuehle/carreport/reports/FuelConsumptionReport;

    iget-object v8, v8, Lme/kuehle/carreport/reports/FuelConsumptionReport;->context:Landroid/content/Context;

    const v9, 0x7f090072

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x8

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 259
    return-void
.end method
