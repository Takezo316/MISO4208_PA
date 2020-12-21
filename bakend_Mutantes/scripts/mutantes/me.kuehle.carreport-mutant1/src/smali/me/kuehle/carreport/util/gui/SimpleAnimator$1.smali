.class Lme/kuehle/carreport/util/gui/SimpleAnimator$1;
.super Ljava/lang/Object;
.source "SimpleAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kuehle/carreport/util/gui/SimpleAnimator;->applyHeightUpdater(Landroid/animation/ValueAnimator;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/kuehle/carreport/util/gui/SimpleAnimator;


# direct methods
.method constructor <init>(Lme/kuehle/carreport/util/gui/SimpleAnimator;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lme/kuehle/carreport/util/gui/SimpleAnimator$1;->this$0:Lme/kuehle/carreport/util/gui/SimpleAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 120
    .local v0, "height":I
    iget-object v1, p0, Lme/kuehle/carreport/util/gui/SimpleAnimator$1;->this$0:Lme/kuehle/carreport/util/gui/SimpleAnimator;

    invoke-static {v1}, Lme/kuehle/carreport/util/gui/SimpleAnimator;->access$000(Lme/kuehle/carreport/util/gui/SimpleAnimator;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 121
    iget-object v1, p0, Lme/kuehle/carreport/util/gui/SimpleAnimator$1;->this$0:Lme/kuehle/carreport/util/gui/SimpleAnimator;

    invoke-static {v1}, Lme/kuehle/carreport/util/gui/SimpleAnimator;->access$000(Lme/kuehle/carreport/util/gui/SimpleAnimator;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 122
    return-void
.end method
