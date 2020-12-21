.class public final Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;
.super Ljava/lang/Object;
.source "DropboxAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/client2/DropboxAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DropboxFileInfo"
.end annotation


# instance fields
.field private charset:Ljava/lang/String;

.field private fileSize:J

.field private metadata:Lcom/dropbox/client2/DropboxAPI$Entry;

.field private mimeType:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/apache/http/HttpResponse;)V
    .locals 8
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput-object v3, p0, Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;->mimeType:Ljava/lang/String;

    .line 398
    iput-wide v6, p0, Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;->fileSize:J

    .line 399
    iput-object v3, p0, Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;->charset:Ljava/lang/String;

    .line 400
    iput-object v3, p0, Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;->metadata:Lcom/dropbox/client2/DropboxAPI$Entry;

    .line 405
    invoke-static {p1}, Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;->parseXDropboxMetadata(Lorg/apache/http/HttpResponse;)Lcom/dropbox/client2/DropboxAPI$Entry;

    move-result-object v3

    iput-object v3, p0, Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;->metadata:Lcom/dropbox/client2/DropboxAPI$Entry;

    .line 406
    iget-object v3, p0, Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;->metadata:Lcom/dropbox/client2/DropboxAPI$Entry;

    if-nez v3, :cond_0

    .line 407
    new-instance v3, Lcom/dropbox/client2/exception/DropboxParseException;

    const-string v4, "Error parsing metadata."

    invoke-direct {v3, v4}, Lcom/dropbox/client2/exception/DropboxParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 410
    :cond_0
    iget-object v3, p0, Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;->metadata:Lcom/dropbox/client2/DropboxAPI$Entry;

    invoke-static {p1, v3}, Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;->parseFileSize(Lorg/apache/http/HttpResponse;Lcom/dropbox/client2/DropboxAPI$Entry;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;->fileSize:J

    .line 411
    iget-wide v3, p0, Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;->fileSize:J

    cmp-long v3, v3, v6

    if-nez v3, :cond_1

    .line 412
    new-instance v3, Lcom/dropbox/client2/exception/DropboxParseException;

    const-string v4, "Error determining file size."

    invoke-direct {v3, v4}, Lcom/dropbox/client2/exception/DropboxParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 416
    :cond_1
    const-string v3, "Content-Type"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 417
    .local v0, "contentType":Lorg/apache/http/Header;
    if-eqz v0, :cond_3

    .line 418
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, "contentVal":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 420
    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 421
    .local v2, "splits":[Ljava/lang/String;
    array-length v3, v2

    if-lez v3, :cond_2

    .line 422
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;->mimeType:Ljava/lang/String;

    .line 424
    :cond_2
    array-length v3, v2

    if-le v3, v5, :cond_3

    .line 425
    aget-object v3, v2, v5

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 426
    array-length v3, v2

    if-le v3, v5, :cond_3

    .line 427
    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;->charset:Ljava/lang/String;

    .line 432
    .end local v1    # "contentVal":Ljava/lang/String;
    .end local v2    # "splits":[Ljava/lang/String;
    :cond_3
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/http/HttpResponse;Lcom/dropbox/client2/DropboxAPI$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/http/HttpResponse;
    .param p2, "x1"    # Lcom/dropbox/client2/DropboxAPI$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;-><init>(Lorg/apache/http/HttpResponse;)V

    return-void
.end method

.method private static parseFileSize(Lorg/apache/http/HttpResponse;Lcom/dropbox/client2/DropboxAPI$Entry;)J
    .locals 4
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .param p1, "metadata"    # Lcom/dropbox/client2/DropboxAPI$Entry;

    .prologue
    .line 478
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    .line 479
    .local v0, "contentLength":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 488
    .end local v0    # "contentLength":J
    :goto_0
    return-wide v0

    .line 484
    .restart local v0    # "contentLength":J
    :cond_0
    if-eqz p1, :cond_1

    .line 485
    iget-wide v0, p1, Lcom/dropbox/client2/DropboxAPI$Entry;->bytes:J

    goto :goto_0

    .line 488
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private static parseXDropboxMetadata(Lorg/apache/http/HttpResponse;)Lcom/dropbox/client2/DropboxAPI$Entry;
    .locals 6
    .param p0, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    const/4 v4, 0x0

    .line 443
    if-nez p0, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-object v4

    .line 447
    :cond_1
    const-string v5, "X-Dropbox-Metadata"

    invoke-interface {p0, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 449
    .local v3, "xDropboxMetadataHeader":Lorg/apache/http/Header;
    if-eqz v3, :cond_0

    .line 454
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "json":Ljava/lang/String;
    invoke-static {v0}, Lorg/json/simple/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 456
    .local v2, "metadata":Ljava/lang/Object;
    if-eqz v2, :cond_0

    move-object v1, v2

    .line 460
    check-cast v1, Ljava/util/Map;

    .line 461
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Lcom/dropbox/client2/DropboxAPI$Entry;

    invoke-direct {v4, v1}, Lcom/dropbox/client2/DropboxAPI$Entry;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public final getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentLength()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;->getFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getFileSize()J
    .locals 2

    .prologue
    .line 511
    iget-wide v0, p0, Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;->fileSize:J

    return-wide v0
.end method

.method public final getMetadata()Lcom/dropbox/client2/DropboxAPI$Entry;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;->metadata:Lcom/dropbox/client2/DropboxAPI$Entry;

    return-object v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;->mimeType:Ljava/lang/String;

    return-object v0
.end method
