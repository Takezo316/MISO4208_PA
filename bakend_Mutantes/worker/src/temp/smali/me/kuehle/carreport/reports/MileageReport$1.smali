.class Lme/kuehle/carreport/reports/MileageReport$1;
.super Ljava/lang/Object;
.source "MileageReport.java"

# interfaces
.implements Lme/kuehle/chartlib/renderer/OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kuehle/carreport/reports/MileageReport;->getChart(I)Lme/kuehle/chartlib/chart/Chart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/kuehle/carreport/reports/MileageReport;

.field final synthetic val$dataset:Lme/kuehle/chartlib/data/Dataset;


# direct methods
.method constructor <init>(Lme/kuehle/carreport/reports/MileageReport;Lme/kuehle/chartlib/data/Dataset;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lme/kuehle/carreport/reports/MileageReport$1;->this$0:Lme/kuehle/carreport/reports/MileageReport;

    iput-object p2, p0, Lme/kuehle/carreport/reports/MileageReport$1;->val$dataset:Lme/kuehle/chartlib/data/Dataset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeriesClick(II)V
    .locals 10
    .param p1, "series"    # I
    .param p2, "point"    # I

    .prologue
    const/4 v9, 0x1

    .line 162
    iget-object v3, p0, Lme/kuehle/carreport/reports/MileageReport$1;->val$dataset:Lme/kuehle/chartlib/data/Dataset;

    invoke-virtual {v3, p1}, Lme/kuehle/chartlib/data/Dataset;->get(I)Lme/kuehle/chartlib/data/Series;

    move-result-object v2

    .line 163
    .local v2, "s":Lme/kuehle/chartlib/data/Series;
    invoke-virtual {v2}, Lme/kuehle/chartlib/data/Series;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "car":Ljava/lang/String;
    iget-object v3, p0, Lme/kuehle/carreport/reports/MileageReport$1;->this$0:Lme/kuehle/carreport/reports/MileageReport;

    iget-object v3, v3, Lme/kuehle/carreport/reports/MileageReport;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v2, p2}, Lme/kuehle/chartlib/data/Series;->get(I)Lme/kuehle/chartlib/data/PointD;

    move-result-object v5

    iget-wide v5, v5, Lme/kuehle/chartlib/data/PointD;->x:D

    double-to-long v5, v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "date":Ljava/lang/String;
    iget-object v3, p0, Lme/kuehle/carreport/reports/MileageReport$1;->this$0:Lme/kuehle/carreport/reports/MileageReport;

    iget-object v3, v3, Lme/kuehle/carreport/reports/MileageReport;->context:Landroid/content/Context;

    const-string v4, "%s: %s\n%s: %.0f %s\n%s: %s"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lme/kuehle/carreport/reports/MileageReport$1;->this$0:Lme/kuehle/carreport/reports/MileageReport;

    iget-object v7, v7, Lme/kuehle/carreport/reports/MileageReport;->context:Landroid/content/Context;

    const v8, 0x7f09006e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v0, v5, v9

    const/4 v6, 0x2

    iget-object v7, p0, Lme/kuehle/carreport/reports/MileageReport$1;->this$0:Lme/kuehle/carreport/reports/MileageReport;

    iget-object v7, v7, Lme/kuehle/carreport/reports/MileageReport;->context:Landroid/content/Context;

    const v8, 0x7f090070

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {v2, p2}, Lme/kuehle/chartlib/data/Series;->get(I)Lme/kuehle/chartlib/data/PointD;

    move-result-object v7

    iget-wide v7, v7, Lme/kuehle/chartlib/data/PointD;->y:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lme/kuehle/carreport/reports/MileageReport$1;->this$0:Lme/kuehle/carreport/reports/MileageReport;

    invoke-static {v7}, Lme/kuehle/carreport/reports/MileageReport;->access$000(Lme/kuehle/carreport/reports/MileageReport;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lme/kuehle/carreport/reports/MileageReport$1;->this$0:Lme/kuehle/carreport/reports/MileageReport;

    iget-object v7, v7, Lme/kuehle/carreport/reports/MileageReport;->context:Landroid/content/Context;

    const v8, 0x7f090072

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 176
    return-void
.end method
