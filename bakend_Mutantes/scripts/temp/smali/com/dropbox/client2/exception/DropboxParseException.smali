.class public Lcom/dropbox/client2/exception/DropboxParseException;
.super Lcom/dropbox/client2/exception/DropboxException;
.source "DropboxParseException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/io/BufferedReader;)V
    .locals 2
    .param p1, "reader"    # Ljava/io/BufferedReader;

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to parse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/client2/exception/DropboxParseException;->stringifyBody(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dropbox/client2/exception/DropboxException;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/dropbox/client2/exception/DropboxException;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static stringifyBody(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 3
    .param p0, "reader"    # Ljava/io/BufferedReader;

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 47
    .local v0, "inputLine":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 48
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 54
    .local v1, "result":Ljava/lang/StringBuffer;
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 57
    :catch_0
    move-exception v2

    .line 60
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 50
    .end local v1    # "result":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v2

    goto :goto_0
.end method
