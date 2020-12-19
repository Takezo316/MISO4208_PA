.class public Lcom/dropbox/client2/DropboxAPI$Account;
.super Ljava/lang/Object;
.source "DropboxAPI.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/client2/DropboxAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Account"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1d1be5b63d0357f4L


# instance fields
.field public final country:Ljava/lang/String;

.field public final displayName:Ljava/lang/String;

.field public final quota:J

.field public final quotaNormal:J

.field public final quotaShared:J

.field public final referralLink:Ljava/lang/String;

.field public final uid:J


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJJ)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "referralLink"    # Ljava/lang/String;
    .param p6, "quota"    # J
    .param p8, "quotaNormal"    # J
    .param p10, "quotaShared"    # J

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/dropbox/client2/DropboxAPI$Account;->country:Ljava/lang/String;

    .line 173
    iput-object p2, p0, Lcom/dropbox/client2/DropboxAPI$Account;->displayName:Ljava/lang/String;

    .line 174
    iput-wide p3, p0, Lcom/dropbox/client2/DropboxAPI$Account;->uid:J

    .line 175
    iput-object p5, p0, Lcom/dropbox/client2/DropboxAPI$Account;->referralLink:Ljava/lang/String;

    .line 176
    iput-wide p6, p0, Lcom/dropbox/client2/DropboxAPI$Account;->quota:J

    .line 177
    iput-wide p8, p0, Lcom/dropbox/client2/DropboxAPI$Account;->quotaNormal:J

    .line 178
    iput-wide p10, p0, Lcom/dropbox/client2/DropboxAPI$Account;->quotaShared:J

    .line 179
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const-string v2, "country"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/dropbox/client2/DropboxAPI$Account;->country:Ljava/lang/String;

    .line 154
    const-string v2, "display_name"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/dropbox/client2/DropboxAPI$Account;->displayName:Ljava/lang/String;

    .line 155
    const-string v2, "uid"

    invoke-static {p1, v2}, Lcom/dropbox/client2/DropboxAPI;->getFromMapAsLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dropbox/client2/DropboxAPI$Account;->uid:J

    .line 156
    const-string v2, "referral_link"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/dropbox/client2/DropboxAPI$Account;->referralLink:Ljava/lang/String;

    .line 158
    const-string v2, "quota_info"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "quotaInfo":Ljava/lang/Object;
    move-object v1, v0

    .line 160
    check-cast v1, Ljava/util/Map;

    .line 161
    .local v1, "quotamap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "quota"

    invoke-static {v1, v2}, Lcom/dropbox/client2/DropboxAPI;->getFromMapAsLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dropbox/client2/DropboxAPI$Account;->quota:J

    .line 162
    const-string v2, "normal"

    invoke-static {v1, v2}, Lcom/dropbox/client2/DropboxAPI;->getFromMapAsLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dropbox/client2/DropboxAPI$Account;->quotaNormal:J

    .line 163
    const-string v2, "shared"

    invoke-static {v1, v2}, Lcom/dropbox/client2/DropboxAPI;->getFromMapAsLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dropbox/client2/DropboxAPI$Account;->quotaShared:J

    .line 164
    return-void
.end method
