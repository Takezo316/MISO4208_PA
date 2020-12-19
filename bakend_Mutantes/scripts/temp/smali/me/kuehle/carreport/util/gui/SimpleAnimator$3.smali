.class Lme/kuehle/carreport/util/gui/SimpleAnimator$3;
.super Ljava/lang/Object;
.source "SimpleAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kuehle/carreport/util/gui/SimpleAnimator;->attachRunnable(Landroid/animation/Animator;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/kuehle/carreport/util/gui/SimpleAnimator;

.field final synthetic val$onEnd:Ljava/lang/Runnable;

.field final synthetic val$onStart:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lme/kuehle/carreport/util/gui/SimpleAnimator;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lme/kuehle/carreport/util/gui/SimpleAnimator$3;->this$0:Lme/kuehle/carreport/util/gui/SimpleAnimator;

    iput-object p2, p0, Lme/kuehle/carreport/util/gui/SimpleAnimator$3;->val$onStart:Ljava/lang/Runnable;

    iput-object p3, p0, Lme/kuehle/carreport/util/gui/SimpleAnimator$3;->val$onEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 163
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 156
    iget-object v0, p0, Lme/kuehle/carreport/util/gui/SimpleAnimator$3;->val$onEnd:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lme/kuehle/carreport/util/gui/SimpleAnimator$3;->val$onEnd:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 159
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 152
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 145
    iget-object v0, p0, Lme/kuehle/carreport/util/gui/SimpleAnimator$3;->val$onStart:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lme/kuehle/carreport/util/gui/SimpleAnimator$3;->val$onStart:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 148
    :cond_0
    return-void
.end method
