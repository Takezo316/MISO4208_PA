.class public Lcom/larswerkman/colorpicker/OpacityBar;
.super Landroid/view/View;
.source "OpacityBar.java"


# static fields
.field private static final STATE_COLOR:Ljava/lang/String; = "color"

.field private static final STATE_OPACITY:Ljava/lang/String; = "opacity"

.field private static final STATE_PARENT:Ljava/lang/String; = "parent"


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

.field private mOpacToPosFactor:F

.field private mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

.field private mPosToOpacFactor:F

.field private mPreferredBarLength:I

.field private shader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarRect:Landroid/graphics/RectF;

    .line 95
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mHSVColor:[F

    .line 110
    iput-object v1, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/larswerkman/colorpicker/OpacityBar;->init(Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarRect:Landroid/graphics/RectF;

    .line 95
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mHSVColor:[F

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/larswerkman/colorpicker/OpacityBar;->init(Landroid/util/AttributeSet;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarRect:Landroid/graphics/RectF;

    .line 95
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mHSVColor:[F

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    .line 124
    invoke-direct {p0, p2, p3}, Lcom/larswerkman/colorpicker/OpacityBar;->init(Landroid/util/AttributeSet;I)V

    .line 125
    return-void
.end method

.method private calculateColor(I)V
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 346
    iget v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    iget v1, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarLength:I

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    .line 348
    iget v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mPosToOpacFactor:F

    iget v1, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mHSVColor:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mColor:I

    .line 352
    :cond_0
    iget v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xfa

    if-le v0, v1, :cond_2

    .line 353
    iget-object v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mHSVColor:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mColor:I

    .line 357
    :cond_1
    :goto_0
    return-void

    .line 354
    :cond_2
    iget v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 355
    const/4 v0, 0x0

    iput v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mColor:I

    goto :goto_0
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 13
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const v12, -0x7e0100

    const/high16 v11, 0x437f0000    # 255.0f

    const/4 v10, 0x1

    .line 128
    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/OpacityBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/larswerkman/colorpicker/R$styleable;->ColorBars:[I

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 130
    .local v8, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/OpacityBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 132
    .local v9, "b":Landroid/content/res/Resources;
    sget v0, Lcom/larswerkman/colorpicker/R$dimen;->bar_thickness:I

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v8, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarThickness:I

    .line 135
    sget v0, Lcom/larswerkman/colorpicker/R$dimen;->bar_length:I

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v8, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarLength:I

    .line 137
    iget v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarLength:I

    iput v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mPreferredBarLength:I

    .line 138
    sget v0, Lcom/larswerkman/colorpicker/R$dimen;->bar_pointer_radius:I

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v8, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerRadius:I

    .line 141
    const/4 v0, 0x3

    sget v1, Lcom/larswerkman/colorpicker/R$dimen;->bar_pointer_halo_radius:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    .line 145
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 147
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarLength:I

    iget v4, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarThickness:I

    int-to-float v4, v4

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->shader:Landroid/graphics/Shader;

    .line 150
    iget-object v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mHSVColor:[F

    invoke-static {v12, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 152
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPaint:Landroid/graphics/Paint;

    .line 153
    iget-object v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/larswerkman/colorpicker/OpacityBar;->shader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 155
    iget v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarLength:I

    iget v1, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerPosition:I

    .line 157
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloPaint:Landroid/graphics/Paint;

    .line 158
    iget-object v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloPaint:Landroid/graphics/Paint;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 161
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerPaint:Landroid/graphics/Paint;

    .line 162
    iget-object v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    iget v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarLength:I

    int-to-float v0, v0

    div-float v0, v11, v0

    iput v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mPosToOpacFactor:F

    .line 165
    iget v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarLength:I

    int-to-float v0, v0

    div-float/2addr v0, v11

    iput v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mOpacToPosFactor:F

    .line 166
    return-void

    .line 147
    nop

    :array_0
    .array-data 4
        0x81ff00
        -0x7e0100
    .end array-data
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mColor:I

    return v0
.end method

.method public getOpacity()I
    .locals 4

    .prologue
    .line 328
    iget v1, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mPosToOpacFactor:F

    iget v2, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerPosition:I

    iget v3, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 330
    .local v0, "opacity":I
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 331
    const/4 v0, 0x0

    .line 335
    .end local v0    # "opacity":I
    :cond_0
    :goto_0
    return v0

    .line 332
    .restart local v0    # "opacity":I
    :cond_1
    const/16 v1, 0xfa

    if-le v0, v1, :cond_0

    .line 333
    const/16 v0, 0xff

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 219
    iget v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerPosition:I

    int-to-float v0, v0

    iget v1, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 222
    iget v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerPosition:I

    int-to-float v0, v0

    iget v1, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 224
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 170
    iget v4, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mPreferredBarLength:I

    iget v5, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v5, v5, 0x2

    add-int v0, v4, v5

    .line 173
    .local v0, "intrinsicSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 174
    .local v2, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 177
    .local v3, "widthSize":I
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, v4, :cond_0

    .line 178
    move v1, v3

    .line 185
    .local v1, "width":I
    :goto_0
    iget v4, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    iput v4, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarLength:I

    .line 186
    iget v4, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarLength:I

    iget v5, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {p0, v4, v5}, Lcom/larswerkman/colorpicker/OpacityBar;->setMeasuredDimension(II)V

    .line 188
    return-void

    .line 179
    .end local v1    # "width":I
    :cond_0
    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_1

    .line 180
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .restart local v1    # "width":I
    goto :goto_0

    .line 182
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
    .line 395
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 397
    .local v0, "savedState":Landroid/os/Bundle;
    const-string v2, "parent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 398
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 400
    const-string v2, "color"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/larswerkman/colorpicker/OpacityBar;->setColor(I)V

    .line 401
    const-string v2, "opacity"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/larswerkman/colorpicker/OpacityBar;->setOpacity(I)V

    .line 402
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 383
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 385
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 386
    .local v0, "state":Landroid/os/Bundle;
    const-string v2, "parent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 387
    const-string v2, "color"

    iget-object v3, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mHSVColor:[F

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 388
    const-string v2, "opacity"

    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/OpacityBar;->getOpacity()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 390
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 10
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v7, 0x0

    const/high16 v9, 0x437f0000    # 255.0f

    .line 192
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 193
    iget v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    iput v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarLength:I

    .line 196
    iget-object v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    iget v3, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarThickness:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarLength:I

    iget v4, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    iget v5, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarThickness:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 202
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarLength:I

    iget v4, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarThickness:I

    int-to-float v4, v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    iget-object v6, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mHSVColor:[F

    invoke-static {v7, v6}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    aput v6, v5, v7

    const/4 v6, 0x1

    const/16 v7, 0xff

    iget-object v8, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mHSVColor:[F

    invoke-static {v7, v8}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->shader:Landroid/graphics/Shader;

    .line 207
    iget-object v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/larswerkman/colorpicker/OpacityBar;->shader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 208
    iget v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarLength:I

    int-to-float v0, v0

    div-float v0, v9, v0

    iput v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mPosToOpacFactor:F

    .line 209
    iget v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarLength:I

    int-to-float v0, v0

    div-float/2addr v0, v9

    iput v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mOpacToPosFactor:F

    .line 210
    iget v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mOpacToPosFactor:F

    iget v1, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerPosition:I

    .line 212
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 230
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 232
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 280
    :cond_0
    :goto_0
    return v5

    .line 235
    :pswitch_0
    iget v2, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    iget v3, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarLength:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    .line 238
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerPosition:I

    .line 239
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/larswerkman/colorpicker/OpacityBar;->calculateColor(I)V

    .line 240
    iget-object v2, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 241
    iput-boolean v5, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mIsMovingPointer:Z

    .line 242
    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/OpacityBar;->invalidate()V

    goto :goto_0

    .line 246
    :pswitch_1
    iget-boolean v2, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mIsMovingPointer:Z

    if-eqz v2, :cond_0

    .line 248
    iget v2, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    iget v3, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarLength:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_2

    .line 250
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerPosition:I

    .line 251
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/larswerkman/colorpicker/OpacityBar;->calculateColor(I)V

    .line 252
    iget-object v2, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 253
    iget-object v2, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    if-eqz v2, :cond_1

    .line 254
    iget-object v2, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    iget v3, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mColor:I

    invoke-virtual {v2, v3}, Lcom/larswerkman/colorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 256
    :cond_1
    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/OpacityBar;->invalidate()V

    goto :goto_0

    .line 257
    :cond_2
    iget v2, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_4

    .line 258
    iget v2, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    iput v2, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerPosition:I

    .line 259
    iput v4, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mColor:I

    .line 260
    iget-object v2, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 261
    iget-object v2, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    if-eqz v2, :cond_3

    .line 262
    iget-object v2, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    iget v3, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mColor:I

    invoke-virtual {v2, v3}, Lcom/larswerkman/colorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 264
    :cond_3
    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/OpacityBar;->invalidate()V

    goto/16 :goto_0

    .line 265
    :cond_4
    iget v2, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    iget v3, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarLength:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 266
    iget v2, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    iget v3, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerPosition:I

    .line 267
    iget-object v2, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mHSVColor:[F

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    iput v2, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mColor:I

    .line 268
    iget-object v2, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 269
    iget-object v2, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    if-eqz v2, :cond_5

    .line 270
    iget-object v2, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    iget v3, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mColor:I

    invoke-virtual {v2, v3}, Lcom/larswerkman/colorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 272
    :cond_5
    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/OpacityBar;->invalidate()V

    goto/16 :goto_0

    .line 277
    :pswitch_2
    iput-boolean v4, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mIsMovingPointer:Z

    goto/16 :goto_0

    .line 232
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
    const/4 v7, 0x0

    .line 291
    iget-object v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mHSVColor:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 292
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarLength:I

    iget v4, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarThickness:I

    int-to-float v4, v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    iget-object v6, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mHSVColor:[F

    invoke-static {v7, v6}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    aput v6, v5, v7

    const/4 v6, 0x1

    aput p1, v5, v6

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->shader:Landroid/graphics/Shader;

    .line 296
    iget-object v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/larswerkman/colorpicker/OpacityBar;->shader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 297
    iget v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerPosition:I

    invoke-direct {p0, v0}, Lcom/larswerkman/colorpicker/OpacityBar;->calculateColor(I)V

    .line 298
    iget-object v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 299
    iget-object v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/colorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/OpacityBar;->invalidate()V

    .line 303
    return-void
.end method

.method public setColorPicker(Lcom/larswerkman/colorpicker/ColorPicker;)V
    .locals 0
    .param p1, "picker"    # Lcom/larswerkman/colorpicker/ColorPicker;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    .line 379
    return-void
.end method

.method public setOpacity(I)V
    .locals 2
    .param p1, "opacity"    # I

    .prologue
    .line 312
    iget v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mOpacToPosFactor:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerHaloRadius:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerPosition:I

    .line 314
    iget v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerPosition:I

    invoke-direct {p0, v0}, Lcom/larswerkman/colorpicker/OpacityBar;->calculateColor(I)V

    .line 315
    iget-object v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 316
    iget-object v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/colorpicker/OpacityBar;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/colorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/OpacityBar;->invalidate()V

    .line 320
    return-void
.end method
