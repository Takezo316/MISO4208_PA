.class public Lcom/dropbox/client2/session/AccessTokenPair;
.super Lcom/dropbox/client2/session/TokenPair;
.source "AccessTokenPair.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4cb2154426b79e43L


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "secret"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/dropbox/client2/session/TokenPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method