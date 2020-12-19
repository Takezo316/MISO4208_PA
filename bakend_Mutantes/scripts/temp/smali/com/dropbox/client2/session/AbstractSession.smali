.class public abstract Lcom/dropbox/client2/session/AbstractSession;
.super Ljava/lang/Object;
.source "AbstractSession.java"

# interfaces
.implements Lcom/dropbox/client2/session/Session;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/client2/session/AbstractSession$GzipDecompressingEntity;,
        Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;,
        Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;,
        Lcom/dropbox/client2/session/AbstractSession$DBConnectionReuseStrategy;,
        Lcom/dropbox/client2/session/AbstractSession$DBKeepAliveStrategy;
    }
.end annotation


# static fields
.field private static final API_SERVER:Ljava/lang/String; = "api.dropbox.com"

.field private static final CONTENT_SERVER:Ljava/lang/String; = "api-content.dropbox.com"

.field private static final DEFAULT_TIMEOUT_MILLIS:I = 0x7530

.field private static final KEEP_ALIVE_DURATION_SECS:I = 0x14

.field private static final KEEP_ALIVE_MONITOR_INTERVAL_SECS:I = 0x5

.field private static final WEB_SERVER:Ljava/lang/String; = "www.dropbox.com"


# instance fields
.field private accessTokenPair:Lcom/dropbox/client2/session/AccessTokenPair;

.field private final accessType:Lcom/dropbox/client2/session/Session$AccessType;

.field private final appKeyPair:Lcom/dropbox/client2/session/AppKeyPair;

.field private client:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/Session$AccessType;)V
    .locals 1
    .param p1, "appKeyPair"    # Lcom/dropbox/client2/session/AppKeyPair;
    .param p2, "type"    # Lcom/dropbox/client2/session/Session$AccessType;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/client2/session/AbstractSession;-><init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/Session$AccessType;Lcom/dropbox/client2/session/AccessTokenPair;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/Session$AccessType;Lcom/dropbox/client2/session/AccessTokenPair;)V
    .locals 2
    .param p1, "appKeyPair"    # Lcom/dropbox/client2/session/AppKeyPair;
    .param p2, "type"    # Lcom/dropbox/client2/session/Session$AccessType;
    .param p3, "accessTokenPair"    # Lcom/dropbox/client2/session/AccessTokenPair;

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->accessTokenPair:Lcom/dropbox/client2/session/AccessTokenPair;

    .line 98
    iput-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->client:Lorg/apache/http/client/HttpClient;

    .line 115
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'appKeyPair\' must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'type\' must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    iput-object p1, p0, Lcom/dropbox/client2/session/AbstractSession;->appKeyPair:Lcom/dropbox/client2/session/AppKeyPair;

    .line 119
    iput-object p2, p0, Lcom/dropbox/client2/session/AbstractSession;->accessType:Lcom/dropbox/client2/session/Session$AccessType;

    .line 120
    iput-object p3, p0, Lcom/dropbox/client2/session/AbstractSession;->accessTokenPair:Lcom/dropbox/client2/session/AccessTokenPair;

    .line 121
    return-void
.end method

.method private static buildOAuthHeader(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/AccessTokenPair;)Ljava/lang/String;
    .locals 4
    .param p0, "appKeyPair"    # Lcom/dropbox/client2/session/AppKeyPair;
    .param p1, "signingTokenPair"    # Lcom/dropbox/client2/session/AccessTokenPair;

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v2, "OAuth oauth_version=\"1.0\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v2, ", oauth_signature_method=\"PLAINTEXT\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v2, ", oauth_consumer_key=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/client2/session/AppKeyPair;->key:Ljava/lang/String;

    invoke-static {v3}, Lcom/dropbox/client2/session/AbstractSession;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    if-eqz p1, :cond_0

    .line 202
    const-string v2, ", oauth_token=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/dropbox/client2/session/AccessTokenPair;->key:Ljava/lang/String;

    invoke-static {v3}, Lcom/dropbox/client2/session/AbstractSession;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dropbox/client2/session/AppKeyPair;->secret:Ljava/lang/String;

    invoke-static {v3}, Lcom/dropbox/client2/session/AbstractSession;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/dropbox/client2/session/AccessTokenPair;->secret:Ljava/lang/String;

    invoke-static {v3}, Lcom/dropbox/client2/session/AbstractSession;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "sig":Ljava/lang/String;
    :goto_0
    const-string v2, ", oauth_signature=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 207
    .end local v1    # "sig":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dropbox/client2/session/AppKeyPair;->secret:Ljava/lang/String;

    invoke-static {v3}, Lcom/dropbox/client2/session/AbstractSession;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "sig":Ljava/lang/String;
    goto :goto_0
.end method

