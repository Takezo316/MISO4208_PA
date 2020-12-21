.class Lme/kuehle/chartlib/ChartView$1$1;
.super Ljava/lang/Object;
.source "ChartView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kuehle/chartlib/ChartView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lme/kuehle/chartlib/ChartView$1;


# direct methods
.method constructor <init>(Lme/kuehle/chartlib/ChartView$1;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lme/kuehle/chartlib/ChartView$1$1;->this$1:Lme/kuehle/chartlib/ChartView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lme/kuehle/chartlib/ChartView$1$1;->this$1:Lme/kuehle/chartlib/ChartView$1;

    iget-object v0, v0, Lme/kuehle/chartlib/ChartView$1;->this$0:Lme/kuehle/chartlib/ChartView;

    invoke-static {v0}, Lme/kuehle/chartlib/ChartView;->access$200(Lme/kuehle/chartlib/ChartView;)Lme/kuehle/chartlib/chart/Chart;

    move-result-object v0

    iget-object v1, p0, Lme/kuehle/chartlib/ChartView$1$1;->this$1:Lme/kuehle/chartlib/ChartView$1;

    invoke-static {v1}, Lme/kuehle/chartlib/ChartView$1;->access$100(Lme/kuehle/chartlib/ChartView$1;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/kuehle/chartlib/chart/Chart;->click(Landroid/graphics/PointF;)V

    .line 210
    return-void
.end method
