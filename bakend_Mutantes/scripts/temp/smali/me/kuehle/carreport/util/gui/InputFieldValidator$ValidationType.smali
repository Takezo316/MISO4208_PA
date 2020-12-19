.class public final enum Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;
.super Ljava/lang/Enum;
.source "InputFieldValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/util/gui/InputFieldValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValidationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;

.field public static final enum GreaterZero:Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;

.field public static final enum NotEmpty:Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    new-instance v0, Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;

    const-string v1, "NotEmpty"

    invoke-direct {v0, v1, v2}, Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;->NotEmpty:Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;

    new-instance v0, Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;

    const-string v1, "GreaterZero"

    invoke-direct {v0, v1, v3}, Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;->GreaterZero:Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;

    .line 73
    const/4 v0, 0x2

    new-array v0, v0, [Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;

    sget-object v1, Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;->NotEmpty:Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;

    aput-object v1, v0, v2

    sget-object v1, Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;->GreaterZero:Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;

    aput-object v1, v0, v3

    sput-object v0, Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;->$VALUES:[Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;

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
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 73
    const-class v0, Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;

    return-object v0
.end method

.method public static values()[Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;->$VALUES:[Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;

    invoke-virtual {v0}, [Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;

    return-object v0
.end method
