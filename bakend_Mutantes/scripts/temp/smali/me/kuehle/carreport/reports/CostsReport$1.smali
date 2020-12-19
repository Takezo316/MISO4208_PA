.class Lme/kuehle/carreport/reports/CostsReport$1;
.super Ljava/lang/Object;
.source "CostsReport.java"

# interfaces
.implements Lme/kuehle/chartlib/axis/AxisLabelFormatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kuehle/carreport/reports/CostsReport;->getChart(I)Lme/kuehle/chartlib/chart/Chart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/kuehle/carreport/reports/CostsReport;

.field final synthetic val$option:I


# direct methods
.method constructor <init>(Lme/kuehle/carreport/reports/CostsReport;I)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lme/kuehle/carreport/reports/CostsReport$1;->this$0:Lme/kuehle/carreport/reports/CostsReport;

    iput p2, p0, Lme/kuehle/carreport/reports/CostsReport$1;->val$option:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public formatLabel(D)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 335
    new-instance v0, Lorg/joda/time/DateTime;

    double-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lorg/joda/time/DateTime;-><init>(J)V

    .line 336
    .local v0, "date":Lorg/joda/time/DateTime;
    iget-object v1, p0, Lme/kuehle/carreport/reports/CostsReport$1;->this$0:Lme/kuehle/carreport/reports/CostsReport;

    invoke-static {v1}, Lme/kuehle/carreport/reports/CostsReport;->access$100(Lme/kuehle/carreport/reports/CostsReport;)[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lme/kuehle/carreport/reports/CostsReport$1;->val$option:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
