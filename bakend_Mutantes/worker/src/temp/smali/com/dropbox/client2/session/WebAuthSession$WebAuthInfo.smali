.class public final Lcom/dropbox/client2/session/WebAuthSession$WebAuthInfo;
.super Ljava/lang/Object;
.source "WebAuthSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/client2/session/WebAuthSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WebAuthInfo"
.end annotation


# instance fields
.field public final requestTokenPair:Lcom/dropbox/client2/session/RequestTokenPair;

.field public final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/dropbox/client2/session/RequestTokenPair;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "requestTokenPair"    # Lcom/dropbox/client2/session/RequestTokenPair;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/dropbox/client2/session/WebAuthSession$WebAuthInfo;->url:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/dropbox/client2/session/WebAuthSession$WebAuthInfo;->requestTokenPair:Lcom/dropbox/client2/session/RequestTokenPair;

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/dropbox/client2/session/RequestTokenPair;Lcom/dropbox/client2/session/WebAuthSession$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/dropbox/client2/session/RequestTokenPair;
    .param p3, "x2"    # Lcom/dropbox/client2/session/WebAuthSession$1;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/dropbox/client2/session/WebAuthSession$WebAuthInfo;-><init>(Ljava/lang/String;Lcom/dropbox/client2/session/RequestTokenPair;)V

    return-void
.end method
