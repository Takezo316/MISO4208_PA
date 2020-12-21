.class public Lcom/larswerkman/colorpicker/ColorPicker;
.super Landroid/view/View;
.source "ColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/larswerkman/colorpicker/ColorPicker$OnColorChangedListener;
    }
.end annotation


# static fields
.field private static final COLORS:[I

.field private static final STATE_ANGLE:Ljava/lang/String; = "angle"

.field private static final STATE_OLD_COLOR:Ljava/lang/String; = "color"

.field private static final STATE_PARENT:Ljava/lang/String; = "parent"


# instance fields
.field private mAngle:F

.field private mCenterHaloPaint:Landroid/graphics/Paint;

.field private mCenterNewColor:I

.field private mCenterNewPaint:Landroid/graphics/Paint;

.field private mCenterOldColor:I

.field private mCenterOldPaint:Landroid/graphics/Paint;

.field private mCenterRectangle:Landroid/graphics/RectF;

.field private mColor:I

.field private mColorCenterHaloRadius:I

.field private mColorCenterRadius:I

.field private mColorPointerHaloRadius:I

.field private mColorPointerRadius:I

.field private mColorWheelPaint:Landroid/graphics/Paint;

.field private mColorWheelRadius:I

.field private mColorWheelRectangle:Landroid/graphics/RectF;

.field private mColorWheelThickness:I

.field private mHSV:[F

.field private mOpacityBar:Lcom/larswerkman/colorpicker/OpacityBar;

.field private mPointerColor:Landroid/graphics/Paint;

.field private mPointerHaloPaint:Landroid/graphics/Paint;

.field private mPreferredColorCenterHaloRadius:I

.field private mPreferredColorCenterRadius:I

.field private mPreferredColorWheelRadius:I

.field private mSVbar:Lcom/larswerkman/colorpicker/SVBar;

.field private mTranslationOffset:F

.field private mUserIsMovingPointer:Z

.field private onColorChangedListener:Lcom/larswerkman/colorpicker/ColorPicker$OnColorChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/larswerkman/colorpicker/ColorPicker;->COLORS:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x10000
        -0xff01
        -0xffff01
        -0xff0001
        -0xff0100
        -0x100
        -0x10000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 207
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelRectangle:Landroid/graphics/RectF;

    .line 119
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mCenterRectangle:Landroid/graphics/RectF;

    .line 127
    iput-boolean v2, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mUserIsMovingPointer:Z

    .line 189
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mHSV:[F

    .line 194
    iput-object v1, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/colorpicker/SVBar;

    .line 199
    iput-object v1, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/colorpicker/OpacityBar;

    .line 208
    invoke-direct {p0, v1, v2}, Lcom/larswerkman/colorpicker/ColorPicker;->init(Landroid/util/AttributeSet;I)V

    .line 209
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 212
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelRectangle:Landroid/graphics/RectF;

    .line 119
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mCenterRectangle:Landroid/graphics/RectF;

    .line 127
    iput-boolean v1, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mUserIsMovingPointer:Z

    .line 189
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mHSV:[F

    .line 194
    iput-object v2, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/colorpicker/SVBar;

    .line 199
    iput-object v2, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/colorpicker/OpacityBar;

    .line 213
    invoke-direct {p0, p2, v1}, Lcom/larswerkman/colorpicker/ColorPicker;->init(Landroid/util/AttributeSet;I)V

    .line 214
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 217
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelRectangle:Landroid/graphics/RectF;

    .line 119
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mCenterRectangle:Landroid/graphics/RectF;

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mUserIsMovingPointer:Z

    .line 189
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mHSV:[F

    .line 194
    iput-object v1, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/colorpicker/SVBar;

    .line 199
    iput-object v1, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/colorpicker/OpacityBar;

    .line 218
    invoke-direct {p0, p2, p3}, Lcom/larswerkman/colorpicker/ColorPicker;->init(Landroid/util/AttributeSet;I)V

    .line 219
    return-void
.end method

.method private ave(IIF)I
    .locals 1
    .param p1, "s"    # I
    .param p2, "d"    # I
    .param p3, "p"    # F

    .prologue
    .line 385
    sub-int v0, p2, p1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private calculateColor(F)I
    .locals 13
    .param p1, "angle"    # F

    .prologue
    .line 398
    float-to-double v9, p1

    const-wide v11, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v9, v11

    double-to-float v8, v9

    .line 399
    .local v8, "unit":F
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_0

    .line 400
    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v8, v9

    .line 403
    :cond_0
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gtz v9, :cond_1

    .line 404
    sget-object v9, Lcom/larswerkman/colorpicker/ColorPicker;->COLORS:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    iput v9, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColor:I

    .line 405
    sget-object v9, Lcom/larswerkman/colorpicker/ColorPicker;->COLORS:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    .line 424
    :goto_0
    return v9

    .line 407
    :cond_1
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v8, v9

    if-ltz v9, :cond_2

    .line 408
    sget-object v9, Lcom/larswerkman/colorpicker/ColorPicker;->COLORS:[I

    sget-object v10, Lcom/larswerkman/colorpicker/ColorPicker;->COLORS:[I

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    aget v9, v9, v10

    iput v9, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColor:I

    .line 409
    sget-object v9, Lcom/larswerkman/colorpicker/ColorPicker;->COLORS:[I

    sget-object v10, Lcom/larswerkman/colorpicker/ColorPicker;->COLORS:[I

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    aget v9, v9, v10

    goto :goto_0

    .line 412
    :cond_2
    sget-object v9, Lcom/larswerkman/colorpicker/ColorPicker;->COLORS:[I

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    mul-float v6, v8, v9

    .line 413
    .local v6, "p":F
    float-to-int v5, v6

    .line 414
    .local v5, "i":I
    int-to-float v9, v5

    sub-float/2addr v6, v9

    .line 416
    sget-object v9, Lcom/larswerkman/colorpicker/ColorPicker;->COLORS:[I

    aget v2, v9, v5

    .line 417
    .local v2, "c0":I
    sget-object v9, Lcom/larswerkman/colorpicker/ColorPicker;->COLORS:[I

    add-int/lit8 v10, v5, 0x1

    aget v3, v9, v10

    .line 418
    .local v3, "c1":I
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    invoke-direct {p0, v9, v10, v6}, Lcom/larswerkman/colorpicker/ColorPicker;->ave(IIF)I

    move-result v0

    .line 419
    .local v0, "a":I
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v9

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v10

    invoke-direct {p0, v9, v10, v6}, Lcom/larswerkman/colorpicker/ColorPicker;->ave(IIF)I

    move-result v7

    .line 420
    .local v7, "r":I
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v9

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v10

    invoke-direct {p0, v9, v10, v6}, Lcom/larswerkman/colorpicker/ColorPicker;->ave(IIF)I

    move-result v4

    .line 421
    .local v4, "g":I
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    invoke-direct {p0, v9, v10, v6}, Lcom/larswerkman/colorpicker/ColorPicker;->ave(IIF)I

    move-result v1

    .line 423
    .local v1, "b":I
    invoke-static {v0, v7, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    iput v9, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColor:I

    .line 424
    invoke-static {v0, v7, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    goto :goto_0
.end method

.method private calculatePointerPosition(F)[F
    .locals 6
    .param p1, "angle"    # F

    .prologue
    .line 707
    iget v2, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelRadius:I

    int-to-double v2, v2

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v0, v2

    .line 708
    .local v0, "x":F
    iget v2, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelRadius:I

    int-to-double v2, v2

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v1, v2

    .line 710
    .local v1, "y":F
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    return-object v2
.end method

.method private colorToAngle(I)F
    .locals 20
    .param p1, "color"    # I

    .prologue
    .line 490
    invoke-direct/range {p0 .. p1}, Lcom/larswerkman/colorpicker/ColorPicker;->normalizeColor(I)[I

    move-result-object v4

    .line 491
    .local v4, "colorInfo":[I
    const/16 v16, 0x0

    aget v11, v4, v16

    .line 492
    .local v11, "normColor":I
    const/16 v16, 0x1

    aget v5, v4, v16

    .line 493
    .local v5, "colorMask":I
    const/16 v16, 0x2

    aget v13, v4, v16

    .line 495
    .local v13, "shiftValue":I
    xor-int/lit8 v16, v5, -0x1

    and-int v2, v11, v16

    .line 498
    .local v2, "anchorColor":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    sget-object v16, Lcom/larswerkman/colorpicker/ColorPicker;->COLORS:[I

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-ge v8, v0, :cond_6

    .line 499
    sget-object v16, Lcom/larswerkman/colorpicker/ColorPicker;->COLORS:[I

    aget v16, v16, v8

    move/from16 v0, v16

    if-ne v0, v2, :cond_5

    .line 500
    sget-object v16, Lcom/larswerkman/colorpicker/ColorPicker;->COLORS:[I

    add-int/lit8 v17, v8, 0x1

    aget v10, v16, v17

    .line 503
    .local v10, "nextValue":I
    shr-int v16, v11, v13

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x406fe00000000000L    # 255.0

    div-double v6, v16, v18

    .line 508
    .local v6, "decimals":D
    and-int v16, v10, v5

    and-int v17, v2, v5

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2

    .line 510
    if-ge v10, v2, :cond_1

    .line 511
    add-int/lit8 v16, v8, 0x1

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v14, v16, v6

    .line 533
    .local v14, "value":D
    :goto_1
    const-wide v16, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v16, v16, v14

    sget-object v18, Lcom/larswerkman/colorpicker/ColorPicker;->COLORS:[I

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v3, v0

    .line 534
    .local v3, "angle":F
    float-to-double v0, v3

    move-wide/from16 v16, v0

    const-wide v18, 0x400921fb54442d18L    # Math.PI

    cmpl-double v16, v16, v18

    if-lez v16, :cond_0

    .line 535
    float-to-double v0, v3

    move-wide/from16 v16, v0

    const-wide v18, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v3, v0

    .line 543
    .end local v3    # "angle":F
    .end local v6    # "decimals":D
    .end local v10    # "nextValue":I
    .end local v14    # "value":D
    :cond_0
    :goto_2
    return v3

    .line 513
    .restart local v6    # "decimals":D
    .restart local v10    # "nextValue":I
    :cond_1
    int-to-double v0, v8

    move-wide/from16 v16, v0

    add-double v14, v16, v6

    .restart local v14    # "value":D
    goto :goto_1

    .line 521
    .end local v14    # "value":D
    :cond_2
    if-nez v8, :cond_3

    sget-object v16, Lcom/larswerkman/colorpicker/ColorPicker;->COLORS:[I

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v9, v16, -0x1

    .line 522
    .local v9, "index":I
    :goto_3
    sget-object v16, Lcom/larswerkman/colorpicker/ColorPicker;->COLORS:[I

    add-int/lit8 v17, v9, -0x1

    aget v12, v16, v17

    .line 525
    .local v12, "prevValue":I
    if-ge v12, v2, :cond_4

    .line 526
    add-int/lit8 v16, v9, -0x1

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v14, v16, v6

    .restart local v14    # "value":D
    goto :goto_1

    .end local v9    # "index":I
    .end local v12    # "prevValue":I
    .end local v14    # "value":D
    :cond_3
    move v9, v8

    .line 521
    goto :goto_3

    .line 528
    .restart local v9    # "index":I
    .restart local v12    # "prevValue":I
    :cond_4
    int-to-double v0, v9

    move-wide/from16 v16, v0

    sub-double v14, v16, v6

    .restart local v14    # "value":D
    goto :goto_1

    .line 498
    .end local v6    # "decimals":D
    .end local v9    # "index":I
    .end local v10    # "nextValue":I
    .end local v12    # "prevValue":I
    .end local v14    # "value":D
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 543
    :cond_6
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const/high16 v8, -0x1000000

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 251
    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/ColorPicker;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/larswerkman/colorpicker/R$styleable;->ColorPicker:[I

    invoke-virtual {v3, p1, v4, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 253
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/ColorPicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 255
    .local v1, "b":Landroid/content/res/Resources;
    sget v3, Lcom/larswerkman/colorpicker/R$dimen;->color_wheel_thickness:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelThickness:I

    .line 258
    sget v3, Lcom/larswerkman/colorpicker/R$dimen;->color_wheel_radius:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelRadius:I

    .line 261
    iget v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelRadius:I

    iput v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPreferredColorWheelRadius:I

    .line 262
    const/4 v3, 0x2

    sget v4, Lcom/larswerkman/colorpicker/R$dimen;->color_center_radius:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorCenterRadius:I

    .line 265
    iget v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorCenterRadius:I

    iput v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPreferredColorCenterRadius:I

    .line 266
    const/4 v3, 0x3

    sget v4, Lcom/larswerkman/colorpicker/R$dimen;->color_center_halo_radius:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorCenterHaloRadius:I

    .line 269
    iget v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorCenterHaloRadius:I

    iput v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPreferredColorCenterHaloRadius:I

    .line 270
    const/4 v3, 0x4

    sget v4, Lcom/larswerkman/colorpicker/R$dimen;->color_pointer_radius:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorPointerRadius:I

    .line 273
    const/4 v3, 0x5

    sget v4, Lcom/larswerkman/colorpicker/R$dimen;->color_pointer_halo_radius:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorPointerHaloRadius:I

    .line 277
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 279
    const v3, -0x4036f025

    iput v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mAngle:F

    .line 281
    new-instance v2, Landroid/graphics/SweepGradient;

    sget-object v3, Lcom/larswerkman/colorpicker/ColorPicker;->COLORS:[I

    const/4 v4, 0x0

    invoke-direct {v2, v7, v7, v3, v4}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 283
    .local v2, "s":Landroid/graphics/Shader;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelPaint:Landroid/graphics/Paint;

    .line 284
    iget-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 285
    iget-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 286
    iget-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelThickness:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 288
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPointerHaloPaint:Landroid/graphics/Paint;

    .line 289
    iget-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPointerHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 290
    iget-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPointerHaloPaint:Landroid/graphics/Paint;

    const/16 v4, 0x50

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 292
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPointerColor:Landroid/graphics/Paint;

    .line 293
    iget-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPointerColor:Landroid/graphics/Paint;

    iget v4, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mAngle:F

    invoke-direct {p0, v4}, Lcom/larswerkman/colorpicker/ColorPicker;->calculateColor(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 295
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mCenterNewPaint:Landroid/graphics/Paint;

    .line 296
    iget-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mCenterNewPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mAngle:F

    invoke-direct {p0, v4}, Lcom/larswerkman/colorpicker/ColorPicker;->calculateColor(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 297
    iget-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mCenterNewPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 299
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mCenterOldPaint:Landroid/graphics/Paint;

    .line 300
    iget-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mCenterOldPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mAngle:F

    invoke-direct {p0, v4}, Lcom/larswerkman/colorpicker/ColorPicker;->calculateColor(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 301
    iget-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mCenterOldPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 303
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mCenterHaloPaint:Landroid/graphics/Paint;

    .line 304
    iget-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mCenterHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 305
    iget-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mCenterHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 307
    return-void
.end method

.method private normalizeColor(I)[I
    .locals 16
    .param p1, "color"    # I

    .prologue
    .line 572
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/larswerkman/colorpicker/ColorPicker;->mHSV:[F

    move/from16 v0, p1

    invoke-static {v0, v13}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 573
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/larswerkman/colorpicker/ColorPicker;->mHSV:[F

    const/4 v14, 0x1

    const/high16 v15, 0x3f800000    # 1.0f

    aput v15, v13, v14

    .line 574
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/larswerkman/colorpicker/ColorPicker;->mHSV:[F

    const/4 v14, 0x2

    const/high16 v15, 0x3f800000    # 1.0f

    aput v15, v13, v14

    .line 575
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/larswerkman/colorpicker/ColorPicker;->mHSV:[F

    invoke-static {v13}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    .line 578
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->red(I)I

    move-result v11

    .line 579
    .local v11, "red":I
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 580
    .local v3, "green":I
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 582
    .local v1, "blue":I
    move v9, v11

    .line 583
    .local v9, "newRed":I
    move v8, v3

    .line 584
    .local v8, "newGreen":I
    move v7, v1

    .line 586
    .local v7, "newBlue":I
    const/4 v6, 0x0

    .line 587
    .local v6, "maskRed":I
    const/4 v5, 0x0

    .line 588
    .local v5, "maskGreen":I
    const/4 v4, 0x0

    .line 591
    .local v4, "maskBlue":I
    if-gt v11, v3, :cond_1

    if-gt v11, v1, :cond_1

    .line 593
    const/4 v9, 0x0

    .line 594
    if-le v3, v1, :cond_0

    .line 596
    const/4 v12, 0x0

    .line 597
    .local v12, "shiftValue":I
    const/16 v4, 0xff

    .line 598
    const/16 v8, 0xff

    .line 635
    :goto_0
    const/16 v13, 0xff

    invoke-static {v13, v9, v8, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    .line 636
    .local v10, "normColor":I
    const/4 v13, 0x0

    invoke-static {v13, v6, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 638
    .local v2, "colorMask":I
    const/4 v13, 0x3

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput v10, v13, v14

    const/4 v14, 0x1

    aput v2, v13, v14

    const/4 v14, 0x2

    aput v12, v13, v14

    return-object v13

    .line 601
    .end local v2    # "colorMask":I
    .end local v10    # "normColor":I
    .end local v12    # "shiftValue":I
    :cond_0
    const/16 v12, 0x8

    .line 602
    .restart local v12    # "shiftValue":I
    const/16 v5, 0xff

    .line 603
    const/16 v7, 0xff

    goto :goto_0

    .line 605
    .end local v12    # "shiftValue":I
    :cond_1
    if-gt v3, v11, :cond_3

    if-gt v3, v1, :cond_3

    .line 607
    const/4 v8, 0x0

    .line 608
    if-le v11, v1, :cond_2

    .line 610
    const/4 v12, 0x0

    .line 611
    .restart local v12    # "shiftValue":I
    const/16 v4, 0xff

    .line 612
    const/16 v9, 0xff

    goto :goto_0

    .line 615
    .end local v12    # "shiftValue":I
    :cond_2
    const/16 v12, 0x10

    .line 616
    .restart local v12    # "shiftValue":I
    const/16 v6, 0xff

    .line 617
    const/16 v7, 0xff

    goto :goto_0

    .line 621
    .end local v12    # "shiftValue":I
    :cond_3
    const/4 v7, 0x0

    .line 622
    if-le v11, v3, :cond_4

    .line 624
    const/16 v12, 0x8

    .line 625
    .restart local v12    # "shiftValue":I
    const/16 v5, 0xff

    .line 626
    const/16 v9, 0xff

    goto :goto_0

    .line 629
    .end local v12    # "shiftValue":I
    :cond_4
    const/16 v12, 0x10

    .line 630
    .restart local v12    # "shiftValue":I
    const/16 v6, 0xff

    .line 631
    const/16 v8, 0xff

    goto :goto_0
.end method


# virtual methods
.method public addOpacityBar(Lcom/larswerkman/colorpicker/OpacityBar;)V
    .locals 2
    .param p1, "bar"    # Lcom/larswerkman/colorpicker/OpacityBar;

    .prologue
    .line 733
    iput-object p1, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/colorpicker/OpacityBar;

    .line 735
    iget-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/colorpicker/OpacityBar;

    invoke-virtual {v0, p0}, Lcom/larswerkman/colorpicker/OpacityBar;->setColorPicker(Lcom/larswerkman/colorpicker/ColorPicker;)V

    .line 736
    iget-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/colorpicker/OpacityBar;

    iget v1, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/colorpicker/OpacityBar;->setColor(I)V

    .line 737
    return-void
.end method

.method public addSVBar(Lcom/larswerkman/colorpicker/SVBar;)V
    .locals 2
    .param p1, "bar"    # Lcom/larswerkman/colorpicker/SVBar;

    .prologue
    .line 720
    iput-object p1, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/colorpicker/SVBar;

    .line 722
    iget-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/colorpicker/SVBar;

    invoke-virtual {v0, p0}, Lcom/larswerkman/colorpicker/SVBar;->setColorPicker(Lcom/larswerkman/colorpicker/ColorPicker;)V

    .line 723
    iget-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/colorpicker/SVBar;

    iget v1, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/colorpicker/SVBar;->setColor(I)V

    .line 724
    return-void
.end method

.method public changeOpacityBarColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 782
    iget-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/colorpicker/OpacityBar;

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/colorpicker/OpacityBar;

    invoke-virtual {v0, p1}, Lcom/larswerkman/colorpicker/OpacityBar;->setColor(I)V

    .line 785
    :cond_0
    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mCenterNewColor:I

    return v0
.end method

.method public getOldCenterColor()I
    .locals 1

    .prologue
    .line 771
    iget v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mCenterOldColor:I

    return v0
.end method

.method public getOnColorChangedListener()Lcom/larswerkman/colorpicker/ColorPicker$OnColorChangedListener;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->onColorChangedListener:Lcom/larswerkman/colorpicker/ColorPicker$OnColorChangedListener;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 314
    iget v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mTranslationOffset:F

    iget v1, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mTranslationOffset:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 317
    iget-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelRectangle:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 319
    iget v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mAngle:F

    invoke-direct {p0, v0}, Lcom/larswerkman/colorpicker/ColorPicker;->calculatePointerPosition(F)[F

    move-result-object v6

    .line 322
    .local v6, "pointerPosition":[F
    aget v0, v6, v8

    aget v1, v6, v4

    iget v2, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorPointerHaloRadius:I

    int-to-float v2, v2

    iget-object v5, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPointerHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 327
    aget v0, v6, v8

    aget v1, v6, v4

    iget v2, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorPointerRadius:I

    int-to-float v2, v2

    iget-object v5, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPointerColor:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 331
    iget v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorCenterHaloRadius:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mCenterHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v7, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 334
    iget-object v1, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mCenterRectangle:Landroid/graphics/RectF;

    const/high16 v2, 0x42b40000    # 90.0f

    iget-object v5, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mCenterOldPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 337
    iget-object v1, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mCenterRectangle:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    iget-object v5, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mCenterNewPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 338
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v10, -0x80000000

    .line 342
    iget v8, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPreferredColorWheelRadius:I

    iget v9, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorPointerHaloRadius:I

    add-int/2addr v8, v9

    mul-int/lit8 v3, v8, 0x2

    .line 344
    .local v3, "intrinsicSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 345
    .local v6, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 346
    .local v7, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 347
    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 352
    .local v2, "heightSize":I
    if-ne v6, v11, :cond_0

    .line 353
    move v5, v7

    .line 360
    .local v5, "width":I
    :goto_0
    if-ne v1, v11, :cond_2

    .line 361
    move v0, v2

    .line 368
    .local v0, "height":I
    :goto_1
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 369
    .local v4, "min":I
    invoke-virtual {p0, v4, v4}, Lcom/larswerkman/colorpicker/ColorPicker;->setMeasuredDimension(II)V

    .line 370
    int-to-float v8, v4

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    iput v8, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mTranslationOffset:F

    .line 373
    div-int/lit8 v8, v4, 0x2

    iget v9, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelThickness:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorPointerHaloRadius:I

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelRadius:I

    .line 375
    iget-object v8, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelRectangle:Landroid/graphics/RectF;

    iget v9, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelRadius:I

    neg-int v9, v9

    int-to-float v9, v9

    iget v10, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelRadius:I

    neg-int v10, v10

    int-to-float v10, v10

    iget v11, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelRadius:I

    int-to-float v11, v11

    iget v12, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelRadius:I

    int-to-float v12, v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 378
    iget v8, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPreferredColorCenterRadius:I

    int-to-float v8, v8

    iget v9, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelRadius:I

    int-to-float v9, v9

    iget v10, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPreferredColorWheelRadius:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorCenterRadius:I

    .line 379
    iget v8, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPreferredColorCenterHaloRadius:I

    int-to-float v8, v8

    iget v9, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelRadius:I

    int-to-float v9, v9

    iget v10, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPreferredColorWheelRadius:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorCenterHaloRadius:I

    .line 380
    iget-object v8, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mCenterRectangle:Landroid/graphics/RectF;

    iget v9, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorCenterRadius:I

    neg-int v9, v9

    int-to-float v9, v9

    iget v10, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorCenterRadius:I

    neg-int v10, v10

    int-to-float v10, v10

    iget v11, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorCenterRadius:I

    int-to-float v11, v11

    iget v12, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorCenterRadius:I

    int-to-float v12, v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 382
    return-void

    .line 354
    .end local v0    # "height":I
    .end local v4    # "min":I
    .end local v5    # "width":I
    :cond_0
    if-ne v6, v10, :cond_1

    .line 355
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .restart local v5    # "width":I
    goto :goto_0

    .line 357
    .end local v5    # "width":I
    :cond_1
    move v5, v3

    .restart local v5    # "width":I
    goto :goto_0

    .line 362
    :cond_2
    if-ne v1, v10, :cond_3

    .line 363
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_1

    .line 365
    .end local v0    # "height":I
    :cond_3
    move v0, v3

    .restart local v0    # "height":I
    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 801
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 803
    .local v0, "savedState":Landroid/os/Bundle;
    const-string v2, "parent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 804
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 806
    const-string v2, "angle"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mAngle:F

    .line 807
    const-string v2, "color"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/larswerkman/colorpicker/ColorPicker;->setOldCenterColor(I)V

    .line 808
    iget-object v2, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPointerColor:Landroid/graphics/Paint;

    iget v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mAngle:F

    invoke-direct {p0, v3}, Lcom/larswerkman/colorpicker/ColorPicker;->calculateColor(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 809
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 789
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 791
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 792
    .local v0, "state":Landroid/os/Bundle;
    const-string v2, "parent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 793
    const-string v2, "angle"

    iget v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mAngle:F

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 794
    const-string v2, "color"

    iget v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mCenterOldColor:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 796
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 644
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mTranslationOffset:F

    sub-float v1, v3, v4

    .line 645
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mTranslationOffset:F

    sub-float v2, v3, v4

    .line 647
    .local v2, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 693
    :cond_0
    :goto_0
    return v7

    .line 650
    :pswitch_0
    iget v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mAngle:F

    invoke-direct {p0, v3}, Lcom/larswerkman/colorpicker/ColorPicker;->calculatePointerPosition(F)[F

    move-result-object v0

    .line 651
    .local v0, "pointerPosition":[F
    aget v3, v0, v5

    iget v4, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorPointerHaloRadius:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_1

    aget v3, v0, v5

    iget v4, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorPointerHaloRadius:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    aget v3, v0, v7

    iget v4, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorPointerHaloRadius:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_1

    aget v3, v0, v7

    iget v4, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorPointerHaloRadius:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_1

    .line 655
    iput-boolean v7, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mUserIsMovingPointer:Z

    .line 656
    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/ColorPicker;->invalidate()V

    .line 659
    :cond_1
    iget v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorCenterRadius:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorCenterRadius:I

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorCenterRadius:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorCenterRadius:I

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_0

    .line 661
    iget-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mCenterHaloPaint:Landroid/graphics/Paint;

    const/16 v4, 0x50

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 662
    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/ColorPicker;->getOldCenterColor()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/larswerkman/colorpicker/ColorPicker;->setColor(I)V

    .line 663
    iget-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mCenterNewPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/ColorPicker;->getOldCenterColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 664
    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/ColorPicker;->invalidate()V

    goto :goto_0

    .line 668
    .end local v0    # "pointerPosition":[F
    :pswitch_1
    iget-boolean v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mUserIsMovingPointer:Z

    if-eqz v3, :cond_0

    .line 669
    float-to-double v3, v2

    float-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mAngle:F

    .line 670
    iget-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPointerColor:Landroid/graphics/Paint;

    iget v4, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mAngle:F

    invoke-direct {p0, v4}, Lcom/larswerkman/colorpicker/ColorPicker;->calculateColor(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 674
    iget-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/colorpicker/SVBar;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/colorpicker/OpacityBar;

    if-nez v3, :cond_2

    .line 675
    iget-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/colorpicker/SVBar;

    iget v4, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColor:I

    invoke-virtual {v3, v4}, Lcom/larswerkman/colorpicker/SVBar;->setColor(I)V

    .line 684
    :goto_1
    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/ColorPicker;->invalidate()V

    goto/16 :goto_0

    .line 676
    :cond_2
    iget-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/colorpicker/SVBar;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/colorpicker/OpacityBar;

    if-eqz v3, :cond_3

    .line 677
    iget-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/colorpicker/OpacityBar;

    iget v4, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColor:I

    invoke-virtual {v3, v4}, Lcom/larswerkman/colorpicker/OpacityBar;->setColor(I)V

    goto :goto_1

    .line 678
    :cond_3
    iget-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/colorpicker/SVBar;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/colorpicker/OpacityBar;

    if-eqz v3, :cond_4

    .line 679
    iget-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/colorpicker/OpacityBar;

    iget v4, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColor:I

    invoke-virtual {v3, v4}, Lcom/larswerkman/colorpicker/OpacityBar;->setColor(I)V

    .line 680
    iget-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/colorpicker/SVBar;

    iget v4, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColor:I

    invoke-virtual {v3, v4}, Lcom/larswerkman/colorpicker/SVBar;->setColor(I)V

    goto :goto_1

    .line 682
    :cond_4
    iget v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mAngle:F

    invoke-direct {p0, v3}, Lcom/larswerkman/colorpicker/ColorPicker;->calculateColor(F)I

    move-result v3

    iput v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mCenterNewColor:I

    invoke-virtual {p0, v3}, Lcom/larswerkman/colorpicker/ColorPicker;->setNewCenterColor(I)V

    goto :goto_1

    .line 688
    :pswitch_2
    iput-boolean v5, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mUserIsMovingPointer:Z

    .line 689
    iget-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mCenterHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 690
    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/ColorPicker;->invalidate()V

    goto/16 :goto_0

    .line 647
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 449
    invoke-direct {p0, p1}, Lcom/larswerkman/colorpicker/ColorPicker;->colorToAngle(I)F

    move-result v0

    iput v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mAngle:F

    .line 450
    iget-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPointerColor:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mAngle:F

    invoke-direct {p0, v1}, Lcom/larswerkman/colorpicker/ColorPicker;->calculateColor(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 453
    iget-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/colorpicker/OpacityBar;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/colorpicker/OpacityBar;

    iget v1, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/colorpicker/OpacityBar;->setColor(I)V

    .line 456
    iget-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/colorpicker/OpacityBar;

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/larswerkman/colorpicker/OpacityBar;->setOpacity(I)V

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/colorpicker/SVBar;

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mHSV:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 463
    iget-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/colorpicker/SVBar;

    iget v1, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/colorpicker/SVBar;->setColor(I)V

    .line 468
    iget-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mHSV:[F

    aget v0, v0, v2

    iget-object v1, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mHSV:[F

    aget v1, v1, v3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 469
    iget-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/colorpicker/SVBar;

    iget-object v1, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mHSV:[F

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/larswerkman/colorpicker/SVBar;->setSaturation(F)V

    .line 475
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/ColorPicker;->invalidate()V

    .line 476
    return-void

    .line 471
    :cond_2
    iget-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/colorpicker/SVBar;

    iget-object v1, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mHSV:[F

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/larswerkman/colorpicker/SVBar;->setValue(F)V

    goto :goto_0
.end method

.method public setNewCenterColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 746
    iput p1, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mCenterNewColor:I

    .line 747
    iget-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mCenterNewPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 748
    iget v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mCenterOldColor:I

    if-nez v0, :cond_0

    .line 749
    iput p1, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mCenterOldColor:I

    .line 750
    iget-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mCenterOldPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->onColorChangedListener:Lcom/larswerkman/colorpicker/ColorPicker$OnColorChangedListener;

    if-eqz v0, :cond_1

    .line 753
    iget-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->onColorChangedListener:Lcom/larswerkman/colorpicker/ColorPicker$OnColorChangedListener;

    invoke-interface {v0, p1}, Lcom/larswerkman/colorpicker/ColorPicker$OnColorChangedListener;->onColorChanged(I)V

    .line 755
    :cond_1
    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/ColorPicker;->invalidate()V

    .line 756
    return-void
.end method

.method public setOldCenterColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 765
    iput p1, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mCenterOldColor:I

    .line 766
    iget-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mCenterOldPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 767
    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/ColorPicker;->invalidate()V

    .line 768
    return-void
.end method

.method public setOnColorChangedListener(Lcom/larswerkman/colorpicker/ColorPicker$OnColorChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/larswerkman/colorpicker/ColorPicker$OnColorChangedListener;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/larswerkman/colorpicker/ColorPicker;->onColorChangedListener:Lcom/larswerkman/colorpicker/ColorPicker$OnColorChangedListener;

    .line 239
    return-void
.end method
