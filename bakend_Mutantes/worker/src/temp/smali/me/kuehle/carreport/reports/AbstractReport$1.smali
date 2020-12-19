.class Lme/kuehle/carreport/reports/AbstractReport$1;
.super Ljava/lang/Object;
.source "AbstractReport.java"

# interfaces
.implements Lme/kuehle/chartlib/axis/AxisLabelFormatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/reports/AbstractReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/kuehle/carreport/reports/AbstractReport;


# direct methods
.method constructor <init>(Lme/kuehle/carreport/reports/AbstractReport;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lme/kuehle/carreport/reports/AbstractReport$1;->this$0:Lme/kuehle/carreport/reports/AbstractReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public formatLabel(D)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # D

    .prologue
    .line 68
    iget-object v0, p0, Lme/kuehle/carreport/reports/AbstractReport$1;->this$0:Lme/kuehle/carreport/reports/AbstractReport;

    iget-object v0, v0, Lme/kuehle/carreport/reports/AbstractReport;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    double-to-long v2, p1

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
