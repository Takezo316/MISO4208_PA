.class public Lme/kuehle/carreport/util/backup/Dropbox;
.super Ljava/lang/Object;
.source "Dropbox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kuehle/carreport/util/backup/Dropbox$OnSynchronizeListener;,
        Lme/kuehle/carreport/util/backup/Dropbox$OnAuthenticationFinishedListener;
    }
.end annotation


# static fields
.field private static final ACCESS_TYPE:Lcom/dropbox/client2/session/Session$AccessType;

.field private static final APP_KEY:Ljava/lang/String; = "a6edub2n9b029if"

.field private static final APP_SECRET:Ljava/lang/String; = "1cw56rcn1bbnb7f"

.field public static final SYNC_DOWNLOAD:I = 0x2

.field public static final SYNC_NORMAL:I = 0x1

.field public static final SYNC_UPLOAD:I = 0x3

.field private static instance:Lme/kuehle/carreport/util/backup/Dropbox;


# instance fields
.field private context:Landroid/content/Context;

.field private mDBApi:Lcom/dropbox/client2/DropboxAPI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/client2/DropboxAPI",
            "<",
            "Lcom/dropbox/client2/android/AndroidAuthSession;",
            ">;"
        }
    .end annotation
.end field

.field private synchronisationCallback:Lme/kuehle/carreport/util/backup/Dropbox$OnSynchronizeListener;

.field private synchronisationInProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/dropbox/client2/session/Session$AccessType;->APP_FOLDER:Lcom/dropbox/client2/session/Session$AccessType;

    sput-object v0, Lme/kuehle/carreport/util/backup/Dropbox;->ACCESS_TYPE:Lcom/dropbox/client2/session/Session$AccessType;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v3, 0x0

    iput-boolean v3, p0, Lme/kuehle/carreport/util/backup/Dropbox;->synchronisationInProgress:Z

    .line 78
    iput-object p1, p0, Lme/kuehle/carreport/util/backup/Dropbox;->context:Landroid/content/Context;

    .line 80
    new-instance v0, Lcom/dropbox/client2/session/AppKeyPair;

    const-string v3, "a6edub2n9b029if"

    const-string v4, "1cw56rcn1bbnb7f"

    invoke-direct {v0, v3, v4}, Lcom/dropbox/client2/session/AppKeyPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .local v0, "appKeys":Lcom/dropbox/client2/session/AppKeyPair;
    new-instance v1, Lcom/dropbox/client2/android/AndroidAuthSession;

    sget-object v3, Lme/kuehle/carreport/util/backup/Dropbox;->ACCESS_TYPE:Lcom/dropbox/client2/session/Session$AccessType;

    invoke-direct {v1, v0, v3}, Lcom/dropbox/client2/android/AndroidAuthSession;-><init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/Session$AccessType;)V

    .line 83
    .local v1, "session":Lcom/dropbox/client2/android/AndroidAuthSession;
    invoke-direct {p0}, Lme/kuehle/carreport/util/backup/Dropbox;->loadAccessTokens()Lcom/dropbox/client2/session/AccessTokenPair;

    move-result-object v2

    .line 84
    .local v2, "tokens":Lcom/dropbox/client2/session/AccessTokenPair;
    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {v1, v2}, Lcom/dropbox/client2/android/AndroidAuthSession;->setAccessTokenPair(Lcom/dropbox/client2/session/AccessTokenPair;)V

    .line 88
    :cond_0
    new-instance v3, Lcom/dropbox/client2/DropboxAPI;

    invoke-direct {v3, v1}, Lcom/dropbox/client2/DropboxAPI;-><init>(Lcom/dropbox/client2/session/Session;)V

    iput-object v3, p0, Lme/kuehle/carreport/util/backup/Dropbox;->mDBApi:Lcom/dropbox/client2/DropboxAPI;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lme/kuehle/carreport/util/backup/Dropbox;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/util/backup/Dropbox;

    .prologue
    .line 41
    invoke-direct {p0}, Lme/kuehle/carreport/util/backup/Dropbox;->loadAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lme/kuehle/carreport/util/backup/Dropbox;)Lcom/dropbox/client2/DropboxAPI;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/util/backup/Dropbox;

    .prologue
    .line 41
    iget-object v0, p0, Lme/kuehle/carreport/util/backup/Dropbox;->mDBApi:Lcom/dropbox/client2/DropboxAPI;

    return-object v0
.end method

