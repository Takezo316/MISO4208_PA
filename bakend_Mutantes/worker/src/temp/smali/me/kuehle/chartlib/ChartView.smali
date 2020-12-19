.class public Lme/kuehle/chartlib/ChartView;
.super Landroid/view/View;
.source "ChartView.java"


# static fields
.field private static final MAX_CLICK_TIME:I = 0x190

.field private static final MAX_DOUBLE_CLICK_INTERVAL:I = 0xc8

.field private static final MIN_MOVE_DISTANCE:I


# instance fields
.field private chart:Lme/kuehle/chartlib/chart/Chart;

.field private clickTask:Ljava/util/TimerTask;

.field private clickTimer:Ljava/util/Timer;

.field private handler:Landroid/os/Handler;

.field private multiTouchStartDistance:D

.field private notEnoughDataView:Landroid/view/View;

.field private singleTouchStartPoint:Landroid/graphics/PointF;

.field private timeLastDown:J

.field private timeLastUp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 105
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 86
    iput-object v2, p0, Lme/kuehle/chartlib/ChartView;->chart:Lme/kuehle/chartlib/chart/Chart;

    .line 87
    iput-object v2, p0, Lme/kuehle/chartlib/ChartView;->notEnoughDataView:Landroid/view/View;

    .line 90
    iput-object v2, p0, Lme/kuehle/chartlib/ChartView;->singleTouchStartPoint:Landroid/graphics/PointF;

    .line 93
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lme/kuehle/chartlib/ChartView;->multiTouchStartDistance:D

    .line 96
    iput-wide v3, p0, Lme/kuehle/chartlib/ChartView;->timeLastUp:J

    .line 98
    iput-wide v3, p0, Lme/kuehle/chartlib/ChartView;->timeLastDown:J

    .line 100
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lme/kuehle/chartlib/ChartView;->clickTimer:Ljava/util/Timer;

    .line 101
    iput-object v2, p0, Lme/kuehle/chartlib/ChartView;->clickTask:Ljava/util/TimerTask;

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lme/kuehle/chartlib/ChartView;->handler:Landroid/os/Handler;

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 109
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    iput-object v2, p0, Lme/kuehle/chartlib/ChartView;->chart:Lme/kuehle/chartlib/chart/Chart;

    .line 87
    iput-object v2, p0, Lme/kuehle/chartlib/ChartView;->notEnoughDataView:Landroid/view/View;

    .line 90
    iput-object v2, p0, Lme/kuehle/chartlib/ChartView;->singleTouchStartPoint:Landroid/graphics/PointF;

    .line 93
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lme/kuehle/chartlib/ChartView;->multiTouchStartDistance:D

    .line 96
    iput-wide v3, p0, Lme/kuehle/chartlib/ChartView;->timeLastUp:J

    .line 98
    iput-wide v3, p0, Lme/kuehle/chartlib/ChartView;->timeLastDown:J

    .line 100
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lme/kuehle/chartlib/ChartView;->clickTimer:Ljava/util/Timer;

    .line 101
    iput-object v2, p0, Lme/kuehle/chartlib/ChartView;->clickTask:Ljava/util/TimerTask;

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lme/kuehle/chartlib/ChartView;->handler:Landroid/os/Handler;

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    iput-object v2, p0, Lme/kuehle/chartlib/ChartView;->chart:Lme/kuehle/chartlib/chart/Chart;

    .line 87
    iput-object v2, p0, Lme/kuehle/chartlib/ChartView;->notEnoughDataView:Landroid/view/View;

    .line 90
    iput-object v2, p0, Lme/kuehle/chartlib/ChartView;->singleTouchStartPoint:Landroid/graphics/PointF;

    .line 93
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lme/kuehle/chartlib/ChartView;->multiTouchStartDistance:D

    .line 96
    iput-wide v3, p0, Lme/kuehle/chartlib/ChartView;->timeLastUp:J

    .line 98
    iput-wide v3, p0, Lme/kuehle/chartlib/ChartView;->timeLastDown:J

    .line 100
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lme/kuehle/chartlib/ChartView;->clickTimer:Ljava/util/Timer;

    .line 101
    iput-object v2, p0, Lme/kuehle/chartlib/ChartView;->clickTask:Ljava/util/TimerTask;

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lme/kuehle/chartlib/ChartView;->handler:Landroid/os/Handler;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lme/kuehle/chartlib/ChartView;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/chartlib/ChartView;

    .prologue
    .line 81
    iget-object v0, p0, Lme/kuehle/chartlib/ChartView;->singleTouchStartPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$200(Lme/kuehle/chartlib/ChartView;)Lme/kuehle/chartlib/chart/Chart;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/chartlib/ChartView;

    .prologue
    .line 81
    iget-object v0, p0, Lme/kuehle/chartlib/ChartView;->chart:Lme/kuehle/chartlib/chart/Chart;

    return-object v0
