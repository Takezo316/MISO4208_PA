.class public Lcom/dropbox/client2/DropboxAPI;
.super Ljava/lang/Object;
.source "DropboxAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/client2/DropboxAPI$1;,
        Lcom/dropbox/client2/DropboxAPI$CreatedCopyRef;,
        Lcom/dropbox/client2/DropboxAPI$DeltaEntry;,
        Lcom/dropbox/client2/DropboxAPI$DeltaPage;,
        Lcom/dropbox/client2/DropboxAPI$ThumbFormat;,
        Lcom/dropbox/client2/DropboxAPI$ThumbSize;,
        Lcom/dropbox/client2/DropboxAPI$DropboxLink;,
        Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;,
        Lcom/dropbox/client2/DropboxAPI$BasicUploadRequest;,
        Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;,
        Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;,
        Lcom/dropbox/client2/DropboxAPI$UploadRequest;,
        Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;,
        Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;,
        Lcom/dropbox/client2/DropboxAPI$ChunkedUploadResponse;,
        Lcom/dropbox/client2/DropboxAPI$Entry;,
        Lcom/dropbox/client2/DropboxAPI$Account;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SESS_T::",
        "Lcom/dropbox/client2/session/Session;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final MAX_UPLOAD_SIZE:J = 0xb400000L

.field protected static final METADATA_DEFAULT_LIMIT:I = 0x61a8

.field private static final REVISION_DEFAULT_LIMIT:I = 0x3e8

.field public static final SDK_VERSION:Ljava/lang/String;

.field private static final SEARCH_DEFAULT_LIMIT:I = 0x2710

.field private static final UPLOAD_SO_TIMEOUT_MS:I = 0x2bf20

.field public static final VERSION:I = 0x1


# instance fields
.field protected final session:Lcom/dropbox/client2/session/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSESS_T;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/dropbox/client2/SdkVersion;->get()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/client2/DropboxAPI;->SDK_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/client2/session/Session;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSESS_T;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    .local p1, "session":Lcom/dropbox/client2/session/Session;, "TSESS_T;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    if-nez p1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    iput-object p1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    .line 107
    return-void
.end method

