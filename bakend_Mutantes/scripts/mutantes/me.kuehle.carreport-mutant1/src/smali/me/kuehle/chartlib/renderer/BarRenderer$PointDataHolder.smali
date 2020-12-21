.class Lme/kuehle/chartlib/renderer/BarRenderer$PointDataHolder;
.super Ljava/lang/Object;
.source "BarRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/chartlib/renderer/BarRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PointDataHolder"
.end annotation


# instance fields
.field public series:I

.field final synthetic this$0:Lme/kuehle/chartlib/renderer/BarRenderer;

.field public y:F


# direct methods
.method public constructor <init>(Lme/kuehle/chartlib/renderer/BarRenderer;FI)V
    .locals 0
    .param p2, "y"    # F
    .param p3, "series"    # I

    .prologue
    .line 46
    iput-object p1, p0, Lme/kuehle/chartlib/renderer/BarRenderer$PointDataHolder;->this$0:Lme/kuehle/chartlib/renderer/BarRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p2, p0, Lme/kuehle/chartlib/renderer/BarRenderer$PointDataHolder;->y:F

    .line 48
    iput p3, p0, Lme/kuehle/chartlib/renderer/BarRenderer$PointDataHolder;->series:I

    .line 49
    return-void
.end method
