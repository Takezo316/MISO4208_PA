.class public Lcom/dropbox/client2/exception/DropboxUnlinkedException;
.super Lcom/dropbox/client2/exception/DropboxException;
.source "DropboxUnlinkedException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/dropbox/client2/exception/DropboxException;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/dropbox/client2/exception/DropboxException;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method
