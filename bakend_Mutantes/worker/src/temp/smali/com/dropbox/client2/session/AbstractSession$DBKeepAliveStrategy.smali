.class Lcom/dropbox/client2/session/AbstractSession$DBKeepAliveStrategy;
.super Ljava/lang/Object;
.source "AbstractSession.java"

# interfaces
.implements Lorg/apache/http/conn/ConnectionKeepAliveStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/client2/session/AbstractSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DBKeepAliveStrategy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/client2/session/AbstractSession$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dropbox/client2/session/AbstractSession$1;

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/dropbox/client2/session/AbstractSession$DBKeepAliveStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J
    .locals 10
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 357
    const-wide/16 v3, 0x4e20

    .line 359
    .local v3, "timeout":J
    new-instance v1, Lorg/apache/http/message/BasicHeaderElementIterator;

    const-string v6, "Keep-Alive"

    invoke-interface {p1, v6}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/apache/http/message/BasicHeaderElementIterator;-><init>(Lorg/apache/http/HeaderIterator;)V

    .line 361
    .local v1, "i":Lorg/apache/http/HeaderElementIterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Lorg/apache/http/HeaderElementIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 362
    invoke-interface {v1}, Lorg/apache/http/HeaderElementIterator;->nextElement()Lorg/apache/http/HeaderElement;

    move-result-object v0

    .line 363
    .local v0, "element":Lorg/apache/http/HeaderElement;
    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, "name":Ljava/lang/String;
    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 365
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v6, "timeout"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 367
    :try_start_0
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    goto :goto_0

    .line 372
    .end local v0    # "element":Lorg/apache/http/HeaderElement;
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    return-wide v3

    .line 368
    .restart local v0    # "element":Lorg/apache/http/HeaderElement;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_0
.end method
