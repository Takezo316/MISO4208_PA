.class public Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;
.super Ljava/lang/Object;
.source "AbstractReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/reports/AbstractReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CalculationOption"
.end annotation


# instance fields
.field private hint1:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lme/kuehle/carreport/reports/AbstractReport;


# direct methods
.method public constructor <init>(Lme/kuehle/carreport/reports/AbstractReport;II)V
    .locals 1
    .param p2, "name"    # I
    .param p3, "hint1"    # I

    .prologue
    .line 35
    iput-object p1, p0, Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;->this$0:Lme/kuehle/carreport/reports/AbstractReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iget-object v0, p1, Lme/kuehle/carreport/reports/AbstractReport;->context:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;->name:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lme/kuehle/carreport/reports/AbstractReport;->context:Landroid/content/Context;

    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;->hint1:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Lme/kuehle/carreport/reports/AbstractReport;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "hint1"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;->this$0:Lme/kuehle/carreport/reports/AbstractReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;->name:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;->hint1:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getHint1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;->hint1:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setHint1(Ljava/lang/String;)V
    .locals 0
    .param p1, "hint1"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;->hint1:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;->name:Ljava/lang/String;

    .line 59
    return-void
.end method
