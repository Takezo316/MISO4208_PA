.class public Lme/kuehle/carreport/Application;
.super Landroid/app/Application;
.source "Application.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 25
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 26
    const-string v0, "org.joda.time.DateTimeZone.Provider"

    const-string v1, "org.joda.time.tz.UTCProvider"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    invoke-static {p0}, Lme/kuehle/carreport/db/Helper;->init(Landroid/content/Context;)V

    .line 29
    invoke-static {p0}, Lme/kuehle/carreport/util/backup/Dropbox;->init(Landroid/content/Context;)V

    .line 31
    new-instance v0, Lme/kuehle/carreport/Preferences;

    invoke-direct {v0, p0}, Lme/kuehle/carreport/Preferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lme/kuehle/carreport/Preferences;->isSyncOnStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lme/kuehle/carreport/util/backup/Dropbox;->getInstance()Lme/kuehle/carreport/util/backup/Dropbox;

    move-result-object v0

    invoke-virtual {v0}, Lme/kuehle/carreport/util/backup/Dropbox;->synchronize()V

    .line 34
    :cond_0
    return-void
.end method
