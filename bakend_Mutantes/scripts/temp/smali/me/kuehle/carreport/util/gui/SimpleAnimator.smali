.class public Lme/kuehle/carreport/util/gui/SimpleAnimator;
.super Ljava/lang/Object;
.source "SimpleAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private duration:I

.field private origHeight:I

.field private origWeight:F

.field private property:Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "property"    # Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;

    .prologue
    .line 45
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lme/kuehle/carreport/util/gui/SimpleAnimator;-><init>(Landroid/content/Context;Landroid/view/View;Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "property"    # Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;
    .param p4, "duration"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lme/kuehle/carreport/util/gui/SimpleAnimator;->context:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lme/kuehle/carreport/util/gui/SimpleAnimator;->view:Landroid/view/View;

    .line 52
    iput-object p3, p0, Lme/kuehle/carreport/util/gui/SimpleAnimator;->property:Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;

    .line 53
    iput p4, p0, Lme/kuehle/carreport/util/gui/SimpleAnimator;->duration:I

    .line 55
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v0, p0, Lme/kuehle/carreport/util/gui/SimpleAnimator;->origWeight:F

    .line 56
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lme/kuehle/carreport/util/gui/SimpleAnimator;->origHeight:I

    .line 57
    return-void
.end method

.method static synthetic access$000(Lme/kuehle/carreport/util/gui/SimpleAnimator;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/util/gui/SimpleAnimator;

    .prologue
    .line 31
    iget-object v0, p0, Lme/kuehle/carreport/util/gui/SimpleAnimator;->view:Landroid/view/View;

    return-object v0
.end method

.method private applyHeightUpdater(Landroid/animation/ValueAnimator;II)V
    .locals 5
    .param p1, "animator"    # Landroid/animation/ValueAnimator;
    .param p2, "from"    # I
    .param p3, "to"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 115
    new-array v1, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput p2, v2, v3

    aput p3, v2, v4

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 116
    new-instance v0, Lme/kuehle/carreport/util/gui/SimpleAnimator$1;

    invoke-direct {v0, p0}, Lme/kuehle/carreport/util/gui/SimpleAnimator$1;-><init>(Lme/kuehle/carreport/util/gui/SimpleAnimator;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 124
    return-void
.end method

.method private applyWeightUpdater(Landroid/animation/ValueAnimator;FF)V
    .locals 5
    .param p1, "animator"    # Landroid/animation/ValueAnimator;
    .param p2, "from"    # F
    .param p3, "to"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 127
    new-array v1, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput p2, v2, v3

    aput p3, v2, v4

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 129
    new-instance v0, Lme/kuehle/carreport/util/gui/SimpleAnimator$2;

    invoke-direct {v0, p0}, Lme/kuehle/carreport/util/gui/SimpleAnimator$2;-><init>(Lme/kuehle/carreport/util/gui/SimpleAnimator;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 137
    return-void
.end method

.method private attachRunnable(Landroid/animation/Animator;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;
    .param p2, "onStart"    # Ljava/lang/Runnable;
    .param p3, "onEnd"    # Ljava/lang/Runnable;

    .prologue
    .line 141
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 142
    :cond_0
    new-instance v0, Lme/kuehle/carreport/util/gui/SimpleAnimator$3;

    invoke-direct {v0, p0, p2, p3}, Lme/kuehle/carreport/util/gui/SimpleAnimator$3;-><init>(Lme/kuehle/carreport/util/gui/SimpleAnimator;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 166
    :cond_1
    return-void
.end method

.method private createAnimator(ILjava/lang/Runnable;Ljava/lang/Runnable;)Landroid/animation/Animator;
    .locals 3
    .param p1, "animatorId"    # I
    .param p2, "onStart"    # Ljava/lang/Runnable;
    .param p3, "onEnd"    # Ljava/lang/Runnable;

    .prologue
    .line 105
    iget-object v1, p0, Lme/kuehle/carreport/util/gui/SimpleAnimator;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 106
    .local v0, "animator":Landroid/animation/Animator;
    iget-object v1, p0, Lme/kuehle/carreport/util/gui/SimpleAnimator;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 107
    iget v1, p0, Lme/kuehle/carreport/util/gui/SimpleAnimator;->duration:I

    if-lez v1, :cond_0

    .line 108
    iget v1, p0, Lme/kuehle/carreport/util/gui/SimpleAnimator;->duration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 110
    :cond_0
    invoke-direct {p0, v0, p2, p3}, Lme/kuehle/carreport/util/gui/SimpleAnimator;->attachRunnable(Landroid/animation/Animator;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 111
    return-object v0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, v0, v0}, Lme/kuehle/carreport/util/gui/SimpleAnimator;->hide(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method public hide(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "onStart"    # Ljava/lang/Runnable;
    .param p2, "onEnd"    # Ljava/lang/Runnable;

    .prologue
    const/4 v6, 0x0

    .line 86
    const/high16 v4, 0x7f040000

    invoke-direct {p0, v4, p1, p2}, Lme/kuehle/carreport/util/gui/SimpleAnimator;->createAnimator(ILjava/lang/Runnable;Ljava/lang/Runnable;)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 89
    .local v0, "animator":Landroid/animation/AnimatorSet;
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator;

    .line 91
    .local v3, "valueAnimator":Landroid/animation/ValueAnimator;
    iget-object v4, p0, Lme/kuehle/carreport/util/gui/SimpleAnimator;->property:Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;

    sget-object v5, Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;->Height:Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;

    if-ne v4, v5, :cond_0

    .line 92
    iget-object v4, p0, Lme/kuehle/carreport/util/gui/SimpleAnimator;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 93
    .local v1, "curHeight":I
    invoke-direct {p0, v3, v1, v6}, Lme/kuehle/carreport/util/gui/SimpleAnimator;->applyHeightUpdater(Landroid/animation/ValueAnimator;II)V

    .line 100
    .end local v1    # "curHeight":I
    :goto_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 101
    return-void

    .line 95
    :cond_0
    iget-object v4, p0, Lme/kuehle/carreport/util/gui/SimpleAnimator;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 97
    .local v2, "curWeight":F
    const/4 v4, 0x0

    invoke-direct {p0, v3, v2, v4}, Lme/kuehle/carreport/util/gui/SimpleAnimator;->applyWeightUpdater(Landroid/animation/ValueAnimator;FF)V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, v0, v0}, Lme/kuehle/carreport/util/gui/SimpleAnimator;->show(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method

.method public show(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "onStart"    # Ljava/lang/Runnable;
    .param p2, "onEnd"    # Ljava/lang/Runnable;

    .prologue
    .line 64
    const v4, 0x7f040001

    invoke-direct {p0, v4, p1, p2}, Lme/kuehle/carreport/util/gui/SimpleAnimator;->createAnimator(ILjava/lang/Runnable;Ljava/lang/Runnable;)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 67
    .local v0, "animator":Landroid/animation/AnimatorSet;
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator;

    .line 69
    .local v3, "valueAnimator":Landroid/animation/ValueAnimator;
    iget-object v4, p0, Lme/kuehle/carreport/util/gui/SimpleAnimator;->property:Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;

    sget-object v5, Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;->Height:Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;

    if-ne v4, v5, :cond_0

    .line 70
    iget-object v4, p0, Lme/kuehle/carreport/util/gui/SimpleAnimator;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 71
    .local v1, "curHeight":I
    iget v4, p0, Lme/kuehle/carreport/util/gui/SimpleAnimator;->origHeight:I

    invoke-direct {p0, v3, v1, v4}, Lme/kuehle/carreport/util/gui/SimpleAnimator;->applyHeightUpdater(Landroid/animation/ValueAnimator;II)V

    .line 78
    .end local v1    # "curHeight":I
    :goto_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 79
    return-void

    .line 73
    :cond_0
    iget-object v4, p0, Lme/kuehle/carreport/util/gui/SimpleAnimator;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 75
    .local v2, "curWeight":F
    iget v4, p0, Lme/kuehle/carreport/util/gui/SimpleAnimator;->origWeight:F

    invoke-direct {p0, v3, v2, v4}, Lme/kuehle/carreport/util/gui/SimpleAnimator;->applyWeightUpdater(Landroid/animation/ValueAnimator;FF)V

    goto :goto_0
.end method
