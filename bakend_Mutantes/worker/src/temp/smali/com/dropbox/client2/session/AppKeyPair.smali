.class public final Lcom/dropbox/client2/session/AppKeyPair;
.super Lcom/dropbox/client2/session/TokenPair;
.source "AppKeyPair.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "secret"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/dropbox/client2/session/TokenPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method
