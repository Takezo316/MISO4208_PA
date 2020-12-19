.class public Lcom/dropbox/client2/session/WebAuthSession;
.super Lcom/dropbox/client2/session/AbstractSession;
.source "WebAuthSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/client2/session/WebAuthSession$1;,
        Lcom/dropbox/client2/session/WebAuthSession$WebAuthInfo;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/Session$AccessType;)V
    .locals 0
    .param p1, "appKeyPair"    # Lcom/dropbox/client2/session/AppKeyPair;
    .param p2, "type"    # Lcom/dropbox/client2/session/Session$AccessType;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/dropbox/client2/session/AbstractSession;-><init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/Session$AccessType;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/Session$AccessType;Lcom/dropbox/client2/session/AccessTokenPair;)V
    .locals 0
    .param p1, "appKeyPair"    # Lcom/dropbox/client2/session/AppKeyPair;
    .param p2, "type"    # Lcom/dropbox/client2/session/Session$AccessType;
    .param p3, "accessTokenPair"    # Lcom/dropbox/client2/session/AccessTokenPair;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/client2/session/AbstractSession;-><init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/Session$AccessType;Lcom/dropbox/client2/session/AccessTokenPair;)V

    .line 98
    return-void
.end method

.method private setUpToken(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    const/4 v3, 0x1

    .line 218
    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->GET:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    invoke-virtual {p0}, Lcom/dropbox/client2/session/WebAuthSession;->getAPIServer()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "locale"

    aput-object v5, v4, v2

    invoke-virtual {p0}, Lcom/dropbox/client2/session/WebAuthSession;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    move-object v2, p1

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/dropbox/client2/RESTUtility;->streamRequest(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;

    move-result-object v0

    iget-object v6, v0, Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;->response:Lorg/apache/http/HttpResponse;

    .line 223
    .local v6, "response":Lorg/apache/http/HttpResponse;
    invoke-static {v6}, Lcom/dropbox/client2/RESTUtility;->parseAsQueryString(Lorg/apache/http/HttpResponse;)Ljava/util/Map;

    move-result-object v7

    .line 225
    .local v7, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "oauth_token"

    invoke-interface {v7, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "oauth_token_secret"

    invoke-interface {v7, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    :cond_0
    new-instance v0, Lcom/dropbox/client2/exception/DropboxParseException;

    const-string v1, "Did not get tokens from Dropbox"

    invoke-direct {v0, v1}, Lcom/dropbox/client2/exception/DropboxParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_1
    new-instance v2, Lcom/dropbox/client2/session/AccessTokenPair;

    const-string v0, "oauth_token"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "oauth_token_secret"

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/dropbox/client2/session/AccessTokenPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/dropbox/client2/session/WebAuthSession;->setAccessTokenPair(Lcom/dropbox/client2/session/AccessTokenPair;)V

    .line 233
    return-object v7
.end method


# virtual methods
.method public getAuthInfo()Lcom/dropbox/client2/session/WebAuthSession$WebAuthInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dropbox/client2/session/WebAuthSession;->getAuthInfo(Ljava/lang/String;)Lcom/dropbox/client2/session/WebAuthSession$WebAuthInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAuthInfo(Ljava/lang/String;)Lcom/dropbox/client2/session/WebAuthSession$WebAuthInfo;
    .locals 11
    .param p1, "callbackUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 158
    const-string v4, "/oauth/request_token"

    invoke-direct {p0, v4}, Lcom/dropbox/client2/session/WebAuthSession;->setUpToken(Ljava/lang/String;)Ljava/util/Map;

    .line 162
    invoke-virtual {p0}, Lcom/dropbox/client2/session/WebAuthSession;->getAccessTokenPair()Lcom/dropbox/client2/session/AccessTokenPair;

    move-result-object v0

    .line 163
    .local v0, "accessTokenPair":Lcom/dropbox/client2/session/AccessTokenPair;
    new-instance v2, Lcom/dropbox/client2/session/RequestTokenPair;

    iget-object v4, v0, Lcom/dropbox/client2/session/AccessTokenPair;->key:Ljava/lang/String;

    iget-object v5, v0, Lcom/dropbox/client2/session/AccessTokenPair;->secret:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Lcom/dropbox/client2/session/RequestTokenPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .local v2, "requestTokenPair":Lcom/dropbox/client2/session/RequestTokenPair;
    if-eqz p1, :cond_0

    .line 168
    const/4 v4, 0x6

    new-array v1, v4, [Ljava/lang/String;

    const-string v4, "oauth_token"

    aput-object v4, v1, v7

    iget-object v4, v2, Lcom/dropbox/client2/session/RequestTokenPair;->key:Ljava/lang/String;

    aput-object v4, v1, v6

    const-string v4, "oauth_callback"

    aput-object v4, v1, v8

    aput-object p1, v1, v9

    const-string v4, "locale"

    aput-object v4, v1, v10

    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/dropbox/client2/session/WebAuthSession;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 176
    .local v1, "args":[Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/dropbox/client2/session/WebAuthSession;->getWebServer()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/oauth/authorize"

    invoke-static {v4, v6, v5, v1}, Lcom/dropbox/client2/RESTUtility;->buildURL(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "url":Ljava/lang/String;
    new-instance v4, Lcom/dropbox/client2/session/WebAuthSession$WebAuthInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v2, v5}, Lcom/dropbox/client2/session/WebAuthSession$WebAuthInfo;-><init>(Ljava/lang/String;Lcom/dropbox/client2/session/RequestTokenPair;Lcom/dropbox/client2/session/WebAuthSession$1;)V

    return-object v4

    .line 172
    .end local v1    # "args":[Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    new-array v1, v10, [Ljava/lang/String;

    const-string v4, "oauth_token"

    aput-object v4, v1, v7

    iget-object v4, v2, Lcom/dropbox/client2/session/RequestTokenPair;->key:Ljava/lang/String;

    aput-object v4, v1, v6

    const-string v4, "locale"

    aput-object v4, v1, v8

    invoke-virtual {p0}, Lcom/dropbox/client2/session/WebAuthSession;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v9

    .restart local v1    # "args":[Ljava/lang/String;
    goto :goto_0
.end method

.method public retrieveWebAccessToken(Lcom/dropbox/client2/session/RequestTokenPair;)Ljava/lang/String;
    .locals 2
    .param p1, "requestTokenPair"    # Lcom/dropbox/client2/session/RequestTokenPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lcom/dropbox/client2/session/WebAuthSession;->setAccessTokenPair(Lcom/dropbox/client2/session/AccessTokenPair;)V

    .line 212
    const-string v1, "/oauth/access_token"

    invoke-direct {p0, v1}, Lcom/dropbox/client2/session/WebAuthSession;->setUpToken(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 213
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "uid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method
