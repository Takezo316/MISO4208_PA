.class abstract Lme/kuehle/carreport/gui/HelpActivity$HelpFragment;
.super Landroid/app/Fragment;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/gui/HelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "HelpFragment"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/kuehle/carreport/gui/HelpActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lme/kuehle/carreport/gui/HelpActivity$1;

    .prologue
    .line 62
    invoke-direct {p0}, Lme/kuehle/carreport/gui/HelpActivity$HelpFragment;-><init>()V

    return-void
.end method

.method private getLocale()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 87
    new-array v0, v5, [Ljava/lang/String;

    const-string v2, "de"

    aput-object v2, v0, v4

    const/4 v2, 0x1

    const-string v3, "en"

    aput-object v3, v0, v2

    .line 88
    .local v0, "availableLocales":[Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "locale":Ljava/lang/String;
    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    .line 91
    aget-object v1, v0, v4

    .line 93
    .end local v1    # "locale":Ljava/lang/String;
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected abstract getHelpId()I
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 66
    const v3, 0x7f03000d

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 69
    .local v2, "v":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/HelpActivity$HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "help-%d-%s.html"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/HelpActivity$HelpFragment;->getHelpId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-direct {p0}, Lme/kuehle/carreport/gui/HelpActivity$HelpFragment;->getLocale()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 74
    .local v1, "in":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    .line 75
    .local v0, "buffer":[B
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 76
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 77
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0    # "buffer":[B
    .end local v1    # "in":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 78
    :catch_0
    move-exception v3

    goto :goto_0
.end method
