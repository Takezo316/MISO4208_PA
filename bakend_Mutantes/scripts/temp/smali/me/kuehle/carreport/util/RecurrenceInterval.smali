.class public final enum Lme/kuehle/carreport/util/RecurrenceInterval;
.super Ljava/lang/Enum;
.source "RecurrenceInterval.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lme/kuehle/carreport/util/RecurrenceInterval;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lme/kuehle/carreport/util/RecurrenceInterval;

.field public static final enum DAY:Lme/kuehle/carreport/util/RecurrenceInterval;

.field public static final enum MONTH:Lme/kuehle/carreport/util/RecurrenceInterval;

.field public static final enum ONCE:Lme/kuehle/carreport/util/RecurrenceInterval;

.field public static final enum QUARTER:Lme/kuehle/carreport/util/RecurrenceInterval;

.field public static final enum YEAR:Lme/kuehle/carreport/util/RecurrenceInterval;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lme/kuehle/carreport/util/RecurrenceInterval;

    const-string v1, "ONCE"

    invoke-direct {v0, v1, v2, v2}, Lme/kuehle/carreport/util/RecurrenceInterval;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lme/kuehle/carreport/util/RecurrenceInterval;->ONCE:Lme/kuehle/carreport/util/RecurrenceInterval;

    new-instance v0, Lme/kuehle/carreport/util/RecurrenceInterval;

    const-string v1, "DAY"

    invoke-direct {v0, v1, v3, v3}, Lme/kuehle/carreport/util/RecurrenceInterval;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lme/kuehle/carreport/util/RecurrenceInterval;->DAY:Lme/kuehle/carreport/util/RecurrenceInterval;

    new-instance v0, Lme/kuehle/carreport/util/RecurrenceInterval;

    const-string v1, "MONTH"

    invoke-direct {v0, v1, v4, v4}, Lme/kuehle/carreport/util/RecurrenceInterval;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lme/kuehle/carreport/util/RecurrenceInterval;->MONTH:Lme/kuehle/carreport/util/RecurrenceInterval;

    new-instance v0, Lme/kuehle/carreport/util/RecurrenceInterval;

    const-string v1, "QUARTER"

    invoke-direct {v0, v1, v5, v5}, Lme/kuehle/carreport/util/RecurrenceInterval;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lme/kuehle/carreport/util/RecurrenceInterval;->QUARTER:Lme/kuehle/carreport/util/RecurrenceInterval;

    new-instance v0, Lme/kuehle/carreport/util/RecurrenceInterval;

    const-string v1, "YEAR"

    invoke-direct {v0, v1, v6, v6}, Lme/kuehle/carreport/util/RecurrenceInterval;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lme/kuehle/carreport/util/RecurrenceInterval;->YEAR:Lme/kuehle/carreport/util/RecurrenceInterval;

    .line 19
    const/4 v0, 0x5

    new-array v0, v0, [Lme/kuehle/carreport/util/RecurrenceInterval;

    sget-object v1, Lme/kuehle/carreport/util/RecurrenceInterval;->ONCE:Lme/kuehle/carreport/util/RecurrenceInterval;

    aput-object v1, v0, v2

    sget-object v1, Lme/kuehle/carreport/util/RecurrenceInterval;->DAY:Lme/kuehle/carreport/util/RecurrenceInterval;

    aput-object v1, v0, v3

    sget-object v1, Lme/kuehle/carreport/util/RecurrenceInterval;->MONTH:Lme/kuehle/carreport/util/RecurrenceInterval;

    aput-object v1, v0, v4

    sget-object v1, Lme/kuehle/carreport/util/RecurrenceInterval;->QUARTER:Lme/kuehle/carreport/util/RecurrenceInterval;

    aput-object v1, v0, v5

    sget-object v1, Lme/kuehle/carreport/util/RecurrenceInterval;->YEAR:Lme/kuehle/carreport/util/RecurrenceInterval;

    aput-object v1, v0, v6

    sput-object v0, Lme/kuehle/carreport/util/RecurrenceInterval;->$VALUES:[Lme/kuehle/carreport/util/RecurrenceInterval;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lme/kuehle/carreport/util/RecurrenceInterval;->value:I

    .line 26
    return-void
.end method

.method public static getByValue(I)Lme/kuehle/carreport/util/RecurrenceInterval;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 33
    packed-switch p0, :pswitch_data_0

    .line 43
    sget-object v0, Lme/kuehle/carreport/util/RecurrenceInterval;->ONCE:Lme/kuehle/carreport/util/RecurrenceInterval;

    :goto_0
    return-object v0

    .line 35
    :pswitch_0
    sget-object v0, Lme/kuehle/carreport/util/RecurrenceInterval;->DAY:Lme/kuehle/carreport/util/RecurrenceInterval;

    goto :goto_0

    .line 37
    :pswitch_1
    sget-object v0, Lme/kuehle/carreport/util/RecurrenceInterval;->MONTH:Lme/kuehle/carreport/util/RecurrenceInterval;

    goto :goto_0

    .line 39
    :pswitch_2
    sget-object v0, Lme/kuehle/carreport/util/RecurrenceInterval;->QUARTER:Lme/kuehle/carreport/util/RecurrenceInterval;

    goto :goto_0

    .line 41
    :pswitch_3
    sget-object v0, Lme/kuehle/carreport/util/RecurrenceInterval;->YEAR:Lme/kuehle/carreport/util/RecurrenceInterval;

    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lme/kuehle/carreport/util/RecurrenceInterval;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lme/kuehle/carreport/util/RecurrenceInterval;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lme/kuehle/carreport/util/RecurrenceInterval;

    return-object v0
.end method

.method public static values()[Lme/kuehle/carreport/util/RecurrenceInterval;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lme/kuehle/carreport/util/RecurrenceInterval;->$VALUES:[Lme/kuehle/carreport/util/RecurrenceInterval;

    invoke-virtual {v0}, [Lme/kuehle/carreport/util/RecurrenceInterval;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme/kuehle/carreport/util/RecurrenceInterval;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lme/kuehle/carreport/util/RecurrenceInterval;->value:I

    return v0
.end method
