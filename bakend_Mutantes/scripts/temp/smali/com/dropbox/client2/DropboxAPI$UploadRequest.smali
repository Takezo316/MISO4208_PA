.class public interface abstract Lcom/dropbox/client2/DropboxAPI$UploadRequest;
.super Ljava/lang/Object;
.source "DropboxAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/client2/DropboxAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UploadRequest"
.end annotation


# virtual methods
.method public abstract abort()V
.end method

.method public abstract upload()Lcom/dropbox/client2/DropboxAPI$Entry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation
.end method
