.class Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$1;
.super Ljava/lang/Object;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;


# direct methods
.method constructor <init>(Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;)V
    .locals 0

    .prologue
    .line 617
    iput-object p1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$1;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 621
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$1;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;

    iget-object v1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$1;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;

    invoke-static {v1}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->access$800(Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;)[Lme/kuehle/carreport/db/Car;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-virtual {v1}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->access$1100(Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;I)V

    .line 622
    return-void
.end method
