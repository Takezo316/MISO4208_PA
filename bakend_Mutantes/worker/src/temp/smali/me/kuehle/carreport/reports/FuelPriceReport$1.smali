.class Lme/kuehle/carreport/reports/FuelPriceReport$1;
.super Ljava/lang/Object;
.source "FuelPriceReport.java"

# interfaces
.implements Lme/kuehle/chartlib/renderer/OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kuehle/carreport/reports/FuelPriceReport;->getChart(I)Lme/kuehle/chartlib/chart/Chart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/kuehle/carreport/reports/FuelPriceReport;

.field final synthetic val$dataset:Lme/kuehle/chartlib/data/Dataset;


# direct methods
.method constructor <init>(Lme/kuehle/carreport/reports/FuelPriceReport;Lme/kuehle/chartlib/data/Dataset;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lme/kuehle/carreport/reports/FuelPriceReport$1;->this$0:Lme/kuehle/carreport/reports/FuelPriceReport;

    iput-object p2, p0, Lme/kuehle/carreport/reports/FuelPriceReport$1;->val$dataset:Lme/kuehle/chartlib/data/Dataset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeriesClick(II)V
    .locals 11
    .param p1, "series"    # I
    .param p2, "point"    # I

    .prologue
    const/4 v10, 0x1

    .line 223
    iget-object v4, p0, Lme/kuehle/carreport/reports/FuelPriceReport$1;->val$dataset:Lme/kuehle/chartlib/data/Dataset;

    invoke-virtual {v4, p1}, Lme/kuehle/chartlib/data/Dataset;->get(I)Lme/kuehle/chartlib/data/Series;

    move-result-object v3

    .line 224
    .local v3, "s":Lme/kuehle/chartlib/data/Series;
    invoke-virtual {v3}, Lme/kuehle/chartlib/data/Series;->getTitle()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lme/kuehle/carreport/reports/FuelPriceReport$1;->this$0:Lme/kuehle/carreport/reports/FuelPriceReport;

    iget-object v4, v4, Lme/kuehle/carreport/reports/FuelPriceReport;->context:Landroid/content/Context;

    const v5, 0x7f090074

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "fuelType":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, p2}, Lme/kuehle/chartlib/data/Series;->get(I)Lme/kuehle/chartlib/data/PointD;

    move-result-object v2

    .line 227
    .local v2, "p":Lme/kuehle/chartlib/data/PointD;
    iget-object v4, p0, Lme/kuehle/carreport/reports/FuelPriceReport$1;->this$0:Lme/kuehle/carreport/reports/FuelPriceReport;

    iget-object v4, v4, Lme/kuehle/carreport/reports/FuelPriceReport;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    iget-wide v6, v2, Lme/kuehle/chartlib/data/PointD;->x:D

    double-to-long v6, v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "date":Ljava/lang/String;
    iget-object v4, p0, Lme/kuehle/carreport/reports/FuelPriceReport$1;->this$0:Lme/kuehle/carreport/reports/FuelPriceReport;

    iget-object v4, v4, Lme/kuehle/carreport/reports/FuelPriceReport;->context:Landroid/content/Context;

    const-string v5, "%s: %s\n%s: %.3f %s\n%s: %s"

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lme/kuehle/carreport/reports/FuelPriceReport$1;->this$0:Lme/kuehle/carreport/reports/FuelPriceReport;

    iget-object v8, v8, Lme/kuehle/carreport/reports/FuelPriceReport;->context:Landroid/content/Context;

    const v9, 0x7f090073

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    aput-object v1, v6, v10

    const/4 v7, 0x2

    iget-object v8, p0, Lme/kuehle/carreport/reports/FuelPriceReport$1;->this$0:Lme/kuehle/carreport/reports/FuelPriceReport;

    iget-object v8, v8, Lme/kuehle/carreport/reports/FuelPriceReport;->context:Landroid/content/Context;

    const v9, 0x7f090071

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-wide v8, v2, Lme/kuehle/chartlib/data/PointD;->y:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    iget-object v8, p0, Lme/kuehle/carreport/reports/FuelPriceReport$1;->this$0:Lme/kuehle/carreport/reports/FuelPriceReport;

    invoke-static {v8}, Lme/kuehle/carreport/reports/FuelPriceReport;->access$000(Lme/kuehle/carreport/reports/FuelPriceReport;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-object v8, p0, Lme/kuehle/carreport/reports/FuelPriceReport$1;->this$0:Lme/kuehle/carreport/reports/FuelPriceReport;

    iget-object v8, v8, Lme/kuehle/carreport/reports/FuelPriceReport;->context:Landroid/content/Context;

    const v9, 0x7f090072

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 238
    return-void

    .line 224
    .end local v0    # "date":Ljava/lang/String;
    .end local v1    # "fuelType":Ljava/lang/String;
    .end local v2    # "p":Lme/kuehle/chartlib/data/PointD;
    :cond_0
    invoke-virtual {v3}, Lme/kuehle/chartlib/data/Series;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
