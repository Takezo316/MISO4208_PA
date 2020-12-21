.class public final enum Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;
.super Ljava/lang/Enum;
.source "SimpleAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/util/gui/SimpleAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Property"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;

.field public static final enum Height:Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;

.field public static final enum Weight:Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;

    const-string v1, "Height"

    invoke-direct {v0, v1, v2}, Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;->Height:Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;

    new-instance v0, Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;

    const-string v1, "Weight"

    invoke-direct {v0, v1, v3}, Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;->Weight:Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;

    sget-object v1, Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;->Height:Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;

    aput-object v1, v0, v2

    sget-object v1, Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;->Weight:Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;

    aput-object v1, v0, v3

    sput-object v0, Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;->$VALUES:[Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;

    return-object v0
.end method

.method public static values()[Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;->$VALUES:[Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;

    invoke-virtual {v0}, [Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;

    return-object v0
.end method