.method private static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 217
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {p0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 218
    :catch_0
    move-exception v1

    .line 219
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v0, Ljava/lang/AssertionError;

    const-string v2, "UTF-8 isn\'t available"

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 220
    .local v0, "ae":Ljava/lang/AssertionError;
    invoke-virtual {v0, v1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 221
    throw v0
.end method


# virtual methods
.method public getAPIServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    const-string v0, "api.dropbox.com"

    return-object v0
.end method

.method public getAccessTokenPair()Lcom/dropbox/client2/session/AccessTokenPair;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->accessTokenPair:Lcom/dropbox/client2/session/AccessTokenPair;

    return-object v0
.end method

.method public getAccessType()Lcom/dropbox/client2/session/Session$AccessType;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->accessType:Lcom/dropbox/client2/session/Session$AccessType;

    return-object v0
.end method

.method public getAppKeyPair()Lcom/dropbox/client2/session/AppKeyPair;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->appKeyPair:Lcom/dropbox/client2/session/AppKeyPair;

    return-object v0
.end method

.method public getContentServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    const-string v0, "api-content.dropbox.com"

    return-object v0
.end method

.method public declared-synchronized getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 9

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/dropbox/client2/session/AbstractSession;->client:Lorg/apache/http/client/HttpClient;

    if-nez v5, :cond_0

    .line 248
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 249
    .local v2, "connParams":Lorg/apache/http/params/HttpParams;
    new-instance v5, Lcom/dropbox/client2/session/AbstractSession$1;

    invoke-direct {v5, p0}, Lcom/dropbox/client2/session/AbstractSession$1;-><init>(Lcom/dropbox/client2/session/AbstractSession;)V

    invoke-static {v2, v5}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 255
    const/16 v5, 0x14

    invoke-static {v2, v5}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 258
    new-instance v4, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 259
    .local v4, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v7

    const/16 v8, 0x50

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v4, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 261
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v7

    const/16 v8, 0x1bb

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v4, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 264
    new-instance v1, Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;

    invoke-direct {v1, v2, v4}, Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 268
    .local v1, "cm":Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 269
    .local v3, "httpParams":Lorg/apache/http/params/HttpParams;
    const/16 v5, 0x7530

    invoke-static {v3, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 270
    const/16 v5, 0x7530

    invoke-static {v3, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 271
    const/16 v5, 0x2000

    invoke-static {v3, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 272
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OfficialDropboxJavaSDK/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/dropbox/client2/DropboxAPI;->SDK_VERSION:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 275
    new-instance v0, Lcom/dropbox/client2/session/AbstractSession$2;

    invoke-direct {v0, p0, v1, v3}, Lcom/dropbox/client2/session/AbstractSession$2;-><init>(Lcom/dropbox/client2/session/AbstractSession;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 287
    .local v0, "c":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v5, Lcom/dropbox/client2/session/AbstractSession$3;

    invoke-direct {v5, p0}, Lcom/dropbox/client2/session/AbstractSession$3;-><init>(Lcom/dropbox/client2/session/AbstractSession;)V

    invoke-virtual {v0, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 298
    new-instance v5, Lcom/dropbox/client2/session/AbstractSession$4;

    invoke-direct {v5, p0}, Lcom/dropbox/client2/session/AbstractSession$4;-><init>(Lcom/dropbox/client2/session/AbstractSession;)V

    invoke-virtual {v0, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 320
    iput-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->client:Lorg/apache/http/client/HttpClient;

    .line 323
    .end local v0    # "c":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v1    # "cm":Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;
    .end local v2    # "connParams":Lorg/apache/http/params/HttpParams;
    .end local v3    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v4    # "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :cond_0
    iget-object v5, p0, Lcom/dropbox/client2/session/AbstractSession;->client:Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v5

    .line 245
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    return-object v0
.end method

.method public declared-synchronized getProxyInfo()Lcom/dropbox/client2/session/Session$ProxyInfo;
    .locals 1

    .prologue
    .line 232
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public getWebServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    const-string v0, "www.dropbox.com"

    return-object v0
.end method

.method public isLinked()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->accessTokenPair:Lcom/dropbox/client2/session/AccessTokenPair;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAccessTokenPair(Lcom/dropbox/client2/session/AccessTokenPair;)V
    .locals 2
    .param p1, "accessTokenPair"    # Lcom/dropbox/client2/session/AccessTokenPair;

    .prologue
    .line 127
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'accessTokenPair\' must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    iput-object p1, p0, Lcom/dropbox/client2/session/AbstractSession;->accessTokenPair:Lcom/dropbox/client2/session/AccessTokenPair;

    .line 129
    return-void
.end method

.method public setRequestTimeout(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 2
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .prologue
    const/16 v1, 0x7530

    .line 333
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 334
    .local v0, "reqParams":Lorg/apache/http/params/HttpParams;
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 335
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 336
    return-void
.end method

.method public sign(Lorg/apache/http/HttpRequest;)V
    .locals 3
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 182
    const-string v0, "Authorization"

    iget-object v1, p0, Lcom/dropbox/client2/session/AbstractSession;->appKeyPair:Lcom/dropbox/client2/session/AppKeyPair;

    iget-object v2, p0, Lcom/dropbox/client2/session/AbstractSession;->accessTokenPair:Lcom/dropbox/client2/session/AccessTokenPair;

    invoke-static {v1, v2}, Lcom/dropbox/client2/session/AbstractSession;->buildOAuthHeader(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/AccessTokenPair;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public unlink()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->accessTokenPair:Lcom/dropbox/client2/session/AccessTokenPair;

    .line 170
    return-void
.end method