.method static synthetic access$200(Lme/kuehle/carreport/util/backup/Dropbox;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/util/backup/Dropbox;

    .prologue
    .line 41
    iget-object v0, p0, Lme/kuehle/carreport/util/backup/Dropbox;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lme/kuehle/carreport/util/backup/Dropbox;Z)Z
    .locals 0
    .param p0, "x0"    # Lme/kuehle/carreport/util/backup/Dropbox;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lme/kuehle/carreport/util/backup/Dropbox;->synchronisationInProgress:Z

    return p1
.end method

.method static synthetic access$400(Lme/kuehle/carreport/util/backup/Dropbox;)Lme/kuehle/carreport/util/backup/Dropbox$OnSynchronizeListener;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/util/backup/Dropbox;

    .prologue
    .line 41
    iget-object v0, p0, Lme/kuehle/carreport/util/backup/Dropbox;->synchronisationCallback:Lme/kuehle/carreport/util/backup/Dropbox$OnSynchronizeListener;

    return-object v0
.end method

.method public static getInstance()Lme/kuehle/carreport/util/backup/Dropbox;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lme/kuehle/carreport/util/backup/Dropbox;->instance:Lme/kuehle/carreport/util/backup/Dropbox;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    new-instance v0, Lme/kuehle/carreport/util/backup/Dropbox;

    invoke-direct {v0, p0}, Lme/kuehle/carreport/util/backup/Dropbox;-><init>(Landroid/content/Context;)V

    sput-object v0, Lme/kuehle/carreport/util/backup/Dropbox;->instance:Lme/kuehle/carreport/util/backup/Dropbox;

    .line 69
    return-void
.end method

.method private loadAccessTokens()Lcom/dropbox/client2/session/AccessTokenPair;
    .locals 4

    .prologue
    .line 288
    new-instance v1, Lme/kuehle/carreport/Preferences;

    iget-object v3, p0, Lme/kuehle/carreport/util/backup/Dropbox;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Lme/kuehle/carreport/Preferences;-><init>(Landroid/content/Context;)V

    .line 289
    .local v1, "prefs":Lme/kuehle/carreport/Preferences;
    invoke-virtual {v1}, Lme/kuehle/carreport/Preferences;->getDropboxKey()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v1}, Lme/kuehle/carreport/Preferences;->getDropboxSecret()Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, "secret":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 292
    new-instance v3, Lcom/dropbox/client2/session/AccessTokenPair;

    invoke-direct {v3, v0, v2}, Lcom/dropbox/client2/session/AccessTokenPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private loadAccountName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 299
    const/4 v0, 0x0

    .line 301
    .local v0, "accountName":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lme/kuehle/carreport/util/backup/Dropbox;->mDBApi:Lcom/dropbox/client2/DropboxAPI;

    invoke-virtual {v3}, Lcom/dropbox/client2/DropboxAPI;->accountInfo()Lcom/dropbox/client2/DropboxAPI$Account;

    move-result-object v3

    iget-object v0, v3, Lcom/dropbox/client2/DropboxAPI$Account;->displayName:Ljava/lang/String;
    :try_end_0
    .catch Lcom/dropbox/client2/exception/DropboxUnlinkedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dropbox/client2/exception/DropboxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 308
    :goto_0
    new-instance v2, Lme/kuehle/carreport/Preferences;

    iget-object v3, p0, Lme/kuehle/carreport/util/backup/Dropbox;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lme/kuehle/carreport/Preferences;-><init>(Landroid/content/Context;)V

    .line 309
    .local v2, "prefs":Lme/kuehle/carreport/Preferences;
    invoke-virtual {v2, v0}, Lme/kuehle/carreport/Preferences;->setDropboxAccount(Ljava/lang/String;)V

    .line 310
    return-object v0

    .line 302
    .end local v2    # "prefs":Lme/kuehle/carreport/Preferences;
    :catch_0
    move-exception v1

    .line 303
    .local v1, "e":Lcom/dropbox/client2/exception/DropboxUnlinkedException;
    invoke-virtual {p0}, Lme/kuehle/carreport/util/backup/Dropbox;->unlink()V

    goto :goto_0

    .line 304
    .end local v1    # "e":Lcom/dropbox/client2/exception/DropboxUnlinkedException;
    :catch_1
    move-exception v1

    .line 305
    .local v1, "e":Lcom/dropbox/client2/exception/DropboxException;
    const-string v0, "- could not load account name -"

    goto :goto_0
