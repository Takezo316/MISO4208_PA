.class public Lme/kuehle/chartlib/util/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field private context:Landroid/content/Context;

.field private size:I

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "size"    # I
    .param p3, "type"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lme/kuehle/chartlib/util/Size;->context:Landroid/content/Context;

    .line 47
    iput p2, p0, Lme/kuehle/chartlib/util/Size;->size:I

    .line 48
    iput p3, p0, Lme/kuehle/chartlib/util/Size;->type:I

    .line 49
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lme/kuehle/chartlib/util/Size;->size:I

    return v0
.end method

.method public getSizeInPixel()I
    .locals 3

    .prologue
    .line 85
    iget v0, p0, Lme/kuehle/chartlib/util/Size;->type:I

    iget v1, p0, Lme/kuehle/chartlib/util/Size;->size:I

    int-to-float v1, v1

    iget-object v2, p0, Lme/kuehle/chartlib/util/Size;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lme/kuehle/chartlib/util/Size;->type:I

    return v0
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 56
    iput p1, p0, Lme/kuehle/chartlib/util/Size;->size:I

    .line 57
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 76
    iput p1, p0, Lme/kuehle/chartlib/util/Size;->type:I

    .line 77
    return-void
.end method
