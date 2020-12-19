.class public Lcom/larswerkman/colorpicker/SVBar;
.super Landroid/view/View;
.source "SVBar.java"


# static fields
.field private static final STATE_COLOR:Ljava/lang/String; = "color"

.field private static final STATE_PARENT:Ljava/lang/String; = "parent"

.field private static final STATE_SATURATION:Ljava/lang/String; = "saturation"

.field private static final STATE_VALUE:Ljava/lang/String; = "value"


# instance fields
.field private mBarLength:I

.field private mBarPaint:Landroid/graphics/Paint;

.field private mBarPointerHaloPaint:Landroid/graphics/Paint;

.field private mBarPointerHaloRadius:I

.field private mBarPointerPaint:Landroid/graphics/Paint;

.field private mBarPointerPosition:I

.field private mBarPointerRadius:I

.field private mBarRect:Landroid/graphics/RectF;

.field private mBarThickness:I

.field private mColor:I

.field private mHSVColor:[F

.field private mIsMovingPointer:Z

.field private mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

.field private mPosToSVFactor:F

.field private mPreferredBarLength:I

.field private mSVToPosFactor:F

.field private shader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 88
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarRect:Landroid/graphics/RectF;

    .line 112
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mHSVColor:[F

    .line 127
    iput-object v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/larswerkman/colorpicker/SVBar;->init(Landroid/util/AttributeSet;I)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarRect:Landroid/graphics/RectF;

    .line 112
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mHSVColor:[F

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/larswerkman/colorpicker/SVBar;->init(Landroid/util/AttributeSet;I)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 140
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarRect:Landroid/graphics/RectF;

    .line 112
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mHSVColor:[F

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    .line 141
    invoke-direct {p0, p2, p3}, Lcom/larswerkman/colorpicker/SVBar;->init(Landroid/util/AttributeSet;I)V

    .line 142
    return-void
.end method

.method private calculateColor(I)V
    .locals 7
    .param p1, "x"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 382
    iget v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    iget v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarLength:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    iget v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarLength:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    .line 384
    new-array v0, v6, [F

    iget-object v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mHSVColor:[F

    aget v1, v1, v2

    aput v1, v0, v2

    aput v4, v0, v3

    iget v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mPosToSVFactor:F

    iget v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    iget v3, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarLength:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int v2, p1, v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float v1, v4, v1

    aput v1, v0, v5

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mColor:I

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    if-le p1, v0, :cond_2

    iget v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    iget v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarLength:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_2

    .line 391
    new-array v0, v6, [F

    iget-object v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mHSVColor:[F

    aget v1, v1, v2

    aput v1, v0, v2

    iget v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mPosToSVFactor:F

    iget v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    sub-int v2, p1, v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    aput v1, v0, v3

    aput v4, v0, v5

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mColor:I

    goto :goto_0

    .line 394
    :cond_2
    iget v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    if-ne p1, v0, :cond_3

    .line 395
    const/4 v0, -0x1

    iput v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mColor:I

    goto :goto_0

    .line 396
    :cond_3
    iget v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    iget v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarLength:I

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    .line 397
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mColor:I

    goto :goto_0
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/SVBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/larswerkman/colorpicker/R$styleable;->ColorBars:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 147
    .local v8, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/SVBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 149
    .local v9, "b":Landroid/content/res/Resources;
    const/4 v0, 0x0

    sget v1, Lcom/larswerkman/colorpicker/R$dimen;->bar_thickness:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarThickness:I

    .line 152
    const/4 v0, 0x1

    sget v1, Lcom/larswerkman/colorpicker/R$dimen;->bar_length:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarLength:I

    .line 154
    iget v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarLength:I

    iput v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mPreferredBarLength:I

    .line 155
    const/4 v0, 0x2

    sget v1, Lcom/larswerkman/colorpicker/R$dimen;->bar_pointer_radius:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerRadius:I

    .line 158
    const/4 v0, 0x3

    sget v1, Lcom/larswerkman/colorpicker/R$dimen;->bar_pointer_halo_radius:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    .line 162
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 164
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarLength:I

    iget v4, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarThickness:I

    int-to-float v4, v4

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->shader:Landroid/graphics/Shader;

    .line 168
    const v0, -0x7e0100

    iget-object v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mHSVColor:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 170
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPaint:Landroid/graphics/Paint;

    .line 171
    iget-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/larswerkman/colorpicker/SVBar;->shader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 173
    iget v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarLength:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerPosition:I

    .line 175
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloPaint:Landroid/graphics/Paint;

    .line 176
    iget-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    iget-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloPaint:Landroid/graphics/Paint;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 179
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerPaint:Landroid/graphics/Paint;

    .line 180
    iget-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerPaint:Landroid/graphics/Paint;

    const v1, -0x7e0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarLength:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mPosToSVFactor:F

    .line 183
    iget v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarLength:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mSVToPosFactor:F

    .line 185
    return-void

    .line 164
    :array_0
    .array-data 4
        -0x1
        -0x7e0100
        -0x1000000
    .end array-data
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 245
    iget v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerPosition:I

    int-to-float v0, v0

    iget v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 248
    iget v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerPosition:I

    int-to-float v0, v0

    iget v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 250
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 189
    iget v4, p0, Lcom/larswerkman/colorpicker/SVBar;->mPreferredBarLength:I

    iget v5, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v5, v5, 0x2

    add-int v0, v4, v5

    .line 192
    .local v0, "intrinsicSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 193
    .local v2, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 196
    .local v3, "widthSize":I
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, v4, :cond_0

    .line 197
    move v1, v3

    .line 204
    .local v1, "width":I
    :goto_0
    iget v4, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    iput v4, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarLength:I

    .line 205
    iget v4, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarLength:I

    iget v5, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {p0, v4, v5}, Lcom/larswerkman/colorpicker/SVBar;->setMeasuredDimension(II)V

    .line 207
    return-void

    .line 198
    .end local v1    # "width":I
    :cond_0
    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_1

    .line 199
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .restart local v1    # "width":I
    goto :goto_0

    .line 201
    .end local v1    # "width":I
    :cond_1
    move v1, v0

    .restart local v1    # "width":I
    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 443
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 445
    .local v0, "savedState":Landroid/os/Bundle;
    const-string v2, "parent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 446
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 448
    const-string v2, "color"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/larswerkman/colorpicker/SVBar;->setColor(I)V

    .line 449
    const-string v2, "saturation"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 450
    const-string v2, "saturation"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/larswerkman/colorpicker/SVBar;->setSaturation(F)V

    .line 454
    :goto_0
    return-void

    .line 452
    :cond_0
    const-string v2, "value"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/larswerkman/colorpicker/SVBar;->setValue(F)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 425
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 427
    .local v2, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 428
    .local v1, "state":Landroid/os/Bundle;
    const-string v3, "parent"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 429
    const-string v3, "color"

    iget-object v4, p0, Lcom/larswerkman/colorpicker/SVBar;->mHSVColor:[F

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 430
    const/4 v3, 0x3

    new-array v0, v3, [F

    .line 431
    .local v0, "hsvColor":[F
    iget v3, p0, Lcom/larswerkman/colorpicker/SVBar;->mColor:I

    invoke-static {v3, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 432
    aget v3, v0, v5

    aget v4, v0, v6

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 433
    const-string v3, "saturation"

    aget v4, v0, v5

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 438
    :goto_0
    return-object v1

    .line 435
    :cond_0
    const-string v3, "value"

    aget v4, v0, v6

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 9
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 211
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 212
    iget v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    iput v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarLength:I

    .line 215
    iget-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    iget v3, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarThickness:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarLength:I

    iget v4, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    iget v5, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarThickness:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 221
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarLength:I

    iget v4, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarThickness:I

    int-to-float v4, v4

    const/4 v5, 0x3

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, -0x1

    aput v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/larswerkman/colorpicker/SVBar;->mHSVColor:[F

    invoke-static {v7}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x2

    const/high16 v7, -0x1000000

    aput v7, v5, v6

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->shader:Landroid/graphics/Shader;

    .line 225
    iget-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/larswerkman/colorpicker/SVBar;->shader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 226
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarLength:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mPosToSVFactor:F

    .line 227
    iget v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarLength:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mSVToPosFactor:F

    .line 228
    const/4 v0, 0x3

    new-array v8, v0, [F

    .line 229
    .local v8, "hsvColor":[F
    iget v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mColor:I

    invoke-static {v0, v8}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 230
    const/4 v0, 0x1

    aget v0, v8, v0

    const/4 v1, 0x2

    aget v1, v8, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 231
    iget v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mSVToPosFactor:F

    const/4 v1, 0x1

    aget v1, v8, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerPosition:I

    .line 238
    :goto_0
    return-void

    .line 234
    :cond_0
    iget v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mSVToPosFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    aget v2, v8, v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarLength:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerPosition:I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 255
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 256
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 258
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 309
    :cond_0
    :goto_0
    return v4

    .line 261
    :pswitch_0
    iget v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    iget v3, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarLength:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    .line 264
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerPosition:I

    .line 265
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/larswerkman/colorpicker/SVBar;->calculateColor(I)V

    .line 266
    iget-object v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/larswerkman/colorpicker/SVBar;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 267
    iput-boolean v4, p0, Lcom/larswerkman/colorpicker/SVBar;->mIsMovingPointer:Z

    .line 268
    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/SVBar;->invalidate()V

    goto :goto_0

    .line 272
    :pswitch_1
    iget-boolean v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mIsMovingPointer:Z

    if-eqz v2, :cond_0

    .line 274
    iget v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    iget v3, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarLength:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_2

    .line 276
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerPosition:I

    .line 277
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/larswerkman/colorpicker/SVBar;->calculateColor(I)V

    .line 278
    iget-object v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/larswerkman/colorpicker/SVBar;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 279
    iget-object v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    if-eqz v2, :cond_1

    .line 280
    iget-object v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    iget v3, p0, Lcom/larswerkman/colorpicker/SVBar;->mColor:I

    invoke-virtual {v2, v3}, Lcom/larswerkman/colorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 281
    iget-object v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    iget v3, p0, Lcom/larswerkman/colorpicker/SVBar;->mColor:I

    invoke-virtual {v2, v3}, Lcom/larswerkman/colorpicker/ColorPicker;->changeOpacityBarColor(I)V

    .line 283
    :cond_1
    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/SVBar;->invalidate()V

    goto :goto_0

    .line 284
    :cond_2
    iget v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_4

    .line 285
    iget v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    iput v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerPosition:I

    .line 286
    const/4 v2, -0x1

    iput v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mColor:I

    .line 287
    iget-object v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/larswerkman/colorpicker/SVBar;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 288
    iget-object v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    if-eqz v2, :cond_3

    .line 289
    iget-object v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    iget v3, p0, Lcom/larswerkman/colorpicker/SVBar;->mColor:I

    invoke-virtual {v2, v3}, Lcom/larswerkman/colorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 290
    iget-object v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    iget v3, p0, Lcom/larswerkman/colorpicker/SVBar;->mColor:I

    invoke-virtual {v2, v3}, Lcom/larswerkman/colorpicker/ColorPicker;->changeOpacityBarColor(I)V

    .line 292
    :cond_3
    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/SVBar;->invalidate()V

    goto/16 :goto_0

    .line 293
    :cond_4
    iget v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    iget v3, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarLength:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 294
    iget v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    iget v3, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerPosition:I

    .line 295
    const/high16 v2, -0x1000000

    iput v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mColor:I

    .line 296
    iget-object v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/larswerkman/colorpicker/SVBar;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 297
    iget-object v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    if-eqz v2, :cond_5

    .line 298
    iget-object v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    iget v3, p0, Lcom/larswerkman/colorpicker/SVBar;->mColor:I

    invoke-virtual {v2, v3}, Lcom/larswerkman/colorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 299
    iget-object v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    iget v3, p0, Lcom/larswerkman/colorpicker/SVBar;->mColor:I

    invoke-virtual {v2, v3}, Lcom/larswerkman/colorpicker/ColorPicker;->changeOpacityBarColor(I)V

    .line 301
    :cond_5
    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/SVBar;->invalidate()V

    goto/16 :goto_0

    .line 306
    :pswitch_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/larswerkman/colorpicker/SVBar;->mIsMovingPointer:Z

    goto/16 :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 8
    .param p1, "color"    # I

    .prologue
    .line 360
    iget-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mHSVColor:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 361
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarLength:I

    iget v4, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarThickness:I

    int-to-float v4, v4

    const/4 v5, 0x3

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, -0x1

    aput v7, v5, v6

    const/4 v6, 0x1

    aput p1, v5, v6

    const/4 v6, 0x2

    const/high16 v7, -0x1000000

    aput v7, v5, v6

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->shader:Landroid/graphics/Shader;

    .line 365
    iget-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/larswerkman/colorpicker/SVBar;->shader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 366
    iget v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerPosition:I

    invoke-direct {p0, v0}, Lcom/larswerkman/colorpicker/SVBar;->calculateColor(I)V

    .line 367
    iget-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 368
    iget-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/colorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 370
    iget-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/colorpicker/ColorPicker;->changeOpacityBarColor(I)V

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/SVBar;->invalidate()V

    .line 373
    return-void
.end method

.method public setColorPicker(Lcom/larswerkman/colorpicker/ColorPicker;)V
    .locals 0
    .param p1, "picker"    # Lcom/larswerkman/colorpicker/ColorPicker;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/larswerkman/colorpicker/SVBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    .line 421
    return-void
.end method

.method public setSaturation(F)V
    .locals 2
    .param p1, "saturation"    # F

    .prologue
    .line 319
    iget v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mSVToPosFactor:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerPosition:I

    .line 321
    iget v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerPosition:I

    invoke-direct {p0, v0}, Lcom/larswerkman/colorpicker/SVBar;->calculateColor(I)V

    .line 322
    iget-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 325
    iget-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/colorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 327
    iget-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/colorpicker/ColorPicker;->changeOpacityBarColor(I)V

    .line 329
    :cond_0
    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/SVBar;->invalidate()V

    .line 330
    return-void
.end method

.method public setValue(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 339
    iget v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mSVToPosFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarLength:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerPosition:I

    .line 341
    iget v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerPosition:I

    invoke-direct {p0, v0}, Lcom/larswerkman/colorpicker/SVBar;->calculateColor(I)V

    .line 342
    iget-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 345
    iget-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/colorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 347
    iget-object v0, p0, Lcom/larswerkman/colorpicker/SVBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/colorpicker/SVBar;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/colorpicker/ColorPicker;->changeOpacityBarColor(I)V

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/SVBar;->invalidate()V

    .line 350
    return-void
.end method
