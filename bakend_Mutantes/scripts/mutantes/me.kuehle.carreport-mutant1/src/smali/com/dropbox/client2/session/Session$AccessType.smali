.class public final enum Lcom/dropbox/client2/session/Session$AccessType;
.super Ljava/lang/Enum;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/client2/session/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccessType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/client2/session/Session$AccessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/client2/session/Session$AccessType;

.field public static final enum APP_FOLDER:Lcom/dropbox/client2/session/Session$AccessType;

.field public static final enum DROPBOX:Lcom/dropbox/client2/session/Session$AccessType;


# instance fields
.field private final urlPart:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 121
    new-instance v0, Lcom/dropbox/client2/session/Session$AccessType;

    const-string v1, "DROPBOX"

    const-string v2, "dropbox"

    invoke-direct {v0, v1, v3, v2}, Lcom/dropbox/client2/session/Session$AccessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/client2/session/Session$AccessType;->DROPBOX:Lcom/dropbox/client2/session/Session$AccessType;

    new-instance v0, Lcom/dropbox/client2/session/Session$AccessType;

    const-string v1, "APP_FOLDER"

    const-string v2, "sandbox"

    invoke-direct {v0, v1, v4, v2}, Lcom/dropbox/client2/session/Session$AccessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/client2/session/Session$AccessType;->APP_FOLDER:Lcom/dropbox/client2/session/Session$AccessType;

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dropbox/client2/session/Session$AccessType;

    sget-object v1, Lcom/dropbox/client2/session/Session$AccessType;->DROPBOX:Lcom/dropbox/client2/session/Session$AccessType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/client2/session/Session$AccessType;->APP_FOLDER:Lcom/dropbox/client2/session/Session$AccessType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/client2/session/Session$AccessType;->$VALUES:[Lcom/dropbox/client2/session/Session$AccessType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "urlPart"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 126
    iput-object p3, p0, Lcom/dropbox/client2/session/Session$AccessType;->urlPart:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/client2/session/Session$AccessType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 120
    const-class v0, Lcom/dropbox/client2/session/Session$AccessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/client2/session/Session$AccessType;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/client2/session/Session$AccessType;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/dropbox/client2/session/Session$AccessType;->$VALUES:[Lcom/dropbox/client2/session/Session$AccessType;

    invoke-virtual {v0}, [Lcom/dropbox/client2/session/Session$AccessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/client2/session/Session$AccessType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/dropbox/client2/session/Session$AccessType;->urlPart:Ljava/lang/String;

    return-object v0
.end method
