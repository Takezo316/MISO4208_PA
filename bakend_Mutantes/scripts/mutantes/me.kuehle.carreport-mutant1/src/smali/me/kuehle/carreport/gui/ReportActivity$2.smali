.class Lme/kuehle/carreport/gui/ReportActivity$2;
.super Ljava/lang/Object;
.source "ReportActivity.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


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
    .line 87
    iput-object p1, p0, Lme/kuehle/carreport/gui/ReportActivity$2;->this$0:Lme/kuehle/carreport/gui/ReportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .locals 1
    .param p1, "itemPosition"    # I
    .param p2, "itemId"    # J

    .prologue
    .line 90
    iget-object v0, p0, Lme/kuehle/carreport/gui/ReportActivity$2;->this$0:Lme/kuehle/carreport/gui/ReportActivity;

    invoke-static {v0}, Lme/kuehle/carreport/gui/ReportActivity;->access$100(Lme/kuehle/carreport/gui/ReportActivity;)V

    .line 91
    const/4 v0, 0x1

    return v0
.end method
