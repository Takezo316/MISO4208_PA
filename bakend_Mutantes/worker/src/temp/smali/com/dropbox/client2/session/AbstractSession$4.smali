.class Lcom/dropbox/client2/session/AbstractSession$4;
.super Ljava/lang/Object;
.source "AbstractSession.java"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


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
    .line 298
    iput-object p1, p0, Lcom/dropbox/client2/session/AbstractSession$4;->this$0:Lcom/dropbox/client2/session/AbstractSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 9
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 304
    .local v4, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v4, :cond_0

    .line 305
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    .line 306
    .local v1, "ceheader":Lorg/apache/http/Header;
    if-eqz v1, :cond_0

    .line 307
    invoke-interface {v1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v3

    .line 308
    .local v3, "codecs":[Lorg/apache/http/HeaderElement;
    move-object v0, v3

    .local v0, "arr$":[Lorg/apache/http/HeaderElement;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v2, v0, v5

    .line 309
    .local v2, "codec":Lorg/apache/http/HeaderElement;
    invoke-interface {v2}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "gzip"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 310
    new-instance v7, Lcom/dropbox/client2/session/AbstractSession$GzipDecompressingEntity;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/dropbox/client2/session/AbstractSession$GzipDecompressingEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {p1, v7}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 317
    .end local v0    # "arr$":[Lorg/apache/http/HeaderElement;
    .end local v1    # "ceheader":Lorg/apache/http/Header;
    .end local v2    # "codec":Lorg/apache/http/HeaderElement;
    .end local v3    # "codecs":[Lorg/apache/http/HeaderElement;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_0
    return-void

    .line 308
    .restart local v0    # "arr$":[Lorg/apache/http/HeaderElement;
    .restart local v1    # "ceheader":Lorg/apache/http/Header;
    .restart local v2    # "codec":Lorg/apache/http/HeaderElement;
    .restart local v3    # "codecs":[Lorg/apache/http/HeaderElement;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method
