.class public Lcom/dropbox/client2/android/AuthActivity;
.super Landroid/app/Activity;
.source "AuthActivity.java"


# static fields
.field public static final ACTION_AUTHENTICATE_V1:Ljava/lang/String; = "com.dropbox.android.AUTHENTICATE_V1"

.field public static final AUTH_VERSION:I = 0x1

.field private static final DROPBOX_APP_SIGNATURES:[Ljava/lang/String;

.field public static final EXTRA_ACCESS_SECRET:Ljava/lang/String; = "ACCESS_SECRET"

.field public static final EXTRA_ACCESS_TOKEN:Ljava/lang/String; = "ACCESS_TOKEN"

.field public static final EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "CALLING_PACKAGE"

.field public static final EXTRA_CONSUMER_KEY:Ljava/lang/String; = "CONSUMER_KEY"

.field public static final EXTRA_CONSUMER_SIG:Ljava/lang/String; = "CONSUMER_SIG"

.field static final EXTRA_INTERNAL_CONSUMER_KEY:Ljava/lang/String; = "EXTRA_INTERNAL_CONSUMER_KEY"

.field static final EXTRA_INTERNAL_CONSUMER_SECRET:Ljava/lang/String; = "EXTRA_INTERNAL_CONSUMER_SECRET"

.field public static final EXTRA_UID:Ljava/lang/String; = "UID"

.field static lastResult:Landroid/content/Intent;


# instance fields
.field private consumerKey:Ljava/lang/String;

.field private consumerSecret:Ljava/lang/String;

.field private gotNewIntent:Z

.field private hasDelegated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/dropbox/client2/android/AuthActivity;->lastResult:Landroid/content/Intent;

    .line 249
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "308202223082018b02044bd207bd300d06092a864886f70d01010405003058310b3009060355040613025553310b3009060355040813024341311630140603550407130d53616e204672616e636973636f3110300e060355040a130744726f70626f783112301006035504031309546f6d204d65796572301e170d3130303432333230343930315a170d3430303431353230343930315a3058310b3009060355040613025553310b3009060355040813024341311630140603550407130d53616e204672616e636973636f3110300e060355040a130744726f70626f783112301006035504031309546f6d204d6579657230819f300d06092a864886f70d010101050003818d0030818902818100ac1595d0ab278a9577f0ca5a14144f96eccde75f5616f36172c562fab0e98c48ad7d64f1091c6cc11ce084a4313d522f899378d312e112a748827545146a779defa7c31d8c00c2ed73135802f6952f59798579859e0214d4e9c0554b53b26032a4d2dfc2f62540d776df2ea70e2a6152945fb53fef5bac5344251595b729d4810203010001300d06092a864886f70d01010405000381810055c425d94d036153203dc0bbeb3516f94563b102fff39c3d4ed91278db24fc4424a244c2e59f03bbfea59404512b8bf74662f2a32e37eafa2ac904c31f99cfc21c9ff375c977c432d3b6ec22776f28767d0f292144884538c3d5669b568e4254e4ed75d9054f75229ac9d4ccd0b7c3c74a34f07b7657083b2aa76225c0c56ffc"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "308201e53082014ea00302010202044e17e115300d06092a864886f70d01010505003037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f6964204465627567301e170d3131303730393035303331375a170d3431303730313035303331375a3037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f696420446562756730819f300d06092a864886f70d010101050003818d003081890281810096759fe5abea6a0757039b92adc68d672efa84732c3f959408e12efa264545c61f23141026a6d01eceeeaa13ec7087087e5894a3363da8bf5c69ed93657a6890738a80998e4ca22dc94848f30e2d0e1890000ae2cddf543b20c0c3828deca6c7944b5ecd21a9d18c988b2b3e54517dafbc34b48e801bb1321e0fa49e4d575d7f0203010001300d06092a864886f70d0101050500038181002b6d4b65bcfa6ec7bac97ae6d878064d47b3f9f8da654995b8ef4c385bc4fbfbb7a987f60783ef0348760c0708acd4b7e63f0235c35a4fbcd5ec41b3b4cb295feaa7d5c27fa562a02562b7e1f4776b85147be3e295714986c4a9a07183f48ea09ae4d3ea31b88d0016c65b93526b9c45f2967c3d28dee1aff5a5b29b9c2c8639"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/client2/android/AuthActivity;->DROPBOX_APP_SIGNATURES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    iput-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->consumerKey:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->consumerSecret:Ljava/lang/String;

    .line 79
    iput-boolean v0, p0, Lcom/dropbox/client2/android/AuthActivity;->hasDelegated:Z

    .line 80
    iput-boolean v0, p0, Lcom/dropbox/client2/android/AuthActivity;->gotNewIntent:Z

    return-void
.end method

.method private getConsumerSig()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 188
    const/4 v1, 0x0

    .line 190
    .local v1, "m":Ljava/security/MessageDigest;
    :try_start_0
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 192
    :goto_0
    iget-object v3, p0, Lcom/dropbox/client2/android/AuthActivity;->consumerSecret:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iget-object v4, p0, Lcom/dropbox/client2/android/AuthActivity;->consumerSecret:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 193
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-direct {v0, v6, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 194
    .local v0, "i":Ljava/math/BigInteger;
    const-string v3, "%1$040X"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "s":Ljava/lang/String;
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 191
    .end local v0    # "i":Ljava/math/BigInteger;
    .end local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private hasDropboxApp(Landroid/content/Intent;)Z
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/dropbox/client2/android/AuthActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 201
    .local v8, "manager":Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    invoke-virtual {v8, p1, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_0

    .line 204
    const/4 v12, 0x0

    .line 231
    :goto_0
    return v12

    .line 208
    :cond_0
    const/4 v12, 0x0

    invoke-virtual {v8, p1, v12}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 209
    .local v10, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v10, :cond_1

    .line 210
    const/4 v12, 0x0

    goto :goto_0

    .line 215
    :cond_1
    :try_start_0
    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v13, 0x40

    invoke-virtual {v8, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 222
    .local v9, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v11, v0, v5

    .line 223
    .local v11, "signature":Landroid/content/pm/Signature;
    sget-object v1, Lcom/dropbox/client2/android/AuthActivity;->DROPBOX_APP_SIGNATURES:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v7, :cond_3

    aget-object v2, v1, v4

    .line 224
    .local v2, "dbSignature":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 225
    const/4 v12, 0x1

    goto :goto_0

    .line 218
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "dbSignature":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .end local v9    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v11    # "signature":Landroid/content/pm/Signature;
    :catch_0
    move-exception v3

    .line 219
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v12, 0x0

    goto :goto_0

    .line 223
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "dbSignature":Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v7    # "len$":I
    .restart local v9    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v11    # "signature":Landroid/content/pm/Signature;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 222
    .end local v2    # "dbSignature":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_1

    .line 231
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v7    # "len$":I
    .end local v11    # "signature":Landroid/content/pm/Signature;
    :cond_4
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private startWebAuth()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 235
    const-string v2, "/connect"

    .line 237
    .local v2, "path":Ljava/lang/String;
    const/4 v4, 0x4

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "k"

    aput-object v5, v1, v4

    iget-object v4, p0, Lcom/dropbox/client2/android/AuthActivity;->consumerKey:Ljava/lang/String;

    aput-object v4, v1, v6

    const/4 v4, 0x2

    const-string v5, "s"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    invoke-direct {p0}, Lcom/dropbox/client2/android/AuthActivity;->getConsumerSig()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 242
    .local v1, "params":[Ljava/lang/String;
    const-string v4, "www.dropbox.com"

    invoke-static {v4, v6, v2, v1}, Lcom/dropbox/client2/RESTUtility;->buildURL(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, "url":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 246
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/dropbox/client2/android/AuthActivity;->startActivity(Landroid/content/Intent;)V

    .line 247
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .line 85
    const-string v1, "consumerKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->consumerKey:Ljava/lang/String;

    .line 86
    const-string v1, "consumerSecret"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->consumerSecret:Ljava/lang/String;

    .line 87
    const-string v1, "hasDelegated"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/dropbox/client2/android/AuthActivity;->hasDelegated:Z

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->consumerKey:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/dropbox/client2/android/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 92
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EXTRA_INTERNAL_CONSUMER_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->consumerKey:Ljava/lang/String;

    .line 93
    const-string v1, "EXTRA_INTERNAL_CONSUMER_SECRET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->consumerSecret:Ljava/lang/String;

    .line 96
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const v1, 0x1030010

    invoke-virtual {p0, v1}, Lcom/dropbox/client2/android/AuthActivity;->setTheme(I)V

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 150
    const/4 v2, 0x0

    .local v2, "token":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "secret":Ljava/lang/String;
    const/4 v3, 0x0

    .line 152
    .local v3, "uid":Ljava/lang/String;
    const-string v5, "ACCESS_TOKEN"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 154
    const-string v5, "ACCESS_TOKEN"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 155
    const-string v5, "ACCESS_SECRET"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    const-string v5, "UID"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 173
    :cond_0
    :goto_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    sput-object v5, Lcom/dropbox/client2/android/AuthActivity;->lastResult:Landroid/content/Intent;

    .line 174
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

    if-eqz v3, :cond_1

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 178
    sget-object v5, Lcom/dropbox/client2/android/AuthActivity;->lastResult:Landroid/content/Intent;

    const-string v6, "ACCESS_TOKEN"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    sget-object v5, Lcom/dropbox/client2/android/AuthActivity;->lastResult:Landroid/content/Intent;

    const-string v6, "ACCESS_SECRET"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    sget-object v5, Lcom/dropbox/client2/android/AuthActivity;->lastResult:Landroid/content/Intent;

    const-string v6, "UID"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/dropbox/client2/android/AuthActivity;->gotNewIntent:Z

    .line 184
    invoke-virtual {p0}, Lcom/dropbox/client2/android/AuthActivity;->finish()V

    .line 185
    return-void

    .line 159
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 160
    .local v4, "uri":Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 161
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "path":Ljava/lang/String;
    const-string v5, "/connect"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 164
    :try_start_0
    const-string v5, "oauth_token"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    const-string v5, "oauth_token_secret"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    const-string v5, "uid"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 167
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 114
    iget-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->consumerKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->consumerSecret:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/dropbox/client2/android/AuthActivity;->finish()V

    .line 146
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    iget-boolean v1, p0, Lcom/dropbox/client2/android/AuthActivity;->hasDelegated:Z

    if-nez v1, :cond_4

    .line 121
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 122
    .local v0, "officialIntent":Landroid/content/Intent;
    const-string v1, "com.dropbox.android"

    const-string v2, "com.dropbox.android.activity.auth.DropboxAuth"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v1, "com.dropbox.android.AUTHENTICATE_V1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v1, "CONSUMER_KEY"

    iget-object v2, p0, Lcom/dropbox/client2/android/AuthActivity;->consumerKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v1, "CONSUMER_SIG"

    invoke-direct {p0}, Lcom/dropbox/client2/android/AuthActivity;->getConsumerSig()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v1, "CALLING_PACKAGE"

    invoke-virtual {p0}, Lcom/dropbox/client2/android/AuthActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    invoke-direct {p0, v0}, Lcom/dropbox/client2/android/AuthActivity;->hasDropboxApp(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 131
    invoke-virtual {p0, v0}, Lcom/dropbox/client2/android/AuthActivity;->startActivity(Landroid/content/Intent;)V

    .line 136
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dropbox/client2/android/AuthActivity;->hasDelegated:Z

    goto :goto_0

    .line 133
    :cond_3
    invoke-direct {p0}, Lcom/dropbox/client2/android/AuthActivity;->startWebAuth()V

    goto :goto_1

    .line 137
    .end local v0    # "officialIntent":Landroid/content/Intent;
    :cond_4
    iget-boolean v1, p0, Lcom/dropbox/client2/android/AuthActivity;->gotNewIntent:Z

    if-nez v1, :cond_1

    .line 142
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sput-object v1, Lcom/dropbox/client2/android/AuthActivity;->lastResult:Landroid/content/Intent;

    .line 143
    invoke-virtual {p0}, Lcom/dropbox/client2/android/AuthActivity;->finish()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 105
    const-string v0, "consumerKey"

    iget-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->consumerKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, "consumerSecret"

    iget-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->consumerSecret:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "hasDelegated"

    iget-boolean v1, p0, Lcom/dropbox/client2/android/AuthActivity;->hasDelegated:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    return-void
.end method