.end method

.method static synthetic access$300(Lme/kuehle/chartlib/ChartView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/chartlib/ChartView;

    .prologue
    .line 81
    iget-object v0, p0, Lme/kuehle/chartlib/ChartView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private moveAdjustment(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 125
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    iget-object v7, p0, Lme/kuehle/chartlib/ChartView;->singleTouchStartPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v8

    if-ltz v6, :cond_2

    move v2, v4

    .line 126
    .local v2, "moveTriggerX":Z
    :goto_0
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iget-object v7, p0, Lme/kuehle/chartlib/ChartView;->singleTouchStartPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v8

    if-ltz v6, :cond_3

    move v3, v4

    .line 127
    .local v3, "moveTriggerY":Z
    :goto_1
    if-nez v2, :cond_0

    if-eqz v3, :cond_1

    .line 128
    :cond_0
    iget-object v4, p0, Lme/kuehle/chartlib/ChartView;->singleTouchStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    sub-float v0, v4, v6

    .line 129
    .local v0, "distanceX":F
    iget-object v4, p0, Lme/kuehle/chartlib/ChartView;->singleTouchStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    sub-float v1, v4, v5

    .line 131
    .local v1, "distanceY":F
    iget-object v4, p0, Lme/kuehle/chartlib/ChartView;->chart:Lme/kuehle/chartlib/chart/Chart;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lme/kuehle/chartlib/ChartView;->chart:Lme/kuehle/chartlib/chart/Chart;

    invoke-virtual {v4}, Lme/kuehle/chartlib/chart/Chart;->hasEnoughData()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    iget-object v4, p0, Lme/kuehle/chartlib/ChartView;->chart:Lme/kuehle/chartlib/chart/Chart;

    invoke-virtual {v4, v0, v1}, Lme/kuehle/chartlib/chart/Chart;->move(FF)V

    .line 133
    invoke-virtual {p0}, Lme/kuehle/chartlib/ChartView;->invalidate()V

    .line 137
    .end local v0    # "distanceX":F
    .end local v1    # "distanceY":F
    :cond_1
    iget-object v4, p0, Lme/kuehle/chartlib/ChartView;->singleTouchStartPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 138
    return-void

    .end local v2    # "moveTriggerX":Z
    .end local v3    # "moveTriggerY":Z
    :cond_2
    move v2, v5

    .line 125
    goto :goto_0

    .restart local v2    # "moveTriggerX":Z
    :cond_3
    move v3, v5

    .line 126
    goto :goto_1
.end method

.method private zoomAdjustment(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 256
    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v11

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    add-float/2addr v5, v6

    div-float/2addr v5, v11

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 258
    .local v3, "zoomCenter":Landroid/graphics/PointF;
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 262
    .local v0, "endDistance":D
    iget-wide v4, p0, Lme/kuehle/chartlib/ChartView;->multiTouchStartDistance:D

    div-double/2addr v4, v0

    double-to-float v2, v4

    .line 263
    .local v2, "scaleDistance":F
    iget-object v4, p0, Lme/kuehle/chartlib/ChartView;->chart:Lme/kuehle/chartlib/chart/Chart;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lme/kuehle/chartlib/ChartView;->chart:Lme/kuehle/chartlib/chart/Chart;

    invoke-virtual {v4}, Lme/kuehle/chartlib/chart/Chart;->hasEnoughData()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 264
    iget-object v4, p0, Lme/kuehle/chartlib/ChartView;->chart:Lme/kuehle/chartlib/chart/Chart;

    invoke-virtual {v4, v3, v2}, Lme/kuehle/chartlib/chart/Chart;->zoom(Landroid/graphics/PointF;F)V

    .line 265
    invoke-virtual {p0}, Lme/kuehle/chartlib/ChartView;->invalidate()V

    .line 268
    :cond_0
    iput-wide v0, p0, Lme/kuehle/chartlib/ChartView;->multiTouchStartDistance:D

    .line 269
    return-void
.end method


# virtual methods
.method public getChart()Lme/kuehle/chartlib/chart/Chart;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lme/kuehle/chartlib/ChartView;->chart:Lme/kuehle/chartlib/chart/Chart;

    return-object v0
.end method

.method public getNotEnoughDataView()Landroid/view/View;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lme/kuehle/chartlib/ChartView;->notEnoughDataView:Landroid/view/View;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 142
    iget-object v0, p0, Lme/kuehle/chartlib/ChartView;->chart:Lme/kuehle/chartlib/chart/Chart;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lme/kuehle/chartlib/ChartView;->chart:Lme/kuehle/chartlib/chart/Chart;

    invoke-virtual {v0}, Lme/kuehle/chartlib/chart/Chart;->hasEnoughData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lme/kuehle/chartlib/ChartView;->chart:Lme/kuehle/chartlib/chart/Chart;

    invoke-virtual {v0, p1}, Lme/kuehle/chartlib/chart/Chart;->draw(Landroid/graphics/Canvas;)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lme/kuehle/chartlib/ChartView;->notEnoughDataView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lme/kuehle/chartlib/ChartView;->notEnoughDataView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 154
    iget-object v0, p0, Lme/kuehle/chartlib/ChartView;->chart:Lme/kuehle/chartlib/chart/Chart;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lme/kuehle/chartlib/ChartView;->chart:Lme/kuehle/chartlib/chart/Chart;

    invoke-virtual {v0, p1, p2}, Lme/kuehle/chartlib/chart/Chart;->changeSize(II)V

    .line 157
    :cond_0
    iget-object v0, p0, Lme/kuehle/chartlib/ChartView;->notEnoughDataView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lme/kuehle/chartlib/ChartView;->notEnoughDataView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 159
    iget-object v0, p0, Lme/kuehle/chartlib/ChartView;->notEnoughDataView:Landroid/view/View;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/view/View;->layout(IIII)V

    .line 161
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    const/4 v11, 0x2

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    const/4 v4, 0x1

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 165
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 167
    .local v1, "count":I
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    .line 227
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :cond_0
    :goto_0
    return v4

    .line 170
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lme/kuehle/chartlib/ChartView;->timeLastDown:J

    .line 171
    if-ne v1, v11, :cond_1

    iget-wide v5, p0, Lme/kuehle/chartlib/ChartView;->multiTouchStartDistance:D

    cmpl-double v5, v5, v9

    if-nez v5, :cond_1

    .line 172
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    sub-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    sub-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    iput-wide v5, p0, Lme/kuehle/chartlib/ChartView;->multiTouchStartDistance:D

    goto :goto_0

    .line 175
    :cond_1
    if-ne v1, v4, :cond_0

    iget-object v5, p0, Lme/kuehle/chartlib/ChartView;->singleTouchStartPoint:Landroid/graphics/PointF;

    if-nez v5, :cond_0

    .line 176
    new-instance v5, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v5, p0, Lme/kuehle/chartlib/ChartView;->singleTouchStartPoint:Landroid/graphics/PointF;

    goto :goto_0

    .line 180
    :pswitch_2
    if-ne v1, v11, :cond_2

    iget-wide v5, p0, Lme/kuehle/chartlib/ChartView;->multiTouchStartDistance:D

    cmpl-double v5, v5, v9

    if-eqz v5, :cond_2

    .line 181
    invoke-direct {p0, p1}, Lme/kuehle/chartlib/ChartView;->zoomAdjustment(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 182
    :cond_2
    if-ne v1, v4, :cond_0

    iget-object v5, p0, Lme/kuehle/chartlib/ChartView;->singleTouchStartPoint:Landroid/graphics/PointF;

    if-eqz v5, :cond_0

    .line 183
    invoke-direct {p0, p1}, Lme/kuehle/chartlib/ChartView;->moveAdjustment(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 188
    :pswitch_3
    if-ne v1, v4, :cond_4

    iget-object v5, p0, Lme/kuehle/chartlib/ChartView;->singleTouchStartPoint:Landroid/graphics/PointF;

    if-eqz v5, :cond_4

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 190
    .local v2, "timeNow":J
    iget-wide v5, p0, Lme/kuehle/chartlib/ChartView;->timeLastDown:J

    sub-long v5, v2, v5

    const-wide/16 v7, 0x190

    cmp-long v5, v5, v7

    if-gez v5, :cond_4

    iget-object v5, p0, Lme/kuehle/chartlib/ChartView;->chart:Lme/kuehle/chartlib/chart/Chart;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lme/kuehle/chartlib/ChartView;->chart:Lme/kuehle/chartlib/chart/Chart;

    invoke-virtual {v5}, Lme/kuehle/chartlib/chart/Chart;->hasEnoughData()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 192
    iget-wide v5, p0, Lme/kuehle/chartlib/ChartView;->timeLastUp:J

    sub-long v5, v2, v5

    const-wide/16 v7, 0xc8

    cmp-long v5, v5, v7

    if-gez v5, :cond_5

    .line 193
    iget-object v5, p0, Lme/kuehle/chartlib/ChartView;->clickTask:Ljava/util/TimerTask;

    if-eqz v5, :cond_3

    .line 194
    iget-object v5, p0, Lme/kuehle/chartlib/ChartView;->clickTask:Ljava/util/TimerTask;

    invoke-virtual {v5}, Ljava/util/TimerTask;->cancel()Z

    .line 195
    const/4 v5, 0x0

    iput-object v5, p0, Lme/kuehle/chartlib/ChartView;->clickTask:Ljava/util/TimerTask;

    .line 197
    :cond_3
    iget-object v5, p0, Lme/kuehle/chartlib/ChartView;->chart:Lme/kuehle/chartlib/chart/Chart;

    iget-object v6, p0, Lme/kuehle/chartlib/ChartView;->singleTouchStartPoint:Landroid/graphics/PointF;

    invoke-virtual {v5, v6}, Lme/kuehle/chartlib/chart/Chart;->doubleClick(Landroid/graphics/PointF;)V

    .line 198
    invoke-virtual {p0}, Lme/kuehle/chartlib/ChartView;->invalidate()V

    .line 220
    .end local v2    # "timeNow":J
    :cond_4
    :goto_1
    if-ne v1, v11, :cond_6

    .line 221
    iput-wide v9, p0, Lme/kuehle/chartlib/ChartView;->multiTouchStartDistance:D

    goto/16 :goto_0

    .line 200
    .restart local v2    # "timeNow":J
    :cond_5
    iput-wide v2, p0, Lme/kuehle/chartlib/ChartView;->timeLastUp:J

    .line 201
    new-instance v5, Lme/kuehle/chartlib/ChartView$1;

    invoke-direct {v5, p0}, Lme/kuehle/chartlib/ChartView$1;-><init>(Lme/kuehle/chartlib/ChartView;)V

    iput-object v5, p0, Lme/kuehle/chartlib/ChartView;->clickTask:Ljava/util/TimerTask;

    .line 214
    iget-object v5, p0, Lme/kuehle/chartlib/ChartView;->clickTimer:Ljava/util/Timer;

    iget-object v6, p0, Lme/kuehle/chartlib/ChartView;->clickTask:Ljava/util/TimerTask;

    const-wide/16 v7, 0xc8

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_1

    .line 222
    .end local v2    # "timeNow":J
    :cond_6
    if-ne v1, v4, :cond_0

    .line 223
    const/4 v5, 0x0

    iput-object v5, p0, Lme/kuehle/chartlib/ChartView;->singleTouchStartPoint:Landroid/graphics/PointF;

    goto/16 :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setChart(Lme/kuehle/chartlib/chart/Chart;)V
    .locals 2
    .param p1, "chart"    # Lme/kuehle/chartlib/chart/Chart;

    .prologue
    .line 232
    iput-object p1, p0, Lme/kuehle/chartlib/ChartView;->chart:Lme/kuehle/chartlib/chart/Chart;

    .line 233
    if-eqz p1, :cond_0

    .line 234
    invoke-virtual {p0}, Lme/kuehle/chartlib/ChartView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lme/kuehle/chartlib/ChartView;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lme/kuehle/chartlib/chart/Chart;->changeSize(II)V

    .line 236
    :cond_0
    invoke-virtual {p0}, Lme/kuehle/chartlib/ChartView;->invalidate()V

    .line 237
    return-void
.end method

.method public setNotEnoughDataView(Landroid/view/View;)V
    .locals 3
    .param p1, "notEnoughDataView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 247
    iput-object p1, p0, Lme/kuehle/chartlib/ChartView;->notEnoughDataView:Landroid/view/View;

    .line 248
    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {p0}, Lme/kuehle/chartlib/ChartView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lme/kuehle/chartlib/ChartView;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 250
    invoke-virtual {p0}, Lme/kuehle/chartlib/ChartView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lme/kuehle/chartlib/ChartView;->getHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 252
    :cond_0
    invoke-virtual {p0}, Lme/kuehle/chartlib/ChartView;->invalidate()V

    .line 253
    return-void
.end method
