.class Lme/kuehle/carreport/gui/ReportActivity$3$1;
.super Ljava/lang/Object;
.source "ReportActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 133
    iput-object p1, p0, Lme/kuehle/carreport/gui/ReportActivity$3$1;->this$1:Lme/kuehle/carreport/gui/ReportActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 136
    iget-object v0, p0, Lme/kuehle/carreport/gui/ReportActivity$3$1;->this$1:Lme/kuehle/carreport/gui/ReportActivity$3;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lme/kuehle/carreport/gui/ReportActivity$3;->access$300(Lme/kuehle/carreport/gui/ReportActivity$3;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 142
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 147
    return-void
.end method
