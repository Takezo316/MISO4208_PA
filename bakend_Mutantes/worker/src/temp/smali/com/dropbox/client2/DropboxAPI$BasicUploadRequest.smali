.class public final Lcom/dropbox/client2/DropboxAPI$BasicUploadRequest;
.super Ljava/lang/Object;
.source "DropboxAPI.java"

# interfaces
.implements Lcom/dropbox/client2/DropboxAPI$UploadRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/client2/DropboxAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "BasicUploadRequest"
.end annotation


# instance fields
.field private final request:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final session:Lcom/dropbox/client2/session/Session;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/dropbox/client2/session/Session;)V
    .locals 0
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "session"    # Lcom/dropbox/client2/session/Session;

    .prologue
    .line 1044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1045
    iput-object p1, p0, Lcom/dropbox/client2/DropboxAPI$BasicUploadRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 1046
    iput-object p2, p0, Lcom/dropbox/client2/DropboxAPI$BasicUploadRequest;->session:Lcom/dropbox/client2/session/Session;

    .line 1047
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI$BasicUploadRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 1056
    return-void
.end method

.method public upload()Lcom/dropbox/client2/DropboxAPI$Entry;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 1081
    :try_start_0
    iget-object v4, p0, Lcom/dropbox/client2/DropboxAPI$BasicUploadRequest;->session:Lcom/dropbox/client2/session/Session;

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI$BasicUploadRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    const v6, 0x2bf20

    invoke-static {v4, v5, v6}, Lcom/dropbox/client2/RESTUtility;->execute(Lcom/dropbox/client2/session/Session;Lorg/apache/http/client/methods/HttpUriRequest;I)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lcom/dropbox/client2/exception/DropboxIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1091
    .local v1, "hresp":Lorg/apache/http/HttpResponse;
    invoke-static {v1}, Lcom/dropbox/client2/RESTUtility;->parseAsJSON(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "resp":Ljava/lang/Object;
    move-object v3, v2

    .line 1094
    check-cast v3, Ljava/util/Map;

    .line 1096
    .local v3, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Lcom/dropbox/client2/DropboxAPI$Entry;

    invoke-direct {v4, v3}, Lcom/dropbox/client2/DropboxAPI$Entry;-><init>(Ljava/util/Map;)V

    return-object v4

    .line 1083
    .end local v1    # "hresp":Lorg/apache/http/HttpResponse;
    .end local v2    # "resp":Ljava/lang/Object;
    .end local v3    # "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 1084
    .local v0, "e":Lcom/dropbox/client2/exception/DropboxIOException;
    iget-object v4, p0, Lcom/dropbox/client2/DropboxAPI$BasicUploadRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1085
    new-instance v4, Lcom/dropbox/client2/exception/DropboxPartialFileException;

    const-wide/16 v5, -0x1

    invoke-direct {v4, v5, v6}, Lcom/dropbox/client2/exception/DropboxPartialFileException;-><init>(J)V

    throw v4

    .line 1087
    :cond_0
    throw v0
.end method
