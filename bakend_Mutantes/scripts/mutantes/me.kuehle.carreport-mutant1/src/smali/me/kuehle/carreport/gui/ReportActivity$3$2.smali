.class Lme/kuehle/carreport/gui/ReportActivity$3$2;
.super Ljava/lang/Object;
.source "ReportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kuehle/carreport/gui/ReportActivity$3;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lme/kuehle/carreport/gui/ReportActivity$3;


# direct methods
.method constructor <init>(Lme/kuehle/carreport/gui/ReportActivity$3;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lme/kuehle/carreport/gui/ReportActivity$3$2;->this$1:Lme/kuehle/carreport/gui/ReportActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 155
    iget-object v1, p0, Lme/kuehle/carreport/gui/ReportActivity$3$2;->this$1:Lme/kuehle/carreport/gui/ReportActivity$3;

    iget-object v1, v1, Lme/kuehle/carreport/gui/ReportActivity$3;->this$0:Lme/kuehle/carreport/gui/ReportActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lme/kuehle/carreport/gui/ReportActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 156
    .local v0, "keyboard":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lme/kuehle/carreport/gui/ReportActivity$3$2;->this$1:Lme/kuehle/carreport/gui/ReportActivity$3;

    invoke-static {v1}, Lme/kuehle/carreport/gui/ReportActivity$3;->access$400(Lme/kuehle/carreport/gui/ReportActivity$3;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 157
    return-void
.end method
