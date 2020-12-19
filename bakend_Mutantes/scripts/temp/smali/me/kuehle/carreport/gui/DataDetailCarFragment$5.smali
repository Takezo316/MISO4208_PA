.class Lme/kuehle/carreport/gui/DataDetailCarFragment$5;
.super Ljava/lang/Object;
.source "DataDetailCarFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kuehle/carreport/gui/DataDetailCarFragment;->initFields(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/kuehle/carreport/gui/DataDetailCarFragment;


# direct methods
.method constructor <init>(Lme/kuehle/carreport/gui/DataDetailCarFragment;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment$5;->this$0:Lme/kuehle/carreport/gui/DataDetailCarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 358
    if-eqz p2, :cond_0

    .line 359
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment$5;->this$0:Lme/kuehle/carreport/gui/DataDetailCarFragment;

    invoke-static {v0}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->access$600(Lme/kuehle/carreport/gui/DataDetailCarFragment;)Lme/kuehle/carreport/util/gui/SimpleAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lme/kuehle/carreport/util/gui/SimpleAnimator;->show()V

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment$5;->this$0:Lme/kuehle/carreport/gui/DataDetailCarFragment;

    invoke-static {v0}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->access$600(Lme/kuehle/carreport/gui/DataDetailCarFragment;)Lme/kuehle/carreport/util/gui/SimpleAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lme/kuehle/carreport/util/gui/SimpleAnimator;->hide()V

    goto :goto_0
.end method