.method static synthetic access$100(Lcom/dropbox/client2/DropboxAPI;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/dropbox/client2/DropboxAPI$Entry;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/client2/DropboxAPI;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dropbox/client2/DropboxAPI;->commitChunkedUpload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/dropbox/client2/DropboxAPI$Entry;

    move-result-object v0

    return-object v0
.end method

.method private commitChunkedUpload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/dropbox/client2/DropboxAPI$Entry;
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uploadId"    # Ljava/lang/String;
    .param p3, "overwrite"    # Z
    .param p4, "parentRev"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v9, 0x1

    .line 2182
    if-eqz p1, :cond_0

    const-string v7, ""

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2183
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "path is null or empty."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2186
    :cond_1
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 2188
    const-string v7, "/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2189
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2192
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/commit_chunked_upload/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v8}, Lcom/dropbox/client2/session/Session;->getAccessType()Lcom/dropbox/client2/session/Session$AccessType;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2196
    .local v5, "target":Ljava/lang/String;
    const/16 v7, 0x8

    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "overwrite"

    aput-object v8, v3, v7

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v9

    const/4 v7, 0x2

    const-string v8, "parent_rev"

    aput-object v8, v3, v7

    const/4 v7, 0x3

    aput-object p4, v3, v7

    const/4 v7, 0x4

    const-string v8, "locale"

    aput-object v8, v3, v7

    const/4 v7, 0x5

    iget-object v8, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v8}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x6

    const-string v8, "upload_id"

    aput-object v8, v3, v7

    const/4 v7, 0x7

    aput-object p2, v3, v7

    .line 2203
    .local v3, "params":[Ljava/lang/String;
    iget-object v7, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v7}, Lcom/dropbox/client2/session/Session;->getContentServer()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9, v5, v3}, Lcom/dropbox/client2/RESTUtility;->buildURL(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2206
    .local v6, "url":Ljava/lang/String;
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 2208
    .local v4, "req":Lorg/apache/http/client/methods/HttpUriRequest;
    iget-object v7, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v7, v4}, Lcom/dropbox/client2/session/Session;->sign(Lorg/apache/http/HttpRequest;)V

    .line 2210
    iget-object v7, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static {v7, v4}, Lcom/dropbox/client2/RESTUtility;->execute(Lcom/dropbox/client2/session/Session;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 2211
    .local v0, "hresp":Lorg/apache/http/HttpResponse;
    invoke-static {v0}, Lcom/dropbox/client2/RESTUtility;->parseAsJSON(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 2213
    .local v2, "json_":Ljava/util/Map;
    move-object v1, v2

    .line 2214
    .local v1, "json":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v7, Lcom/dropbox/client2/DropboxAPI$Entry;

    invoke-direct {v7, v1}, Lcom/dropbox/client2/DropboxAPI$Entry;-><init>(Ljava/util/Map;)V

    return-object v7
.end method

.method protected static getFromMapAsBoolean(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2086
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2087
    .local v0, "val":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 2088
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "val":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2090
    :goto_0
    return v1

    .restart local v0    # "val":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static getFromMapAsLong(Ljava/util/Map;Ljava/lang/String;)J
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .prologue
    .line 2502
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2503
    .local v2, "val":Ljava/lang/Object;
    const-wide/16 v0, 0x0

    .line 2504
    .local v0, "ret":J
    if-eqz v2, :cond_0

    .line 2505
    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_1

    .line 2506
    check-cast v2, Ljava/lang/Number;

    .end local v2    # "val":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 2513
    :cond_0
    :goto_0
    return-wide v0

    .line 2507
    .restart local v2    # "val":Ljava/lang/Object;
    :cond_1
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2510
    check-cast v2, Ljava/lang/String;

    .end local v2    # "val":Ljava/lang/Object;
    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private putFileRequest(Ljava/lang/String;Ljava/io/InputStream;JZLjava/lang/String;Lcom/dropbox/client2/ProgressListener;)Lcom/dropbox/client2/DropboxAPI$UploadRequest;
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .param p5, "overwrite"    # Z
    .param p6, "parentRev"    # Ljava/lang/String;
    .param p7, "listener"    # Lcom/dropbox/client2/ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 2135
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    if-eqz p1, :cond_0

    const-string v8, ""

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2136
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "path is null or empty."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2139
    :cond_1
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 2141
    const-string v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 2142
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2145
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/files_put/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v9}, Lcom/dropbox/client2/session/Session;->getAccessType()Lcom/dropbox/client2/session/Session$AccessType;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2147
    .local v6, "target":Ljava/lang/String;
    if-nez p6, :cond_3

    .line 2148
    const-string p6, ""

    .line 2151
    :cond_3
    const/4 v8, 0x6

    new-array v4, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "overwrite"

    aput-object v9, v4, v8

    const/4 v8, 0x1

    invoke-static {p5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x2

    const-string v9, "parent_rev"

    aput-object v9, v4, v8

    const/4 v8, 0x3

    aput-object p6, v4, v8

    const/4 v8, 0x4

    const-string v9, "locale"

    aput-object v9, v4, v8

    const/4 v8, 0x5

    iget-object v9, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v9}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    .line 2157
    .local v4, "params":[Ljava/lang/String;
    iget-object v8, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v8}, Lcom/dropbox/client2/session/Session;->getContentServer()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9, v6, v4}, Lcom/dropbox/client2/RESTUtility;->buildURL(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2160
    .local v7, "url":Ljava/lang/String;
    new-instance v5, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v5, v7}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 2161
    .local v5, "req":Lorg/apache/http/client/methods/HttpPut;
    iget-object v8, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v8, v5}, Lcom/dropbox/client2/session/Session;->sign(Lorg/apache/http/HttpRequest;)V

    .line 2163
    new-instance v3, Lorg/apache/http/entity/InputStreamEntity;

    invoke-direct {v3, p2, p3, p4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 2164
    .local v3, "isEntity":Lorg/apache/http/entity/InputStreamEntity;
    const-string v8, "application/octet-stream"

    invoke-virtual {v3, v8}, Lorg/apache/http/entity/InputStreamEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 2165
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lorg/apache/http/entity/InputStreamEntity;->setChunked(Z)V

    .line 2167
    move-object v1, v3

    .line 2169
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz p7, :cond_4

    .line 2170
    new-instance v2, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity;

    move-object/from16 v0, p7

    invoke-direct {v2, v1, v0}, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity;-><init>(Lorg/apache/http/HttpEntity;Lcom/dropbox/client2/ProgressListener;)V

    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    move-object v1, v2

    .line 2173
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v1    # "entity":Lorg/apache/http/HttpEntity;
    :cond_4
    invoke-virtual {v5, v1}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 2175
    new-instance v8, Lcom/dropbox/client2/DropboxAPI$BasicUploadRequest;

    iget-object v9, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-direct {v8, v5, v9}, Lcom/dropbox/client2/DropboxAPI$BasicUploadRequest;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/dropbox/client2/session/Session;)V

    return-object v8
.end method


