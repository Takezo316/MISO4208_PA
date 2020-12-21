.class public final Lcom/dropbox/client2/DropboxAPI$DeltaEntry;
.super Ljava/lang/Object;
.source "DropboxAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/client2/DropboxAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeltaEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/client2/DropboxAPI$DeltaEntry$JsonExtractor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MD:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final lcPath:Ljava/lang/String;

.field public final metadata:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMD;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "lcPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TMD;)V"
        }
    .end annotation

    .prologue
    .line 2349
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI$DeltaEntry;, "Lcom/dropbox/client2/DropboxAPI$DeltaEntry<TMD;>;"
    .local p2, "metadata":Ljava/lang/Object;, "TMD;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2350
    iput-object p1, p0, Lcom/dropbox/client2/DropboxAPI$DeltaEntry;->lcPath:Ljava/lang/String;

    .line 2351
    iput-object p2, p0, Lcom/dropbox/client2/DropboxAPI$DeltaEntry;->metadata:Ljava/lang/Object;

    .line 2352
    return-void
.end method
