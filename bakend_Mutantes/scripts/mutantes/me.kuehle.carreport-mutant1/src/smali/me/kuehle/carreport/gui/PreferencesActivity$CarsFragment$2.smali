.class Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$2;
.super Ljava/lang/Object;
.source "PreferencesActivity.java"

# interfaces
.implements Lme/kuehle/carreport/util/IForEach;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->onDialogPositiveClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lme/kuehle/carreport/util/IForEach",
        "<",
        "Lme/kuehle/carreport/db/Car;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;


# direct methods
.method constructor <init>(Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;)V
    .locals 0

    .prologue
    .line 657
    iput-object p1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$2;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic action(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 657
    check-cast p1, Lme/kuehle/carreport/db/Car;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$2;->action(Lme/kuehle/carreport/db/Car;)V

    return-void
.end method

.method public action(Lme/kuehle/carreport/db/Car;)V
    .locals 0
    .param p1, "car"    # Lme/kuehle/carreport/db/Car;

    .prologue
    .line 659
    invoke-virtual {p1}, Lme/kuehle/carreport/db/Car;->delete()V

    .line 660
    return-void
.end method
