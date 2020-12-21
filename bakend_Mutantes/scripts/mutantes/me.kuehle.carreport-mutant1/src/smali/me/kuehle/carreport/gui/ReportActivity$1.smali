.class Lme/kuehle/carreport/gui/ReportActivity$1;
.super Ljava/lang/Object;
.source "ReportActivity.java"

# interfaces
.implements Lme/kuehle/carreport/util/backup/Dropbox$OnSynchronizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/gui/ReportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/kuehle/carreport/gui/ReportActivity;


# direct methods
.method constructor <init>(Lme/kuehle/carreport/gui/ReportActivity;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lme/kuehle/carreport/gui/ReportActivity$1;->this$0:Lme/kuehle/carreport/gui/ReportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synchronizationFinished(Z)V
    .locals 3
    .param p1, "result"    # Z

    .prologue
    .line 65
    iget-object v0, p0, Lme/kuehle/carreport/gui/ReportActivity$1;->this$0:Lme/kuehle/carreport/gui/ReportActivity;

    invoke-static {v0}, Lme/kuehle/carreport/gui/ReportActivity;->access$000(Lme/kuehle/carreport/gui/ReportActivity;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lme/kuehle/carreport/gui/ReportActivity$1;->this$0:Lme/kuehle/carreport/gui/ReportActivity;

    invoke-static {v0}, Lme/kuehle/carreport/gui/ReportActivity;->access$000(Lme/kuehle/carreport/gui/ReportActivity;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 69
    :cond_0
    if-eqz p1, :cond_1

    .line 70
    iget-object v0, p0, Lme/kuehle/carreport/gui/ReportActivity$1;->this$0:Lme/kuehle/carreport/gui/ReportActivity;

    invoke-static {v0}, Lme/kuehle/carreport/gui/ReportActivity;->access$100(Lme/kuehle/carreport/gui/ReportActivity;)V

    .line 76
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lme/kuehle/carreport/gui/ReportActivity$1;->this$0:Lme/kuehle/carreport/gui/ReportActivity;

    const v1, 0x7f09004c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public synchronizationStarted()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lme/kuehle/carreport/gui/ReportActivity$1;->this$0:Lme/kuehle/carreport/gui/ReportActivity;

    invoke-static {v0}, Lme/kuehle/carreport/gui/ReportActivity;->access$000(Lme/kuehle/carreport/gui/ReportActivity;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lme/kuehle/carreport/gui/ReportActivity$1;->this$0:Lme/kuehle/carreport/gui/ReportActivity;

    invoke-static {v0}, Lme/kuehle/carreport/gui/ReportActivity;->access$000(Lme/kuehle/carreport/gui/ReportActivity;)Landroid/view/MenuItem;

    move-result-object v0

    const/high16 v1, 0x7f030000

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 84
    :cond_0
    return-void
.end method
