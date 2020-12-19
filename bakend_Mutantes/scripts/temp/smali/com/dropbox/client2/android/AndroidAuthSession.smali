.class public Lcom/dropbox/client2/android/AndroidAuthSession;
.super Lcom/dropbox/client2/session/AbstractSession;
.source "AndroidAuthSession.java"


# direct methods
.method public constructor <init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/Session$AccessType;)V
    .locals 0
    .param p1, "appKeyPair"    # Lcom/dropbox/client2/session/AppKeyPair;
    .param p2, "type"    # Lcom/dropbox/client2/session/Session$AccessType;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/dropbox/client2/session/AbstractSession;-><init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/Session$AccessType;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/Session$AccessType;Lcom/dropbox/client2/session/AccessTokenPair;)V
    .locals 0
    .param p1, "appKeyPair"    # Lcom/dropbox/client2/session/AppKeyPair;
    .param p2, "type"    # Lcom/dropbox/client2/session/Session$AccessType;
    .param p3, "accessTokenPair"    # Lcom/dropbox/client2/session/AccessTokenPair;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/client2/session/AbstractSession;-><init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/Session$AccessType;Lcom/dropbox/client2/session/AccessTokenPair;)V

    .line 73
    return-void
.end method


# virtual methods
.method public authenticationSuccessful()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 162
    sget-object v0, Lcom/dropbox/client2/android/AuthActivity;->lastResult:Landroid/content/Intent;

    .line 164
    .local v0, "data":Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v4

    .line 168
    :cond_1
    const-string v5, "ACCESS_TOKEN"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "token":Ljava/lang/String;
    const-string v5, "ACCESS_SECRET"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "secret":Ljava/lang/String;
    const-string v5, "UID"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "uid":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v1, :cond_0

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v3, :cond_0

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 175
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public finishAuthentication()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 193
    sget-object v0, Lcom/dropbox/client2/android/AuthActivity;->lastResult:Landroid/content/Intent;

    .line 195
    .local v0, "data":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 196
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 199
    :cond_0
    const-string v5, "ACCESS_TOKEN"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "token":Ljava/lang/String;
    const-string v5, "ACCESS_SECRET"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "secret":Ljava/lang/String;
    const-string v5, "UID"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 203
    .local v4, "uid":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v1, :cond_1

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v4, :cond_1

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 206
    new-instance v3, Lcom/dropbox/client2/session/AccessTokenPair;

    invoke-direct {v3, v2, v1}, Lcom/dropbox/client2/session/AccessTokenPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .local v3, "tokens":Lcom/dropbox/client2/session/AccessTokenPair;
    invoke-virtual {p0, v3}, Lcom/dropbox/client2/android/AndroidAuthSession;->setAccessTokenPair(Lcom/dropbox/client2/session/AccessTokenPair;)V

    .line 208
    return-object v4

    .line 211
    .end local v3    # "tokens":Lcom/dropbox/client2/session/AccessTokenPair;
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5
.end method

.method public startAuthentication(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/dropbox/client2/android/AndroidAuthSession;->getAppKeyPair()Lcom/dropbox/client2/session/AppKeyPair;

    move-result-object v1

    .line 94
    .local v1, "appKeyPair":Lcom/dropbox/client2/session/AppKeyPair;
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v7, "testIntent":Landroid/content/Intent;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "db-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/dropbox/client2/session/AppKeyPair;->key:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 96
    .local v6, "scheme":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/test"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 97
    .local v8, "uri":Ljava/lang/String;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 99
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v5, v7, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 101
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_0

    .line 102
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "URI scheme in your app\'s manifest is not set up correctly. You should have a com.dropbox.client2.android.AuthActivity with the scheme: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 106
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v12, :cond_1

    .line 108
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 109
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    const-string v9, "Security alert"

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 110
    const-string v9, "Another app on your phone may be trying to pose as the app you are currently using. The malicious app cannot access your account, but linking to Dropbox has been disabled as a precaution. Please contact support@dropbox.com."

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 115
    const-string v9, "OK"

    new-instance v10, Lcom/dropbox/client2/android/AndroidAuthSession$1;

    invoke-direct {v10, p0}, Lcom/dropbox/client2/android/AndroidAuthSession$1;-><init>(Lcom/dropbox/client2/android/AndroidAuthSession;)V

    invoke-virtual {v3, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 121
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 154
    .end local v3    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 128
    .local v2, "authPackage":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 129
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "There must be an AuthActivity within your app\'s package registered for your URI scheme ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "). However, it "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "appears that an activity in a different package is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "registered for that scheme instead. If you have "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "multiple apps that all want to use the same access"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "token pair, designate one of them to do "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "authentication and have the other apps launch it "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "and then retrieve the token pair from it."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 142
    :cond_2
    new-instance v4, Landroid/content/Intent;

    const-class v9, Lcom/dropbox/client2/android/AuthActivity;

    invoke-direct {v4, p1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v4, "intent":Landroid/content/Intent;
    const-string v9, "EXTRA_INTERNAL_CONSUMER_KEY"

    iget-object v10, v1, Lcom/dropbox/client2/session/AppKeyPair;->key:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v9, "EXTRA_INTERNAL_CONSUMER_SECRET"

    iget-object v10, v1, Lcom/dropbox/client2/session/AppKeyPair;->secret:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    instance-of v9, p1, Landroid/app/Activity;

    if-nez v9, :cond_3

    .line 151
    const/high16 v9, 0x10000000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    :cond_3
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public unlink()V
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Lcom/dropbox/client2/session/AbstractSession;->unlink()V

    .line 217
    const/4 v0, 0x0

    sput-object v0, Lcom/dropbox/client2/android/AuthActivity;->lastResult:Landroid/content/Intent;

    .line 218
    return-void
.end method
