.class public final Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;
.super Ljava/lang/Object;
.source "DropboxAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/client2/DropboxAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ChunkedUploadRequest"
.end annotation


# instance fields
.field private final request:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final session:Lcom/dropbox/client2/session/Session;


# direct methods
.method protected constructor <init>(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/dropbox/client2/session/Session;)V
    .locals 0
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "session"    # Lcom/dropbox/client2/session/Session;

    .prologue
    .line 995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 996
    iput-object p1, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 997
    iput-object p2, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;->session:Lcom/dropbox/client2/session/Session;

    .line 998
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 1006
    return-void
.end method

.method public upload()Lcom/dropbox/client2/DropboxAPI$ChunkedUploadResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 1026
    :try_start_0
    iget-object v4, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;->session:Lcom/dropbox/client2/session/Session;

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    const v6, 0x2bf20

    invoke-static {v4, v5, v6}, Lcom/dropbox/client2/RESTUtility;->execute(Lcom/dropbox/client2/session/Session;Lorg/apache/http/client/methods/HttpUriRequest;I)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lcom/dropbox/client2/exception/DropboxIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1034
    .local v3, "hresp":Lorg/apache/http/HttpResponse;
    invoke-static {v3}, Lcom/dropbox/client2/RESTUtility;->parseAsJSON(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1036
    .local v2, "fields_":Ljava/util/Map;
    move-object v1, v2

    .line 1037
    .local v1, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Lcom/dropbox/client2/DropboxAPI$ChunkedUploadResponse;

    invoke-direct {v4, v1}, Lcom/dropbox/client2/DropboxAPI$ChunkedUploadResponse;-><init>(Ljava/util/Map;)V

    return-object v4

    .line 1027
    .end local v1    # "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "fields_":Ljava/util/Map;
    .end local v3    # "hresp":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 1028
    .local v0, "e":Lcom/dropbox/client2/exception/DropboxIOException;
    iget-object v4, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1029
    new-instance v4, Lcom/dropbox/client2/exception/DropboxPartialFileException;

    const-wide/16 v5, -0x1

    invoke-direct {v4, v5, v6}, Lcom/dropbox/client2/exception/DropboxPartialFileException;-><init>(J)V

    throw v4

    .line 1031
    :cond_0
    throw v0
.end method
