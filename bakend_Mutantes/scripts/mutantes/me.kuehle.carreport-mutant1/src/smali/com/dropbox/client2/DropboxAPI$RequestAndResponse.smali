.class public final Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;
.super Ljava/lang/Object;
.source "DropboxAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/client2/DropboxAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestAndResponse"
.end annotation


# instance fields
.field public final request:Lorg/apache/http/client/methods/HttpUriRequest;

.field public final response:Lorg/apache/http/HttpResponse;


# direct methods
.method protected constructor <init>(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)V
    .locals 0
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 1109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1110
    iput-object p1, p0, Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 1111
    iput-object p2, p0, Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;->response:Lorg/apache/http/HttpResponse;

    .line 1112
    return-void
.end method