# virtual methods
.method public accountInfo()Lcom/dropbox/client2/DropboxAPI$Account;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v3, 0x1

    .line 1234
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 1237
    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->GET:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAPIServer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/account/info"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "locale"

    aput-object v7, v4, v5

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v5}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/client2/RESTUtility;->request(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 1243
    .local v6, "accountInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/dropbox/client2/DropboxAPI$Account;

    invoke-direct {v0, v6}, Lcom/dropbox/client2/DropboxAPI$Account;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public addFromCopyRef(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/client2/DropboxAPI$Entry;
    .locals 7
    .param p1, "sourceCopyRef"    # Ljava/lang/String;
    .param p2, "targetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v3, 0x1

    .line 2459
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 2461
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2462
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'targetPath\' doesn\'t start with \"/\": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2465
    :cond_0
    const/16 v0, 0x8

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "locale"

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v0}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v0, 0x2

    const-string v1, "root"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAccessType()Lcom/dropbox/client2/session/Session$AccessType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/client2/session/Session$AccessType;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string v1, "from_copy_ref"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    aput-object p1, v4, v0

    const/4 v0, 0x6

    const-string v1, "to_path"

    aput-object v1, v4, v0

    const/4 v0, 0x7

    aput-object p2, v4, v0

    .line 2472
    .local v4, "params":[Ljava/lang/String;
    const-string v2, "/fileops/copy"

    .line 2475
    .local v2, "url_path":Ljava/lang/String;
    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->GET:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAPIServer()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/client2/RESTUtility;->request(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 2479
    .local v6, "dirinfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/dropbox/client2/DropboxAPI$Entry;

    invoke-direct {v0, v6}, Lcom/dropbox/client2/DropboxAPI$Entry;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method protected assertAuthenticated()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxUnlinkedException;
        }
    .end annotation

    .prologue
    .line 2487
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v0}, Lcom/dropbox/client2/session/Session;->isLinked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2488
    new-instance v0, Lcom/dropbox/client2/exception/DropboxUnlinkedException;

    invoke-direct {v0}, Lcom/dropbox/client2/exception/DropboxUnlinkedException;-><init>()V

    throw v0

    .line 2490
    :cond_0
    return-void
.end method

.method public chunkedUploadRequest(Ljava/io/InputStream;JLcom/dropbox/client2/ProgressListener;JLjava/lang/String;)Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;
    .locals 9
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "length"    # J
    .param p4, "listener"    # Lcom/dropbox/client2/ProgressListener;
    .param p5, "offset"    # J
    .param p7, "uploadId"    # Ljava/lang/String;

    .prologue
    .line 965
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const-wide/16 v6, 0x0

    cmp-long v6, p5, v6

    if-nez v6, :cond_1

    .line 966
    const/4 v6, 0x0

    new-array v3, v6, [Ljava/lang/String;

    .line 970
    .local v3, "params":[Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v6}, Lcom/dropbox/client2/session/Session;->getContentServer()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const-string v8, "/chunked_upload/"

    invoke-static {v6, v7, v8, v3}, Lcom/dropbox/client2/RESTUtility;->buildURL(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 971
    .local v5, "url":Ljava/lang/String;
    new-instance v4, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 972
    .local v4, "req":Lorg/apache/http/client/methods/HttpPut;
    iget-object v6, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v6, v4}, Lcom/dropbox/client2/session/Session;->sign(Lorg/apache/http/HttpRequest;)V

    .line 974
    new-instance v2, Lorg/apache/http/entity/InputStreamEntity;

    invoke-direct {v2, p1, p2, p3}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 975
    .local v2, "ise":Lorg/apache/http/entity/InputStreamEntity;
    const-string v6, "application/octet-stream"

    invoke-virtual {v2, v6}, Lorg/apache/http/entity/InputStreamEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 976
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lorg/apache/http/entity/InputStreamEntity;->setChunked(Z)V

    .line 977
    move-object v0, v2

    .line 979
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz p4, :cond_0

    .line 980
    new-instance v1, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity;

    invoke-direct {v1, v0, p4}, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity;-><init>(Lorg/apache/http/HttpEntity;Lcom/dropbox/client2/ProgressListener;)V

    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    move-object v0, v1

    .line 982
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v0    # "entity":Lorg/apache/http/HttpEntity;
    :cond_0
    invoke-virtual {v4, v0}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 984
    new-instance v6, Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;

    iget-object v7, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-direct {v6, v4, v7}, Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/dropbox/client2/session/Session;)V

    return-object v6

    .line 968
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .end local v2    # "ise":Lorg/apache/http/entity/InputStreamEntity;
    .end local v3    # "params":[Ljava/lang/String;
    .end local v4    # "req":Lorg/apache/http/client/methods/HttpPut;
    .end local v5    # "url":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x4

    new-array v3, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "upload_id"

    aput-object v7, v3, v6

    const/4 v6, 0x1

    aput-object p7, v3, v6

    const/4 v6, 0x2

    const-string v7, "offset"

    aput-object v7, v3, v6

    const/4 v6, 0x3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    .restart local v3    # "params":[Ljava/lang/String;
    goto :goto_0
.end method

.method public copy(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/client2/DropboxAPI$Entry;
    .locals 7
    .param p1, "fromPath"    # Ljava/lang/String;
    .param p2, "toPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v3, 0x1

    .line 1873
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 1875
    const/16 v0, 0x8

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "root"

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v0}, Lcom/dropbox/client2/session/Session;->getAccessType()Lcom/dropbox/client2/session/Session$AccessType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/client2/session/Session$AccessType;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v0, 0x2

    const-string v1, "from_path"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object p1, v4, v0

    const/4 v0, 0x4

    const-string v1, "to_path"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    aput-object p2, v4, v0

    const/4 v0, 0x6

    const-string v1, "locale"

    aput-object v1, v4, v0

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1881
    .local v4, "params":[Ljava/lang/String;
    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->POST:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAPIServer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/fileops/copy"

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/client2/RESTUtility;->request(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 1886
    .local v6, "resp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/dropbox/client2/DropboxAPI$Entry;

    invoke-direct {v0, v6}, Lcom/dropbox/client2/DropboxAPI$Entry;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public createCopyRef(Ljava/lang/String;)Lcom/dropbox/client2/DropboxAPI$CreatedCopyRef;
    .locals 8
    .param p1, "sourcePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v3, 0x1

    .line 2394
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 2396
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2397
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'sourcePath\' must start with \"/\": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2400
    :cond_0
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "locale"

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v0}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 2404
    .local v4, "params":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/copy_ref/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAccessType()Lcom/dropbox/client2/session/Session$AccessType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2407
    .local v2, "url_path":Ljava/lang/String;
    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->GET:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAPIServer()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/client2/RESTUtility;->request(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Ljava/lang/Object;

    move-result-object v7

    .line 2411
    .local v7, "result":Ljava/lang/Object;
    :try_start_0
    new-instance v0, Lcom/dropbox/client2/jsonextract/JsonThing;

    invoke-direct {v0, v7}, Lcom/dropbox/client2/jsonextract/JsonThing;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/dropbox/client2/DropboxAPI$CreatedCopyRef;->extractFromJson(Lcom/dropbox/client2/jsonextract/JsonThing;)Lcom/dropbox/client2/DropboxAPI$CreatedCopyRef;
    :try_end_0
    .catch Lcom/dropbox/client2/jsonextract/JsonExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 2412
    :catch_0
    move-exception v6

    .line 2413
    .local v6, "ex":Lcom/dropbox/client2/jsonextract/JsonExtractionException;
    new-instance v0, Lcom/dropbox/client2/exception/DropboxParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing /copy_ref results: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/dropbox/client2/jsonextract/JsonExtractionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/client2/exception/DropboxParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createFolder(Ljava/lang/String;)Lcom/dropbox/client2/DropboxAPI$Entry;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v3, 0x1

    .line 1910
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 1912
    const/4 v0, 0x6

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "root"

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v0}, Lcom/dropbox/client2/session/Session;->getAccessType()Lcom/dropbox/client2/session/Session$AccessType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/client2/session/Session$AccessType;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v0, 0x2

    const-string v1, "path"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object p1, v4, v0

    const/4 v0, 0x4

    const-string v1, "locale"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1917
    .local v4, "params":[Ljava/lang/String;
    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->POST:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAPIServer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/fileops/create_folder"

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/client2/RESTUtility;->request(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 1921
    .local v6, "resp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/dropbox/client2/DropboxAPI$Entry;

    invoke-direct {v0, v6}, Lcom/dropbox/client2/DropboxAPI$Entry;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public delete(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v3, 0x1

    .line 1945
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 1947
    const/4 v0, 0x6

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "root"

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v0}, Lcom/dropbox/client2/session/Session;->getAccessType()Lcom/dropbox/client2/session/Session$AccessType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/client2/session/Session$AccessType;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v0, 0x2

    const-string v1, "path"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object p1, v4, v0

    const/4 v0, 0x4

    const-string v1, "locale"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1951
    .local v4, "params":[Ljava/lang/String;
    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->POST:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAPIServer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/fileops/delete"

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/client2/RESTUtility;->request(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Ljava/lang/Object;

    .line 1953
    return-void
.end method

.method public delta(Ljava/lang/String;)Lcom/dropbox/client2/DropboxAPI$DeltaPage;
    .locals 8
    .param p1, "cursor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/client2/DropboxAPI$DeltaPage",
            "<",
            "Lcom/dropbox/client2/DropboxAPI$Entry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v3, 0x1

    .line 2242
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "cursor"

    aput-object v1, v4, v0

    aput-object p1, v4, v3

    const/4 v0, 0x2

    const-string v1, "locale"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 2247
    .local v4, "params":[Ljava/lang/String;
    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->POST:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAPIServer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/delta"

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/client2/RESTUtility;->request(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Ljava/lang/Object;

    move-result-object v7

    .line 2250
    .local v7, "json":Ljava/lang/Object;
    :try_start_0
    new-instance v0, Lcom/dropbox/client2/jsonextract/JsonThing;

    invoke-direct {v0, v7}, Lcom/dropbox/client2/jsonextract/JsonThing;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lcom/dropbox/client2/DropboxAPI$Entry;->JsonExtractor:Lcom/dropbox/client2/jsonextract/JsonExtractor;

    invoke-static {v0, v1}, Lcom/dropbox/client2/DropboxAPI$DeltaPage;->extractFromJson(Lcom/dropbox/client2/jsonextract/JsonThing;Lcom/dropbox/client2/jsonextract/JsonExtractor;)Lcom/dropbox/client2/DropboxAPI$DeltaPage;
    :try_end_0
    .catch Lcom/dropbox/client2/jsonextract/JsonExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 2251
    :catch_0
    move-exception v6

    .line 2252
    .local v6, "ex":Lcom/dropbox/client2/jsonextract/JsonExtractionException;
    new-instance v0, Lcom/dropbox/client2/exception/DropboxParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing /delta results: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/dropbox/client2/jsonextract/JsonExtractionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/client2/exception/DropboxParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChunkedUploader(Ljava/io/InputStream;J)Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "J)",
            "Lcom/dropbox/client2/DropboxAPI",
            "<TSESS_T;>.ChunkedUploader;"
        }
    .end annotation

    .prologue
    .line 729
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    new-instance v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;-><init>(Lcom/dropbox/client2/DropboxAPI;Ljava/io/InputStream;J)V

    return-object v0
.end method

.method public getChunkedUploader(Ljava/io/InputStream;JI)Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "length"    # J
    .param p4, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "JI)",
            "Lcom/dropbox/client2/DropboxAPI",
            "<TSESS_T;>.ChunkedUploader;"
        }
    .end annotation

    .prologue
    .line 742
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    new-instance v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;-><init>(Lcom/dropbox/client2/DropboxAPI;Ljava/io/InputStream;JI)V

    return-object v0
.end method

.method public getFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lcom/dropbox/client2/ProgressListener;)Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "rev"    # Ljava/lang/String;
    .param p3, "os"    # Ljava/io/OutputStream;
    .param p4, "listener"    # Lcom/dropbox/client2/ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 1298
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/client2/DropboxAPI;->getFileStream(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;

    move-result-object v0

    .line 1299
    .local v0, "dis":Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;
    invoke-virtual {v0, p3, p4}, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->copyStreamToOutput(Ljava/io/OutputStream;Lcom/dropbox/client2/ProgressListener;)V

    .line 1300
    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->getFileInfo()Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;

    move-result-object v1

    return-object v1
.end method

.method public getFileStream(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "rev"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v7, 0x1

    .line 1334
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 1336
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1337
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1340
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/files/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v6}, Lcom/dropbox/client2/session/Session;->getAccessType()Lcom/dropbox/client2/session/Session$AccessType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1341
    .local v4, "url":Ljava/lang/String;
    const/4 v5, 0x4

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "rev"

    aput-object v6, v0, v5

    aput-object p2, v0, v7

    const/4 v5, 0x2

    const-string v6, "locale"

    aput-object v6, v0, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v6}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 1345
    .local v0, "args":[Ljava/lang/String;
    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v5}, Lcom/dropbox/client2/session/Session;->getContentServer()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7, v4, v0}, Lcom/dropbox/client2/RESTUtility;->buildURL(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1347
    .local v3, "target":Ljava/lang/String;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1348
    .local v1, "req":Lorg/apache/http/client/methods/HttpGet;
    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v5, v1}, Lcom/dropbox/client2/session/Session;->sign(Lorg/apache/http/HttpRequest;)V

    .line 1350
    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static {v5, v1}, Lcom/dropbox/client2/RESTUtility;->execute(Lcom/dropbox/client2/session/Session;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 1352
    .local v2, "response":Lorg/apache/http/HttpResponse;
    new-instance v5, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;

    invoke-direct {v5, v1, v2}, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)V

    return-object v5
.end method

.method public getSession()Lcom/dropbox/client2/session/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSESS_T;"
        }
    .end annotation

    .prologue
    .line 1214
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    return-object v0
.end method

.method public getThumbnail(Ljava/lang/String;Ljava/io/OutputStream;Lcom/dropbox/client2/DropboxAPI$ThumbSize;Lcom/dropbox/client2/DropboxAPI$ThumbFormat;Lcom/dropbox/client2/ProgressListener;)Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "size"    # Lcom/dropbox/client2/DropboxAPI$ThumbSize;
    .param p4, "format"    # Lcom/dropbox/client2/DropboxAPI$ThumbFormat;
    .param p5, "listener"    # Lcom/dropbox/client2/ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 1569
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    invoke-virtual {p0, p1, p3, p4}, Lcom/dropbox/client2/DropboxAPI;->getThumbnailStream(Ljava/lang/String;Lcom/dropbox/client2/DropboxAPI$ThumbSize;Lcom/dropbox/client2/DropboxAPI$ThumbFormat;)Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;

    move-result-object v0

    .line 1571
    .local v0, "thumb":Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;
    invoke-virtual {v0, p2, p5}, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->copyStreamToOutput(Ljava/io/OutputStream;Lcom/dropbox/client2/ProgressListener;)V

    .line 1573
    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->getFileInfo()Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;

    move-result-object v1

    return-object v1
.end method

.method public getThumbnailStream(Ljava/lang/String;Lcom/dropbox/client2/DropboxAPI$ThumbSize;Lcom/dropbox/client2/DropboxAPI$ThumbFormat;)Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "size"    # Lcom/dropbox/client2/DropboxAPI$ThumbSize;
    .param p3, "format"    # Lcom/dropbox/client2/DropboxAPI$ThumbFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v3, 0x1

    .line 1609
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 1611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/thumbnails/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAccessType()Lcom/dropbox/client2/session/Session$AccessType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1612
    .local v2, "target":Ljava/lang/String;
    const/4 v0, 0x6

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "size"

    aput-object v1, v4, v0

    invoke-virtual {p2}, Lcom/dropbox/client2/DropboxAPI$ThumbSize;->toAPISize()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v0, 0x2

    const-string v1, "format"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    invoke-virtual {p3}, Lcom/dropbox/client2/DropboxAPI$ThumbFormat;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string v1, "locale"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1615
    .local v4, "params":[Ljava/lang/String;
    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->GET:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getContentServer()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/client2/RESTUtility;->streamRequest(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;

    move-result-object v6

    .line 1618
    .local v6, "rr":Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;
    new-instance v0, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;

    iget-object v1, v6, Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v3, v6, Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-direct {v0, v1, v3}, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)V

    return-object v0
.end method

.method public media(Ljava/lang/String;Z)Lcom/dropbox/client2/DropboxAPI$DropboxLink;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "ssl"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v3, 0x1

    .line 2021
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 2022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAccessType()Lcom/dropbox/client2/session/Session$AccessType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2025
    .local v2, "target":Ljava/lang/String;
    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->GET:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAPIServer()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "locale"

    aput-object v7, v4, v5

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v5}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/client2/RESTUtility;->request(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 2031
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/dropbox/client2/DropboxAPI$DropboxLink;

    const/4 v1, 0x0

    invoke-direct {v0, v6, p2, v1}, Lcom/dropbox/client2/DropboxAPI$DropboxLink;-><init>(Ljava/util/Map;ZLcom/dropbox/client2/DropboxAPI$1;)V

    return-object v0
.end method

.method public metadata(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Lcom/dropbox/client2/DropboxAPI$Entry;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileLimit"    # I
    .param p3, "hash"    # Ljava/lang/String;
    .param p4, "list"    # Z
    .param p5, "rev"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v3, 0x1

    .line 1675
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 1677
    if-gtz p2, :cond_0

    .line 1678
    const/16 p2, 0x61a8

    .line 1681
    :cond_0
    const/16 v0, 0xa

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "file_limit"

    aput-object v1, v4, v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v0, 0x2

    const-string v1, "hash"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object p3, v4, v0

    const/4 v0, 0x4

    const-string v1, "list"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x6

    const-string v1, "rev"

    aput-object v1, v4, v0

    const/4 v0, 0x7

    aput-object p5, v4, v0

    const/16 v0, 0x8

    const-string v1, "locale"

    aput-object v1, v4, v0

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1689
    .local v4, "params":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/metadata/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAccessType()Lcom/dropbox/client2/session/Session$AccessType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1692
    .local v2, "url_path":Ljava/lang/String;
    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->GET:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAPIServer()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/client2/RESTUtility;->request(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 1696
    .local v6, "dirinfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/dropbox/client2/DropboxAPI$Entry;

    invoke-direct {v0, v6}, Lcom/dropbox/client2/DropboxAPI$Entry;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public move(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/client2/DropboxAPI$Entry;
    .locals 7
    .param p1, "fromPath"    # Ljava/lang/String;
    .param p2, "toPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v3, 0x1

    .line 1833
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 1835
    const/16 v0, 0x8

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "root"

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v0}, Lcom/dropbox/client2/session/Session;->getAccessType()Lcom/dropbox/client2/session/Session$AccessType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/client2/session/Session$AccessType;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v0, 0x2

    const-string v1, "from_path"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object p1, v4, v0

    const/4 v0, 0x4

    const-string v1, "to_path"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    aput-object p2, v4, v0

    const/4 v0, 0x6

    const-string v1, "locale"

    aput-object v1, v4, v0

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1841
    .local v4, "params":[Ljava/lang/String;
    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->POST:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAPIServer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/fileops/move"

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/client2/RESTUtility;->request(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 1846
    .local v6, "resp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/dropbox/client2/DropboxAPI$Entry;

    invoke-direct {v0, v6}, Lcom/dropbox/client2/DropboxAPI$Entry;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public putFile(Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Lcom/dropbox/client2/ProgressListener;)Lcom/dropbox/client2/DropboxAPI$Entry;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .param p5, "parentRev"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/dropbox/client2/ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 1420
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    invoke-virtual/range {p0 .. p6}, Lcom/dropbox/client2/DropboxAPI;->putFileRequest(Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Lcom/dropbox/client2/ProgressListener;)Lcom/dropbox/client2/DropboxAPI$UploadRequest;

    move-result-object v0

    .line 1422
    .local v0, "request":Lcom/dropbox/client2/DropboxAPI$UploadRequest;
    invoke-interface {v0}, Lcom/dropbox/client2/DropboxAPI$UploadRequest;->upload()Lcom/dropbox/client2/DropboxAPI$Entry;

    move-result-object v1

    return-object v1
.end method

.method public putFileOverwrite(Ljava/lang/String;Ljava/io/InputStream;JLcom/dropbox/client2/ProgressListener;)Lcom/dropbox/client2/DropboxAPI$Entry;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .param p5, "listener"    # Lcom/dropbox/client2/ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 1499
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    invoke-virtual/range {p0 .. p5}, Lcom/dropbox/client2/DropboxAPI;->putFileOverwriteRequest(Ljava/lang/String;Ljava/io/InputStream;JLcom/dropbox/client2/ProgressListener;)Lcom/dropbox/client2/DropboxAPI$UploadRequest;

    move-result-object v0

    .line 1501
    .local v0, "request":Lcom/dropbox/client2/DropboxAPI$UploadRequest;
    invoke-interface {v0}, Lcom/dropbox/client2/DropboxAPI$UploadRequest;->upload()Lcom/dropbox/client2/DropboxAPI$Entry;

    move-result-object v1

    return-object v1
.end method

.method public putFileOverwriteRequest(Ljava/lang/String;Ljava/io/InputStream;JLcom/dropbox/client2/ProgressListener;)Lcom/dropbox/client2/DropboxAPI$UploadRequest;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .param p5, "listener"    # Lcom/dropbox/client2/ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 1533
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/client2/DropboxAPI;->putFileRequest(Ljava/lang/String;Ljava/io/InputStream;JZLjava/lang/String;Lcom/dropbox/client2/ProgressListener;)Lcom/dropbox/client2/DropboxAPI$UploadRequest;

    move-result-object v0

    return-object v0
.end method

.method public putFileRequest(Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Lcom/dropbox/client2/ProgressListener;)Lcom/dropbox/client2/DropboxAPI$UploadRequest;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .param p5, "parentRev"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/dropbox/client2/ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 1460
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/client2/DropboxAPI;->putFileRequest(Ljava/lang/String;Ljava/io/InputStream;JZLjava/lang/String;Lcom/dropbox/client2/ProgressListener;)Lcom/dropbox/client2/DropboxAPI$UploadRequest;

    move-result-object v0

    return-object v0
.end method

.method public restore(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/client2/DropboxAPI$Entry;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "rev"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v3, 0x1

    .line 1978
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 1980
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "rev"

    aput-object v1, v4, v0

    aput-object p2, v4, v3

    const/4 v0, 0x2

    const-string v1, "locale"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1985
    .local v4, "params":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/restore/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAccessType()Lcom/dropbox/client2/session/Session$AccessType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1988
    .local v2, "target":Ljava/lang/String;
    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->GET:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAPIServer()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/client2/RESTUtility;->request(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 1992
    .local v6, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/dropbox/client2/DropboxAPI$Entry;

    invoke-direct {v0, v6}, Lcom/dropbox/client2/DropboxAPI$Entry;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public revisions(Ljava/lang/String;I)Ljava/util/List;
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "revLimit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/client2/DropboxAPI$Entry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v3, 0x1

    .line 1725
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 1727
    if-gtz p2, :cond_0

    .line 1728
    const/16 p2, 0x3e8

    .line 1731
    :cond_0
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "rev_limit"

    aput-object v1, v4, v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v0, 0x2

    const-string v1, "locale"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1736
    .local v4, "params":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/revisions/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAccessType()Lcom/dropbox/client2/session/Session$AccessType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1738
    .local v2, "url_path":Ljava/lang/String;
    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->GET:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAPIServer()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/client2/RESTUtility;->request(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/simple/JSONArray;

    .line 1742
    .local v9, "revs":Lorg/json/simple/JSONArray;
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 1743
    .local v6, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/client2/DropboxAPI$Entry;>;"
    invoke-virtual {v9}, Lorg/json/simple/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 1744
    .local v8, "metadata":Ljava/lang/Object;
    new-instance v0, Lcom/dropbox/client2/DropboxAPI$Entry;

    check-cast v8, Ljava/util/Map;

    .end local v8    # "metadata":Ljava/lang/Object;
    invoke-direct {v0, v8}, Lcom/dropbox/client2/DropboxAPI$Entry;-><init>(Ljava/util/Map;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1747
    :cond_1
    return-object v6
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/util/List;
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "fileLimit"    # I
    .param p4, "includeDeleted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/client2/DropboxAPI$Entry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 1776
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 1778
    if-gtz p3, :cond_0

    .line 1779
    const/16 p3, 0x2710

    .line 1782
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/search/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAccessType()Lcom/dropbox/client2/session/Session$AccessType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1784
    .local v2, "target":Ljava/lang/String;
    const/16 v0, 0x8

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "query"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    const/4 v0, 0x2

    const-string v1, "file_limit"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string v1, "include_deleted"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x6

    const-string v1, "locale"

    aput-object v1, v4, v0

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1791
    .local v4, "params":[Ljava/lang/String;
    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->GET:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAPIServer()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/client2/RESTUtility;->request(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Ljava/lang/Object;

    move-result-object v10

    .line 1794
    .local v10, "response":Ljava/lang/Object;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1795
    .local v11, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/dropbox/client2/DropboxAPI$Entry;>;"
    instance-of v0, v10, Lorg/json/simple/JSONArray;

    if-eqz v0, :cond_2

    move-object v8, v10

    .line 1796
    check-cast v8, Lorg/json/simple/JSONArray;

    .line 1797
    .local v8, "jresp":Lorg/json/simple/JSONArray;
    invoke-virtual {v8}, Lorg/json/simple/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 1798
    .local v9, "next":Ljava/lang/Object;
    instance-of v0, v9, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 1800
    new-instance v6, Lcom/dropbox/client2/DropboxAPI$Entry;

    check-cast v9, Ljava/util/Map;

    .end local v9    # "next":Ljava/lang/Object;
    invoke-direct {v6, v9}, Lcom/dropbox/client2/DropboxAPI$Entry;-><init>(Ljava/util/Map;)V

    .line 1801
    .local v6, "ent":Lcom/dropbox/client2/DropboxAPI$Entry;
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1806
    .end local v6    # "ent":Lcom/dropbox/client2/DropboxAPI$Entry;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "jresp":Lorg/json/simple/JSONArray;
    :cond_2
    return-object v11
.end method

.method public share(Ljava/lang/String;)Lcom/dropbox/client2/DropboxAPI$DropboxLink;
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v3, 0x1

    .line 2055
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 2057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/shares/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAccessType()Lcom/dropbox/client2/session/Session$AccessType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2060
    .local v2, "target":Ljava/lang/String;
    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->GET:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAPIServer()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "locale"

    aput-object v9, v4, v5

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v5}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/client2/RESTUtility;->request(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 2066
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "url"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2067
    .local v8, "url":Ljava/lang/String;
    const-string v0, "expires"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/client2/RESTUtility;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 2069
    .local v6, "expires":Ljava/util/Date;
    if-eqz v8, :cond_0

    if-nez v6, :cond_1

    .line 2070
    :cond_0
    new-instance v0, Lcom/dropbox/client2/exception/DropboxParseException;

    const-string v1, "Could not parse share response."

    invoke-direct {v0, v1}, Lcom/dropbox/client2/exception/DropboxParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2073
    :cond_1
    new-instance v0, Lcom/dropbox/client2/DropboxAPI$DropboxLink;

    const/4 v1, 0x0

    invoke-direct {v0, v7, v1}, Lcom/dropbox/client2/DropboxAPI$DropboxLink;-><init>(Ljava/util/Map;Lcom/dropbox/client2/DropboxAPI$1;)V

    return-object v0
.end method
