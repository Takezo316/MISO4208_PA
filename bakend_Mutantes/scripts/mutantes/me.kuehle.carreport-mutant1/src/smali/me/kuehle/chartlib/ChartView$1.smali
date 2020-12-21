.class Lme/kuehle/chartlib/ChartView$1;
.super Ljava/util/TimerTask;
.source "ChartView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kuehle/chartlib/ChartView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private point:Landroid/graphics/PointF;

.field final synthetic this$0:Lme/kuehle/chartlib/ChartView;


# direct methods
.method constructor <init>(Lme/kuehle/chartlib/ChartView;)V
    .locals 1

    .prologue
    .line 201
    iput-object p1, p0, Lme/kuehle/chartlib/ChartView$1;->this$0:Lme/kuehle/chartlib/ChartView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 202
    iget-object v0, p0, Lme/kuehle/chartlib/ChartView$1;->this$0:Lme/kuehle/chartlib/ChartView;

    invoke-static {v0}, Lme/kuehle/chartlib/ChartView;->access$000(Lme/kuehle/chartlib/ChartView;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lme/kuehle/chartlib/ChartView$1;->point:Landroid/graphics/PointF;

    return-void
.end method

.method static synthetic access$100(Lme/kuehle/chartlib/ChartView$1;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/chartlib/ChartView$1;

    .prologue
    .line 201
    iget-object v0, p0, Lme/kuehle/chartlib/ChartView$1;->point:Landroid/graphics/PointF;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lme/kuehle/chartlib/ChartView$1;->this$0:Lme/kuehle/chartlib/ChartView;

    invoke-static {v0}, Lme/kuehle/chartlib/ChartView;->access$300(Lme/kuehle/chartlib/ChartView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lme/kuehle/chartlib/ChartView$1$1;

    invoke-direct {v1, p0}, Lme/kuehle/chartlib/ChartView$1$1;-><init>(Lme/kuehle/chartlib/ChartView$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 212
    return-void
.end method
