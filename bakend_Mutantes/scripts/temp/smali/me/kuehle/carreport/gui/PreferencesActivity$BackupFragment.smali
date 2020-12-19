.class public Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;
.super Landroid/preference/PreferenceFragment;
.source "PreferencesActivity.java"

# interfaces
.implements Lme/kuehle/carreport/util/gui/MessageDialogFragment$MessageDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/gui/PreferencesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackupFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ImportDialogFragment;,
        Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$ExportDialogFragment;
    }
.end annotation


# static fields
.field private static final BACKUP_OVERWRITE_REQUEST_CODE:I = 0x1

.field private static final DROPBOX_FIRST_SYNC_REQUEST_CODE:I = 0x0

.field private static final RESTORE_REQUEST_CODE:I = 0x2


# instance fields
.field private backup:Lme/kuehle/carreport/util/backup/Backup;

.field private csvExportImport:Lme/kuehle/carreport/util/backup/CSVExportImport;

.field private dropbox:Lme/kuehle/carreport/util/backup/Dropbox;

.field private dropboxAuthenticationInProgress:Z

.field private mBackup:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mExportCSV:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mImportCSV:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mRestore:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mSyncDropbox:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->dropboxAuthenticationInProgress:Z

    .line 218
    new-instance v0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$1;

    invoke-direct {v0, p0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$1;-><init>(Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;)V

    iput-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->mSyncDropbox:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 233
    new-instance v0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$2;

    invoke-direct {v0, p0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$2;-><init>(Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;)V

    iput-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->mBackup:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 251
    new-instance v0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$3;

    invoke-direct {v0, p0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$3;-><init>(Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;)V

    iput-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->mRestore:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 263
    new-instance v0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$4;

    invoke-direct {v0, p0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$4;-><init>(Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;)V

    iput-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->mExportCSV:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 272
    new-instance v0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$5;

    invoke-direct {v0, p0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$5;-><init>(Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;)V

    iput-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->mImportCSV:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method static synthetic access$000(Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;IZ)V
    .locals 0
    .param p0, "x0"    # Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->doExport(IZ)V

    return-void
.end method

.method static synthetic access$100(Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;I)V
    .locals 0
    .param p0, "x0"    # Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;
    .param p1, "x1"    # I

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->doImport(I)V

    return-void
.end method

.method static synthetic access$200(Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;)Lme/kuehle/carreport/util/backup/Dropbox;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;

    .prologue
    .line 140
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->dropbox:Lme/kuehle/carreport/util/backup/Dropbox;

    return-object v0
.end method

.method static synthetic access$300(Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;)V
    .locals 0
    .param p0, "x0"    # Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;

    .prologue
    .line 140
    invoke-direct {p0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->setupDropdoxPreference()V

    return-void
.end method

.method static synthetic access$402(Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->dropboxAuthenticationInProgress:Z

    return p1
.end method

.method static synthetic access$500(Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;)Lme/kuehle/carreport/util/backup/Backup;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;

    .prologue
    .line 140
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->backup:Lme/kuehle/carreport/util/backup/Backup;

    return-object v0
.end method

.method static synthetic access$600(Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;)V
    .locals 0
    .param p0, "x0"    # Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;

    .prologue
    .line 140
    invoke-direct {p0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->doBackup()V

    return-void
.end method

.method static synthetic access$700(Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;)V
    .locals 0
    .param p0, "x0"    # Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;

    .prologue
    .line 140
    invoke-direct {p0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->dropboxFirstSynchronisation()V

    return-void
.end method

.method private doBackup()V
    .locals 6

    .prologue
    .line 377
    sget-object v1, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 378
    :try_start_0
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->backup:Lme/kuehle/carreport/util/backup/Backup;

    invoke-virtual {v0}, Lme/kuehle/carreport/util/backup/Backup;->backup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f090054

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "carreport.backup"

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 384
    invoke-direct {p0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->setupRestorePreference()V

    .line 389
    :goto_0
    monitor-exit v1

    .line 390
    return-void

    .line 386
    :cond_0
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f090055

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private doExport(IZ)V
    .locals 3
    .param p1, "option"    # I
    .param p2, "overwrite"    # Z

    .prologue
    const/4 v2, 0x0

    .line 393
    if-nez p2, :cond_0

    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->csvExportImport:Lme/kuehle/carreport/util/backup/CSVExportImport;

    invoke-virtual {v0, p1}, Lme/kuehle/carreport/util/backup/CSVExportImport;->anyExportFileExist(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090059

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 402
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->csvExportImport:Lme/kuehle/carreport/util/backup/CSVExportImport;

    invoke-virtual {v0, p1}, Lme/kuehle/carreport/util/backup/CSVExportImport;->export(I)Z

    .line 399
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090058

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private doImport(I)V
    .locals 3
    .param p1, "option"    # I

    .prologue
    const/4 v2, 0x0

    .line 405
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->csvExportImport:Lme/kuehle/carreport/util/backup/CSVExportImport;

    invoke-virtual {v0, p1}, Lme/kuehle/carreport/util/backup/CSVExportImport;->canImport(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09005c

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 416
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->csvExportImport:Lme/kuehle/carreport/util/backup/CSVExportImport;

    invoke-virtual {v0, p1}, Lme/kuehle/carreport/util/backup/CSVExportImport;->import_(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09005a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 413
    :cond_1
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09005b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private doRestore()V
    .locals 4

    .prologue
    .line 419
    sget-object v1, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 420
    :try_start_0
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->backup:Lme/kuehle/carreport/util/backup/Backup;

    invoke-virtual {v0}, Lme/kuehle/carreport/util/backup/Backup;->restore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f090056

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 429
    :goto_0
    monitor-exit v1

    .line 430
    return-void

    .line 425
    :cond_0
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f090057

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private dropboxFirstSynchronisation()V
    .locals 6

    .prologue
    .line 433
    const/4 v1, 0x0

    const v0, 0x7f090040

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v0, 0x7f090041

    invoke-virtual {p0, v0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f090042

    const v0, 0x7f090043

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lme/kuehle/carreport/util/gui/MessageDialogFragment;->newInstance(Landroid/app/Fragment;ILjava/lang/Integer;Ljava/lang/String;ILjava/lang/Integer;)Lme/kuehle/carreport/util/gui/MessageDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lme/kuehle/carreport/util/gui/MessageDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method private setupDropdoxPreference()V
    .locals 5

    .prologue
    .line 443
    const-string v1, "sync_dropbox"

    invoke-virtual {p0, v1}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 444
    .local v0, "sync":Landroid/preference/Preference;
    iget-object v1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->mSyncDropbox:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 446
    iget-object v1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->dropbox:Lme/kuehle/carreport/util/backup/Dropbox;

    invoke-virtual {v1}, Lme/kuehle/carreport/util/backup/Dropbox;->isLinked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    const v1, 0x7f090098

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->dropbox:Lme/kuehle/carreport/util/backup/Dropbox;

    invoke-virtual {v4}, Lme/kuehle/carreport/util/backup/Dropbox;->getAccountName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 453
    :goto_0
    return-void

    .line 451
    :cond_0
    const v1, 0x7f090097

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private setupRestorePreference()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 456
    const-string v1, "restore"

    invoke-virtual {p0, v1}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 457
    .local v0, "restore":Landroid/preference/Preference;
    iget-object v1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->backup:Lme/kuehle/carreport/util/backup/Backup;

    invoke-virtual {v1}, Lme/kuehle/carreport/util/backup/Backup;->canRestore()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    const v1, 0x7f09009c

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "carreport.backup"

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 460
    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 466
    :goto_0
    iget-object v1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->mRestore:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 467
    return-void

    .line 462
    :cond_0
    const v1, 0x7f09009d

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "carreport.backup"

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 464
    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 283
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 285
    const v3, 0x7f050002

    invoke-virtual {p0, v3}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->addPreferencesFromResource(I)V

    .line 286
    invoke-static {}, Lme/kuehle/carreport/util/backup/Dropbox;->getInstance()Lme/kuehle/carreport/util/backup/Dropbox;

    move-result-object v3

    iput-object v3, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->dropbox:Lme/kuehle/carreport/util/backup/Dropbox;

    .line 287
    new-instance v3, Lme/kuehle/carreport/util/backup/Backup;

    invoke-direct {v3}, Lme/kuehle/carreport/util/backup/Backup;-><init>()V

    iput-object v3, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->backup:Lme/kuehle/carreport/util/backup/Backup;

    .line 288
    new-instance v3, Lme/kuehle/carreport/util/backup/CSVExportImport;

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v4

    invoke-direct {v3, v4}, Lme/kuehle/carreport/util/backup/CSVExportImport;-><init>(Ljava/text/DateFormat;)V

    iput-object v3, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->csvExportImport:Lme/kuehle/carreport/util/backup/CSVExportImport;

    .line 293
    invoke-direct {p0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->setupDropdoxPreference()V

    .line 298
    const-string v3, "backup"

    invoke-virtual {p0, v3}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 299
    .local v0, "backup":Landroid/preference/Preference;
    iget-object v3, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->backup:Lme/kuehle/carreport/util/backup/Backup;

    invoke-virtual {v3}, Lme/kuehle/carreport/util/backup/Backup;->canBackup()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 300
    iget-object v3, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->mBackup:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 305
    invoke-direct {p0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->setupRestorePreference()V

    .line 310
    const-string v3, "exportcsv"

    invoke-virtual {p0, v3}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 311
    .local v1, "export":Landroid/preference/Preference;
    iget-object v3, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->csvExportImport:Lme/kuehle/carreport/util/backup/CSVExportImport;

    invoke-virtual {v3}, Lme/kuehle/carreport/util/backup/CSVExportImport;->canExport()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 312
    iget-object v3, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->mExportCSV:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 317
    const-string v3, "importcsv"

    invoke-virtual {p0, v3}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 318
    .local v2, "import_":Landroid/preference/Preference;
    iget-object v3, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->mImportCSV:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 320
    return-void
.end method

.method public onDialogNegativeClick(I)V
    .locals 2
    .param p1, "requestCode"    # I

    .prologue
    .line 324
    if-nez p1, :cond_0

    .line 325
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->dropbox:Lme/kuehle/carreport/util/backup/Dropbox;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lme/kuehle/carreport/util/backup/Dropbox;->synchronize(I)V

    .line 327
    :cond_0
    return-void
.end method

.method public onDialogPositiveClick(I)V
    .locals 2
    .param p1, "requestCode"    # I

    .prologue
    const/4 v1, 0x2

    .line 331
    if-nez p1, :cond_1

    .line 332
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->dropbox:Lme/kuehle/carreport/util/backup/Dropbox;

    invoke-virtual {v0, v1}, Lme/kuehle/carreport/util/backup/Dropbox;->synchronize(I)V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 334
    invoke-direct {p0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->doBackup()V

    goto :goto_0

    .line 335
    :cond_2
    if-ne p1, v1, :cond_0

    .line 336
    invoke-direct {p0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->doRestore()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 342
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 344
    iget-boolean v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->dropboxAuthenticationInProgress:Z

    if-eqz v0, :cond_0

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->dropboxAuthenticationInProgress:Z

    .line 347
    const v0, 0x7f09003f

    invoke-virtual {p0, v0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/kuehle/carreport/util/gui/ProgressDialogFragment;->newInstance(Ljava/lang/String;)Lme/kuehle/carreport/util/gui/ProgressDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "progress"

    invoke-virtual {v0, v1, v2}, Lme/kuehle/carreport/util/gui/ProgressDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;->dropbox:Lme/kuehle/carreport/util/backup/Dropbox;

    new-instance v1, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$6;

    invoke-direct {v1, p0}, Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment$6;-><init>(Lme/kuehle/carreport/gui/PreferencesActivity$BackupFragment;)V

    invoke-virtual {v0, v1}, Lme/kuehle/carreport/util/backup/Dropbox;->finishAuthentication(Lme/kuehle/carreport/util/backup/Dropbox$OnAuthenticationFinishedListener;)V

    .line 374
    :cond_0
    return-void
.end method
