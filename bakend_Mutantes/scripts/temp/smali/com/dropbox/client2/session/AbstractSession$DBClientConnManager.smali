.class Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;
.super Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
.source "AbstractSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/client2/session/AbstractSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DBClientConnManager"
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 0
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;
    .param p2, "schreg"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    .prologue
    .line 488
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 489
    return-void
.end method


# virtual methods
.method public requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;
    .locals 2
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 494
    const/16 v0, 0x14

    const/4 v1, 0x5

    invoke-static {p0, v0, v1}, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;->ensureRunning(Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;II)V

    .line 495
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;

    move-result-object v0

    return-object v0
.end method
