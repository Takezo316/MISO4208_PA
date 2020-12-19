.class public Lcom/dropbox/client2/exception/DropboxServerException;
.super Lcom/dropbox/client2/exception/DropboxException;
.source "DropboxServerException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/client2/exception/DropboxServerException$Error;
    }
.end annotation


# static fields
.field public static final _200_OK:I = 0xc8

.field public static final _206_PARTIAL_CONTENT:I = 0xce

.field public static final _302_FOUND:I = 0x12e

.field public static final _304_NOT_MODIFIED:I = 0x130

.field public static final _400_BAD_REQUEST:I = 0x190

.field public static final _401_UNAUTHORIZED:I = 0x191

.field public static final _403_FORBIDDEN:I = 0x193

.field public static final _404_NOT_FOUND:I = 0x194

.field public static final _405_METHOD_NOT_ALLOWED:I = 0x195

.field public static final _406_NOT_ACCEPTABLE:I = 0x196

.field public static final _409_CONFLICT:I = 0x199

.field public static final _411_LENGTH_REQUIRED:I = 0x19b

.field public static final _415_UNSUPPORTED_MEDIA:I = 0x19f

.field public static final _500_INTERNAL_SERVER_ERROR:I = 0x1f4

.field public static final _501_NOT_IMPLEMENTED:I = 0x1f5

.field public static final _502_BAD_GATEWAY:I = 0x1f6

.field public static final _503_SERVICE_UNAVAILABLE:I = 0x1f7

.field public static final _507_INSUFFICIENT_STORAGE:I = 0x1fb

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public body:Lcom/dropbox/client2/exception/DropboxServerException$Error;

.field public error:I

.field public location:Ljava/lang/String;

.field public parsedResponse:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public reason:Ljava/lang/String;

.field public server:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpResponse;)V
    .locals 2
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/dropbox/client2/exception/DropboxException;-><init>()V

    .line 156
    invoke-virtual {p0}, Lcom/dropbox/client2/exception/DropboxServerException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 157
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 158
    .local v0, "status":Lorg/apache/http/StatusLine;
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    iput v1, p0, Lcom/dropbox/client2/exception/DropboxServerException;->error:I

    .line 159
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/client2/exception/DropboxServerException;->reason:Ljava/lang/String;

    .line 160
    const-string v1, "server"

    invoke-static {p1, v1}, Lcom/dropbox/client2/exception/DropboxServerException;->getHeader(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/client2/exception/DropboxServerException;->server:Ljava/lang/String;

    .line 161
    const-string v1, "location"

    invoke-static {p1, v1}, Lcom/dropbox/client2/exception/DropboxServerException;->getHeader(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/client2/exception/DropboxServerException;->location:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpResponse;Ljava/lang/Object;)V
    .locals 2
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "rest"    # Ljava/lang/Object;

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/dropbox/client2/exception/DropboxServerException;-><init>(Lorg/apache/http/HttpResponse;)V

    .line 174
    if-eqz p2, :cond_0

    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 175
    check-cast p2, Ljava/util/Map;

    .end local p2    # "rest":Ljava/lang/Object;
    iput-object p2, p0, Lcom/dropbox/client2/exception/DropboxServerException;->parsedResponse:Ljava/util/Map;

    .line 176
    new-instance v0, Lcom/dropbox/client2/exception/DropboxServerException$Error;

    iget-object v1, p0, Lcom/dropbox/client2/exception/DropboxServerException;->parsedResponse:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/dropbox/client2/exception/DropboxServerException$Error;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/dropbox/client2/exception/DropboxServerException;->body:Lcom/dropbox/client2/exception/DropboxServerException$Error;

    .line 178
    :cond_0
    return-void
.end method

.method private static getHeader(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 223
    const/4 v1, 0x0

    .line 224
    .local v1, "value":Ljava/lang/String;
    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 225
    .local v0, "serverheader":Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    .line 226
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 228
    :cond_0
    return-object v1
.end method

.method public static isValidWithNullBody(Lorg/apache/http/HttpResponse;)Z
    .locals 7
    .param p0, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 199
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 200
    .local v0, "code":I
    const/16 v5, 0x12e

    if-ne v0, v5, :cond_1

    .line 201
    const-string v5, "location"

    invoke-static {p0, v5}, Lcom/dropbox/client2/exception/DropboxServerException;->getHeader(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "location":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 204
    const-string v5, "://"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 205
    .local v1, "loc":I
    if-le v1, v6, :cond_2

    .line 206
    add-int/lit8 v5, v1, 0x3

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 207
    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 208
    if-le v1, v6, :cond_2

    .line 209
    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "dropbox.com"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 219
    .end local v1    # "loc":I
    .end local v2    # "location":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 216
    :cond_1
    const/16 v5, 0x130

    if-eq v0, v5, :cond_0

    :cond_2
    move v3, v4

    .line 219
    goto :goto_0
.end method


# virtual methods
.method public isDuplicateAccount()Z
    .locals 2

    .prologue
    .line 186
    iget v0, p0, Lcom/dropbox/client2/exception/DropboxServerException;->error:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dropbox/client2/exception/DropboxServerException;->body:Lcom/dropbox/client2/exception/DropboxServerException$Error;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/client2/exception/DropboxServerException;->body:Lcom/dropbox/client2/exception/DropboxServerException$Error;

    iget-object v0, v0, Lcom/dropbox/client2/exception/DropboxServerException$Error;->error:Ljava/lang/String;

    const-string v1, "taken"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DropboxServerException ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/client2/exception/DropboxServerException;->server:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dropbox/client2/exception/DropboxServerException;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/client2/exception/DropboxServerException;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/client2/exception/DropboxServerException;->body:Lcom/dropbox/client2/exception/DropboxServerException$Error;

    iget-object v1, v1, Lcom/dropbox/client2/exception/DropboxServerException$Error;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
