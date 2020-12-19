.class public Lcom/dropbox/client2/RESTUtility;
.super Ljava/lang/Object;
.source "RESTUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/client2/RESTUtility$RequestMethod;
    }
.end annotation


# static fields
.field private static final dateFormat:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 83
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy kk:mm:ss ZZZZZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/dropbox/client2/RESTUtility;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildURL(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "apiVersion"    # I
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/String;

    .prologue
    .line 456
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 463
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 464
    const-string v1, "%2F"

    const-string v2, "/"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 466
    if-eqz p3, :cond_1

    array-length v1, p3

    if-lez v1, :cond_1

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/dropbox/client2/RESTUtility;->urlencode([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 471
    :cond_1
    const-string v1, "+"

    const-string v2, "%20"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "*"

    const-string v3, "%2A"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":443"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "uce":Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static execute(Lcom/dropbox/client2/session/Session;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p0, "session"    # Lcom/dropbox/client2/session/Session;
    .param p1, "req"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 337
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/dropbox/client2/RESTUtility;->execute(Lcom/dropbox/client2/session/Session;Lorg/apache/http/client/methods/HttpUriRequest;I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public static execute(Lcom/dropbox/client2/session/Session;Lorg/apache/http/client/methods/HttpUriRequest;I)Lorg/apache/http/HttpResponse;
    .locals 9
    .param p0, "session"    # Lcom/dropbox/client2/session/Session;
    .param p1, "req"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "socketTimeoutOverrideMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-static {p0}, Lcom/dropbox/client2/RESTUtility;->updatedHttpClient(Lcom/dropbox/client2/session/Session;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 366
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    invoke-interface {p0, p1}, Lcom/dropbox/client2/session/Session;->setRequestTimeout(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 367
    if-ltz p2, :cond_0

    .line 368
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    .line 369
    .local v3, "reqParams":Lorg/apache/http/params/HttpParams;
    invoke-static {v3, p2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 372
    .end local v3    # "reqParams":Lorg/apache/http/params/HttpParams;
    :cond_0
    invoke-static {p1}, Lcom/dropbox/client2/RESTUtility;->isRequestRepeatable(Lorg/apache/http/HttpRequest;)Z

    move-result v2

    .line 375
    .local v2, "repeatable":Z
    const/4 v4, 0x0

    .line 376
    .local v4, "response":Lorg/apache/http/HttpResponse;
    const/4 v5, 0x0

    .local v5, "retries":I
    :goto_0
    if-nez v4, :cond_2

    const/4 v7, 0x5

    if-ge v5, v7, :cond_2

    .line 385
    :try_start_0
    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 395
    :goto_1
    if-nez v4, :cond_1

    .line 396
    :try_start_1
    invoke-static {v0, p0}, Lcom/dropbox/client2/RESTUtility;->updateClientProxy(Lorg/apache/http/client/HttpClient;Lcom/dropbox/client2/session/Session;)V

    .line 399
    :cond_1
    if-nez v2, :cond_3

    .line 402
    :cond_2
    if-nez v4, :cond_4

    .line 404
    new-instance v7, Lcom/dropbox/client2/exception/DropboxIOException;

    const-string v8, "Apache HTTPClient encountered an error. No response, try again."

    invoke-direct {v7, v8}, Lcom/dropbox/client2/exception/DropboxIOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    .line 415
    :catch_0
    move-exception v1

    .line 416
    .local v1, "e":Ljavax/net/ssl/SSLException;
    new-instance v7, Lcom/dropbox/client2/exception/DropboxSSLException;

    invoke-direct {v7, v1}, Lcom/dropbox/client2/exception/DropboxSSLException;-><init>(Ljavax/net/ssl/SSLException;)V

    throw v7

    .line 376
    .end local v1    # "e":Ljavax/net/ssl/SSLException;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 407
    :cond_4
    :try_start_2
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 408
    .local v6, "statusCode":I
    const/16 v7, 0xc8

    if-eq v6, v7, :cond_5

    const/16 v7, 0xce

    if-eq v6, v7, :cond_5

    .line 411
    invoke-static {v4}, Lcom/dropbox/client2/RESTUtility;->parseAsJSON(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    .line 414
    :cond_5
    return-object v4

    .line 417
    .end local v6    # "statusCode":I
    :catch_1
    move-exception v1

    .line 420
    .local v1, "e":Ljava/io/IOException;
    new-instance v7, Lcom/dropbox/client2/exception/DropboxIOException;

    invoke-direct {v7, v1}, Lcom/dropbox/client2/exception/DropboxIOException;-><init>(Ljava/io/IOException;)V

    throw v7

    .line 421
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 422
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    new-instance v7, Lcom/dropbox/client2/exception/DropboxException;

    invoke-direct {v7, v1}, Lcom/dropbox/client2/exception/DropboxException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 386
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v7

    goto :goto_1
.end method

.method private static isRequestRepeatable(Lorg/apache/http/HttpRequest;)Z
    .locals 3
    .param p0, "req"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 429
    instance-of v2, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v2, :cond_0

    move-object v1, p0

    .line 430
    check-cast v1, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 431
    .local v1, "ereq":Lorg/apache/http/HttpEntityEnclosingRequest;
    invoke-interface {v1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 432
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 433
    const/4 v2, 0x0

    .line 436
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .end local v1    # "ereq":Lorg/apache/http/HttpEntityEnclosingRequest;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static parseAsJSON(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 10
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 219
    const/4 v6, 0x0

    .line 221
    .local v6, "result":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 223
    .local v0, "bin":Ljava/io/BufferedReader;
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 224
    .local v3, "ent":Lorg/apache/http/HttpEntity;
    if-eqz v3, :cond_0

    .line 225
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 231
    .local v4, "in":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v8, 0x4000

    invoke-direct {v1, v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/simple/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    .end local v0    # "bin":Ljava/io/BufferedReader;
    .local v1, "bin":Ljava/io/BufferedReader;
    const/16 v8, 0x4000

    :try_start_1
    invoke-virtual {v1, v8}, Ljava/io/BufferedReader;->mark(I)V

    .line 234
    new-instance v5, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v5}, Lorg/json/simple/parser/JSONParser;-><init>()V

    .line 235
    .local v5, "parser":Lorg/json/simple/parser/JSONParser;
    invoke-virtual {v5, v1}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/io/Reader;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/json/simple/parser/ParseException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    move-object v0, v1

    .line 250
    .end local v1    # "bin":Ljava/io/BufferedReader;
    .end local v4    # "in":Ljava/io/InputStreamReader;
    .end local v5    # "parser":Lorg/json/simple/parser/JSONParser;
    .end local v6    # "result":Ljava/lang/Object;
    .restart local v0    # "bin":Ljava/io/BufferedReader;
    :cond_0
    if-eqz v0, :cond_1

    .line 252
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 258
    :cond_1
    :goto_0
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 259
    .local v7, "statusCode":I
    const/16 v8, 0xc8

    if-eq v7, v8, :cond_5

    .line 260
    const/16 v8, 0x191

    if-ne v7, v8, :cond_4

    .line 261
    new-instance v8, Lcom/dropbox/client2/exception/DropboxUnlinkedException;

    invoke-direct {v8}, Lcom/dropbox/client2/exception/DropboxUnlinkedException;-><init>()V

    throw v8

    .line 237
    .end local v3    # "ent":Lorg/apache/http/HttpEntity;
    .end local v7    # "statusCode":I
    .restart local v6    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 238
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    new-instance v8, Lcom/dropbox/client2/exception/DropboxIOException;

    invoke-direct {v8, v2}, Lcom/dropbox/client2/exception/DropboxIOException;-><init>(Ljava/io/IOException;)V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 250
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v0, :cond_2

    .line 252
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 254
    :cond_2
    :goto_3
    throw v8

    .line 239
    :catch_1
    move-exception v2

    .line 240
    .local v2, "e":Lorg/json/simple/parser/ParseException;
    :goto_4
    :try_start_5
    invoke-static {p0}, Lcom/dropbox/client2/exception/DropboxServerException;->isValidWithNullBody(Lorg/apache/http/HttpResponse;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 242
    new-instance v8, Lcom/dropbox/client2/exception/DropboxServerException;

    invoke-direct {v8, p0}, Lcom/dropbox/client2/exception/DropboxServerException;-><init>(Lorg/apache/http/HttpResponse;)V

    throw v8

    .line 245
    :cond_3
    new-instance v8, Lcom/dropbox/client2/exception/DropboxParseException;

    invoke-direct {v8, v0}, Lcom/dropbox/client2/exception/DropboxParseException;-><init>(Ljava/io/BufferedReader;)V

    throw v8

    .line 247
    .end local v2    # "e":Lorg/json/simple/parser/ParseException;
    :catch_2
    move-exception v2

    .line 248
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    :goto_5
    new-instance v8, Lcom/dropbox/client2/exception/DropboxException;

    invoke-direct {v8, v2}, Lcom/dropbox/client2/exception/DropboxException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 263
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    .end local v6    # "result":Ljava/lang/Object;
    .restart local v3    # "ent":Lorg/apache/http/HttpEntity;
    .restart local v7    # "statusCode":I
    :cond_4
    new-instance v8, Lcom/dropbox/client2/exception/DropboxServerException;

    invoke-direct {v8, p0, v6}, Lcom/dropbox/client2/exception/DropboxServerException;-><init>(Lorg/apache/http/HttpResponse;Ljava/lang/Object;)V

    throw v8

    .line 253
    .end local v7    # "statusCode":I
    :catch_3
    move-exception v8

    goto :goto_0

    .end local v3    # "ent":Lorg/apache/http/HttpEntity;
    .restart local v6    # "result":Ljava/lang/Object;
    :catch_4
    move-exception v9

    goto :goto_3

    .line 267
    .end local v6    # "result":Ljava/lang/Object;
    .restart local v3    # "ent":Lorg/apache/http/HttpEntity;
    .restart local v7    # "statusCode":I
    :cond_5
    return-object v6

    .line 250
    .end local v0    # "bin":Ljava/io/BufferedReader;
    .end local v7    # "statusCode":I
    .restart local v1    # "bin":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/InputStreamReader;
    .restart local v6    # "result":Ljava/lang/Object;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedReader;
    .restart local v0    # "bin":Ljava/io/BufferedReader;
    goto :goto_2

    .line 247
    .end local v0    # "bin":Ljava/io/BufferedReader;
    .restart local v1    # "bin":Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedReader;
    .restart local v0    # "bin":Ljava/io/BufferedReader;
    goto :goto_5

    .line 239
    .end local v0    # "bin":Ljava/io/BufferedReader;
    .restart local v1    # "bin":Ljava/io/BufferedReader;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedReader;
    .restart local v0    # "bin":Ljava/io/BufferedReader;
    goto :goto_4

    .line 237
    .end local v0    # "bin":Ljava/io/BufferedReader;
    .restart local v1    # "bin":Ljava/io/BufferedReader;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedReader;
    .restart local v0    # "bin":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public static parseAsQueryString(Lorg/apache/http/HttpResponse;)Ljava/util/Map;
    .locals 8
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 289
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 291
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-nez v1, :cond_0

    .line 292
    new-instance v6, Lcom/dropbox/client2/exception/DropboxParseException;

    const-string v7, "Bad response from Dropbox."

    invoke-direct {v6, v7}, Lcom/dropbox/client2/exception/DropboxParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 297
    :cond_0
    :try_start_0
    new-instance v6, Ljava/util/Scanner;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 302
    .local v5, "scanner":Ljava/util/Scanner;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 304
    .local v4, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v5}, Ljava/util/Scanner;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 305
    invoke-virtual {v5}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, "nameValue":Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, "parts":[Ljava/lang/String;
    array-length v6, v3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    .line 308
    new-instance v6, Lcom/dropbox/client2/exception/DropboxParseException;

    const-string v7, "Bad query string from Dropbox."

    invoke-direct {v6, v7}, Lcom/dropbox/client2/exception/DropboxParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 298
    .end local v2    # "nameValue":Ljava/lang/String;
    .end local v3    # "parts":[Ljava/lang/String;
    .end local v4    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "scanner":Ljava/util/Scanner;
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Lcom/dropbox/client2/exception/DropboxIOException;

    invoke-direct {v6, v0}, Lcom/dropbox/client2/exception/DropboxIOException;-><init>(Ljava/io/IOException;)V

    throw v6

    .line 310
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "nameValue":Ljava/lang/String;
    .restart local v3    # "parts":[Ljava/lang/String;
    .restart local v4    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "scanner":Ljava/util/Scanner;
    :cond_1
    const/4 v6, 0x0

    aget-object v6, v3, v6

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 313
    .end local v2    # "nameValue":Ljava/lang/String;
    .end local v3    # "parts":[Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    .line 489
    :try_start_0
    sget-object v1, Lcom/dropbox/client2/RESTUtility;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 491
    :goto_0
    return-object v1

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, "e":Ljava/text/ParseException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static request(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Ljava/lang/Object;
    .locals 2
    .param p0, "method"    # Lcom/dropbox/client2/RESTUtility$RequestMethod;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "apiVersion"    # I
    .param p4, "params"    # [Ljava/lang/String;
    .param p5, "session"    # Lcom/dropbox/client2/session/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-static/range {p0 .. p5}, Lcom/dropbox/client2/RESTUtility;->streamRequest(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;

    move-result-object v1

    iget-object v0, v1, Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;->response:Lorg/apache/http/HttpResponse;

    .line 124
    .local v0, "resp":Lorg/apache/http/HttpResponse;
    invoke-static {v0}, Lcom/dropbox/client2/RESTUtility;->parseAsJSON(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static streamRequest(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;
    .locals 10
    .param p0, "method"    # Lcom/dropbox/client2/RESTUtility$RequestMethod;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "apiVersion"    # I
    .param p4, "params"    # [Ljava/lang/String;
    .param p5, "session"    # Lcom/dropbox/client2/session/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 159
    const/4 v4, 0x0

    .line 160
    .local v4, "req":Lorg/apache/http/client/methods/HttpUriRequest;
    const/4 v6, 0x0

    .line 162
    .local v6, "target":Ljava/lang/String;
    sget-object v7, Lcom/dropbox/client2/RESTUtility$RequestMethod;->GET:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    if-ne p0, v7, :cond_0

    .line 163
    invoke-static {p1, p3, p2, p4}, Lcom/dropbox/client2/RESTUtility;->buildURL(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 164
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    .end local v4    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {v4, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 191
    .restart local v4    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    :goto_0
    invoke-interface {p5, v4}, Lcom/dropbox/client2/session/Session;->sign(Lorg/apache/http/HttpRequest;)V

    .line 192
    invoke-static {p5, v4}, Lcom/dropbox/client2/RESTUtility;->execute(Lcom/dropbox/client2/session/Session;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 194
    .local v5, "resp":Lorg/apache/http/HttpResponse;
    new-instance v7, Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;

    invoke-direct {v7, v4, v5}, Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)V

    return-object v7

    .line 166
    .end local v5    # "resp":Lorg/apache/http/HttpResponse;
    :cond_0
    const/4 v7, 0x0

    invoke-static {p1, p3, p2, v7}, Lcom/dropbox/client2/RESTUtility;->buildURL(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 167
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 169
    .local v3, "post":Lorg/apache/http/client/methods/HttpPost;
    if-eqz p4, :cond_4

    array-length v7, p4

    const/4 v8, 0x2

    if-lt v7, v8, :cond_4

    .line 170
    array-length v7, p4

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_1

    .line 171
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Params must have an even number of elements."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 173
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v2, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, p4

    if-ge v1, v7, :cond_3

    .line 176
    add-int/lit8 v7, v1, 0x1

    aget-object v7, p4, v7

    if-eqz v7, :cond_2

    .line 177
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    aget-object v8, p4, v1

    add-int/lit8 v9, v1, 0x1

    aget-object v9, p4, v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 182
    :cond_3
    :try_start_0
    new-instance v7, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v8, "UTF-8"

    invoke-direct {v7, v2, v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v1    # "i":I
    .end local v2    # "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_4
    move-object v4, v3

    goto :goto_0

    .line 183
    .restart local v1    # "i":I
    .restart local v2    # "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v7, Lcom/dropbox/client2/exception/DropboxException;

    invoke-direct {v7, v0}, Lcom/dropbox/client2/exception/DropboxException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method private static updateClientProxy(Lorg/apache/http/client/HttpClient;Lcom/dropbox/client2/session/Session;)V
    .locals 4
    .param p0, "client"    # Lorg/apache/http/client/HttpClient;
    .param p1, "session"    # Lcom/dropbox/client2/session/Session;

    .prologue
    .line 508
    invoke-interface {p1}, Lcom/dropbox/client2/session/Session;->getProxyInfo()Lcom/dropbox/client2/session/Session$ProxyInfo;

    move-result-object v1

    .line 509
    .local v1, "proxyInfo":Lcom/dropbox/client2/session/Session$ProxyInfo;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/dropbox/client2/session/Session$ProxyInfo;->host:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/dropbox/client2/session/Session$ProxyInfo;->host:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 511
    iget v2, v1, Lcom/dropbox/client2/session/Session$ProxyInfo;->port:I

    if-gez v2, :cond_0

    .line 512
    new-instance v0, Lorg/apache/http/HttpHost;

    iget-object v2, v1, Lcom/dropbox/client2/session/Session$ProxyInfo;->host:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    .line 516
    .local v0, "proxy":Lorg/apache/http/HttpHost;
    :goto_0
    invoke-interface {p0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.route.default-proxy"

    invoke-interface {v2, v3, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 520
    .end local v0    # "proxy":Lorg/apache/http/HttpHost;
    :goto_1
    return-void

    .line 514
    :cond_0
    new-instance v0, Lorg/apache/http/HttpHost;

    iget-object v2, v1, Lcom/dropbox/client2/session/Session$ProxyInfo;->host:Ljava/lang/String;

    iget v3, v1, Lcom/dropbox/client2/session/Session$ProxyInfo;->port:I

    invoke-direct {v0, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .restart local v0    # "proxy":Lorg/apache/http/HttpHost;
    goto :goto_0

    .line 518
    .end local v0    # "proxy":Lorg/apache/http/HttpHost;
    :cond_1
    invoke-interface {p0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.route.default-proxy"

    invoke-interface {v2, v3}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method private static declared-synchronized updatedHttpClient(Lcom/dropbox/client2/session/Session;)Lorg/apache/http/client/HttpClient;
    .locals 3
    .param p0, "session"    # Lcom/dropbox/client2/session/Session;

    .prologue
    .line 499
    const-class v2, Lcom/dropbox/client2/RESTUtility;

    monitor-enter v2

    :try_start_0
    invoke-interface {p0}, Lcom/dropbox/client2/session/Session;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 500
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    invoke-static {v0, p0}, Lcom/dropbox/client2/RESTUtility;->updateClientProxy(Lorg/apache/http/client/HttpClient;Lcom/dropbox/client2/session/Session;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    monitor-exit v2

    return-object v0

    .line 499
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static urlencode([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "params"    # [Ljava/lang/String;

    .prologue
    .line 526
    array-length v4, p0

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 527
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Params must have an even number of elements."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 530
    :cond_0
    const-string v3, ""

    .line 532
    .local v3, "result":Ljava/lang/String;
    const/4 v1, 0x1

    .line 533
    .local v1, "firstTime":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    array-length v4, p0

    if-ge v2, v4, :cond_3

    .line 534
    add-int/lit8 v4, v2, 0x1

    aget-object v4, p0, v4

    if-eqz v4, :cond_1

    .line 535
    if-eqz v1, :cond_2

    .line 536
    const/4 v1, 0x0

    .line 540
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p0, v2

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    aget-object v5, p0, v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 533
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 538
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 544
    :cond_3
    const-string v4, "*"

    const-string v5, "%2A"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    .line 548
    :goto_2
    return-object v4

    .line 545
    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v4, 0x0

    goto :goto_2
.end method