.end method

.method private saveAccessTokens(Lcom/dropbox/client2/session/AccessTokenPair;)V
    .locals 2
    .param p1, "tokens"    # Lcom/dropbox/client2/session/AccessTokenPair;

    .prologue
    .line 314
    new-instance v0, Lme/kuehle/carreport/Preferences;

    iget-object v1, p0, Lme/kuehle/carreport/util/backup/Dropbox;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lme/kuehle/carreport/Preferences;-><init>(Landroid/content/Context;)V

    .line 315
    .local v0, "prefs":Lme/kuehle/carreport/Preferences;
    iget-object v1, p1, Lcom/dropbox/client2/session/AccessTokenPair;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lme/kuehle/carreport/Preferences;->setDropboxKey(Ljava/lang/String;)V

    .line 316
    iget-object v1, p1, Lcom/dropbox/client2/session/AccessTokenPair;->secret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lme/kuehle/carreport/Preferences;->setDropboxSecret(Ljava/lang/String;)V

    .line 317
    return-void
.end method


# virtual methods
.method public finishAuthentication(Lme/kuehle/carreport/util/backup/Dropbox$OnAuthenticationFinishedListener;)V
    .locals 5
    .param p1, "callback"    # Lme/kuehle/carreport/util/backup/Dropbox$OnAuthenticationFinishedListener;

    .prologue
    const/4 v4, 0x0

    .line 93
    iget-object v2, p0, Lme/kuehle/carreport/util/backup/Dropbox;->mDBApi:Lcom/dropbox/client2/DropboxAPI;

    invoke-virtual {v2}, Lcom/dropbox/client2/DropboxAPI;->getSession()Lcom/dropbox/client2/session/Session;

    move-result-object v2

    check-cast v2, Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-virtual {v2}, Lcom/dropbox/client2/android/AndroidAuthSession;->authenticationSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    :try_start_0
    iget-object v2, p0, Lme/kuehle/carreport/util/backup/Dropbox;->mDBApi:Lcom/dropbox/client2/DropboxAPI;

    invoke-virtual {v2}, Lcom/dropbox/client2/DropboxAPI;->getSession()Lcom/dropbox/client2/session/Session;

    move-result-object v2

    check-cast v2, Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-virtual {v2}, Lcom/dropbox/client2/android/AndroidAuthSession;->finishAuthentication()Ljava/lang/String;

    .line 96
    iget-object v2, p0, Lme/kuehle/carreport/util/backup/Dropbox;->mDBApi:Lcom/dropbox/client2/DropboxAPI;

    invoke-virtual {v2}, Lcom/dropbox/client2/DropboxAPI;->getSession()Lcom/dropbox/client2/session/Session;

    move-result-object v2

    check-cast v2, Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-virtual {v2}, Lcom/dropbox/client2/android/AndroidAuthSession;->getAccessTokenPair()Lcom/dropbox/client2/session/AccessTokenPair;

    move-result-object v1

    .line 98
    .local v1, "tokens":Lcom/dropbox/client2/session/AccessTokenPair;
    invoke-direct {p0, v1}, Lme/kuehle/carreport/util/backup/Dropbox;->saveAccessTokens(Lcom/dropbox/client2/session/AccessTokenPair;)V

    .line 100
    new-instance v2, Lme/kuehle/carreport/util/backup/Dropbox$1;

    invoke-direct {v2, p0, p1}, Lme/kuehle/carreport/util/backup/Dropbox$1;-><init>(Lme/kuehle/carreport/util/backup/Dropbox;Lme/kuehle/carreport/util/backup/Dropbox$OnAuthenticationFinishedListener;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lme/kuehle/carreport/util/backup/Dropbox$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v1    # "tokens":Lcom/dropbox/client2/session/AccessTokenPair;
    :cond_0
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/IllegalStateException;
    const/4 v2, 0x0

    invoke-interface {p1, v4, v2, v4}, Lme/kuehle/carreport/util/backup/Dropbox$OnAuthenticationFinishedListener;->authenticationFinished(ZLjava/lang/String;Z)V

    goto :goto_0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Lme/kuehle/carreport/Preferences;

    iget-object v1, p0, Lme/kuehle/carreport/util/backup/Dropbox;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lme/kuehle/carreport/Preferences;-><init>(Landroid/content/Context;)V

    .line 149
    .local v0, "prefs":Lme/kuehle/carreport/Preferences;
    invoke-virtual {v0}, Lme/kuehle/carreport/Preferences;->getDropboxAccount()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isLinked()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lme/kuehle/carreport/util/backup/Dropbox;->mDBApi:Lcom/dropbox/client2/DropboxAPI;

    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI;->getSession()Lcom/dropbox/client2/session/Session;

    move-result-object v0

    check-cast v0, Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-virtual {v0}, Lcom/dropbox/client2/android/AndroidAuthSession;->isLinked()Z

    move-result v0

    return v0
.end method

.method public isSynchronisationInProgress()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lme/kuehle/carreport/util/backup/Dropbox;->synchronisationInProgress:Z

    return v0
.end method

.method public setSynchronisationCallback(Lme/kuehle/carreport/util/backup/Dropbox$OnSynchronizeListener;)V
    .locals 1
    .param p1, "callback"    # Lme/kuehle/carreport/util/backup/Dropbox$OnSynchronizeListener;

    .prologue
    .line 161
    iput-object p1, p0, Lme/kuehle/carreport/util/backup/Dropbox;->synchronisationCallback:Lme/kuehle/carreport/util/backup/Dropbox$OnSynchronizeListener;

    .line 162
    iget-object v0, p0, Lme/kuehle/carreport/util/backup/Dropbox;->synchronisationCallback:Lme/kuehle/carreport/util/backup/Dropbox$OnSynchronizeListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lme/kuehle/carreport/util/backup/Dropbox;->synchronisationInProgress:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lme/kuehle/carreport/util/backup/Dropbox;->synchronisationCallback:Lme/kuehle/carreport/util/backup/Dropbox$OnSynchronizeListener;

    invoke-interface {v0}, Lme/kuehle/carreport/util/backup/Dropbox$OnSynchronizeListener;->synchronizationStarted()V

    .line 165
    :cond_0
    return-void
.end method

.method public startAuthentication(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    iget-object v0, p0, Lme/kuehle/carreport/util/backup/Dropbox;->mDBApi:Lcom/dropbox/client2/DropboxAPI;

    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI;->getSession()Lcom/dropbox/client2/session/Session;

    move-result-object v0

    check-cast v0, Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-virtual {v0, p1}, Lcom/dropbox/client2/android/AndroidAuthSession;->startAuthentication(Landroid/content/Context;)V

    .line 169
    return-void
.end method

.method public synchronize()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lme/kuehle/carreport/util/backup/Dropbox;->synchronize(I)V

    .line 173
    return-void
.end method

.method public synchronize(I)V
    .locals 4
    .param p1, "option"    # I

    .prologue
    const/4 v1, 0x1

    .line 176
    iget-boolean v0, p0, Lme/kuehle/carreport/util/backup/Dropbox;->synchronisationInProgress:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lme/kuehle/carreport/util/backup/Dropbox;->isLinked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iput-boolean v1, p0, Lme/kuehle/carreport/util/backup/Dropbox;->synchronisationInProgress:Z

    .line 181
    new-instance v0, Lme/kuehle/carreport/util/backup/Dropbox$2;

    invoke-direct {v0, p0}, Lme/kuehle/carreport/util/backup/Dropbox$2;-><init>(Lme/kuehle/carreport/util/backup/Dropbox;)V

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lme/kuehle/carreport/util/backup/Dropbox$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public unlink()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 280
    iget-object v1, p0, Lme/kuehle/carreport/util/backup/Dropbox;->mDBApi:Lcom/dropbox/client2/DropboxAPI;

    invoke-virtual {v1}, Lcom/dropbox/client2/DropboxAPI;->getSession()Lcom/dropbox/client2/session/Session;

    move-result-object v1

    check-cast v1, Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-virtual {v1}, Lcom/dropbox/client2/android/AndroidAuthSession;->unlink()V

    .line 281
    new-instance v0, Lme/kuehle/carreport/Preferences;

    iget-object v1, p0, Lme/kuehle/carreport/util/backup/Dropbox;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lme/kuehle/carreport/Preferences;-><init>(Landroid/content/Context;)V

    .line 282
    .local v0, "prefs":Lme/kuehle/carreport/Preferences;
    invoke-virtual {v0, v2}, Lme/kuehle/carreport/Preferences;->setDropboxAccount(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0, v2}, Lme/kuehle/carreport/Preferences;->setDropboxKey(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0, v2}, Lme/kuehle/carreport/Preferences;->setDropboxSecret(Ljava/lang/String;)V

    .line 285
    return-void
.end method
