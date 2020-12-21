.class Lcom/dropbox/client2/session/AbstractSession$DBConnectionReuseStrategy;
.super Lorg/apache/http/impl/DefaultConnectionReuseStrategy;
.source "AbstractSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/client2/session/AbstractSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DBConnectionReuseStrategy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/client2/session/AbstractSession$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dropbox/client2/session/AbstractSession$1;

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/dropbox/client2/session/AbstractSession$DBConnectionReuseStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 13
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 388
    if-nez p1, :cond_0

    .line 389
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "HTTP response may not be null."

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 392
    :cond_0
    if-nez p2, :cond_1

    .line 393
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "HTTP context may not be null."

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 400
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v10

    .line 401
    .local v10, "ver":Lorg/apache/http/ProtocolVersion;
    const-string v11, "Transfer-Encoding"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v7

    .line 402
    .local v7, "teh":Lorg/apache/http/Header;
    if-eqz v7, :cond_2

    .line 403
    const-string v11, "chunked"

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 404
    const/4 v11, 0x0

    .line 482
    :goto_0
    return v11

    .line 407
    :cond_2
    const-string v11, "Content-Length"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    .line 409
    .local v1, "clhs":[Lorg/apache/http/Header;
    if-eqz v1, :cond_3

    array-length v11, v1

    const/4 v12, 0x1

    if-eq v11, v12, :cond_4

    .line 410
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 412
    :cond_4
    const/4 v11, 0x0

    aget-object v0, v1, v11

    .line 414
    .local v0, "clh":Lorg/apache/http/Header;
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 415
    .local v2, "contentLen":I
    if-gez v2, :cond_5

    .line 416
    const/4 v11, 0x0

    goto :goto_0

    .line 418
    .end local v2    # "contentLen":I
    :catch_0
    move-exception v3

    .line 419
    .local v3, "ex":Ljava/lang/NumberFormatException;
    const/4 v11, 0x0

    goto :goto_0

    .line 426
    .end local v0    # "clh":Lorg/apache/http/Header;
    .end local v1    # "clhs":[Lorg/apache/http/Header;
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    :cond_5
    const-string v11, "Connection"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v4

    .line 427
    .local v4, "hit":Lorg/apache/http/HeaderIterator;
    invoke-interface {v4}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_6

    .line 428
    const-string v11, "Proxy-Connection"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v4

    .line 454
    :cond_6
    invoke-interface {v4}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 456
    :try_start_1
    invoke-virtual {p0, v4}, Lcom/dropbox/client2/session/AbstractSession$DBConnectionReuseStrategy;->createTokenIterator(Lorg/apache/http/HeaderIterator;)Lorg/apache/http/TokenIterator;

    move-result-object v8

    .line 457
    .local v8, "ti":Lorg/apache/http/TokenIterator;
    const/4 v5, 0x0

    .line 458
    .local v5, "keepalive":Z
    :cond_7
    :goto_1
    invoke-interface {v8}, Lorg/apache/http/TokenIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 459
    invoke-interface {v8}, Lorg/apache/http/TokenIterator;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 460
    .local v9, "token":Ljava/lang/String;
    const-string v11, "Close"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 461
    const/4 v11, 0x0

    goto :goto_0

    .line 462
    :cond_8
    const-string v11, "Keep-Alive"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    if-eqz v11, :cond_7

    .line 465
    const/4 v5, 0x1

    goto :goto_1

    .line 468
    .end local v9    # "token":Ljava/lang/String;
    :cond_9
    if-eqz v5, :cond_a

    .line 469
    const/4 v11, 0x1

    goto :goto_0

    .line 472
    .end local v5    # "keepalive":Z
    .end local v8    # "ti":Lorg/apache/http/TokenIterator;
    :catch_1
    move-exception v6

    .line 476
    .local v6, "px":Lorg/apache/http/ParseException;
    const/4 v11, 0x0

    goto :goto_0

    .line 482
    .end local v6    # "px":Lorg/apache/http/ParseException;
    :cond_a
    sget-object v11, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {v10, v11}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v11

    if-nez v11, :cond_b

    const/4 v11, 0x1

    goto :goto_0

    :cond_b
    const/4 v11, 0x0

    goto :goto_0
.end method
