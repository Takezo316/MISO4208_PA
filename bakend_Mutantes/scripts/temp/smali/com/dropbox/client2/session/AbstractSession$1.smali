.class Lcom/dropbox/client2/session/AbstractSession$1;
.super Ljava/lang/Object;
.source "AbstractSession.java"

# interfaces
.implements Lorg/apache/http/conn/params/ConnPerRoute;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/client2/session/AbstractSession;->getHttpClient()Lorg/apache/http/client/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/client2/session/AbstractSession;


# direct methods
.method constructor <init>(Lcom/dropbox/client2/session/AbstractSession;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/dropbox/client2/session/AbstractSession$1;->this$0:Lcom/dropbox/client2/session/AbstractSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxForRoute(Lorg/apache/http/conn/routing/HttpRoute;)I
    .locals 1
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;

    .prologue
    .line 252
    const/16 v0, 0xa

    return v0
.end method
