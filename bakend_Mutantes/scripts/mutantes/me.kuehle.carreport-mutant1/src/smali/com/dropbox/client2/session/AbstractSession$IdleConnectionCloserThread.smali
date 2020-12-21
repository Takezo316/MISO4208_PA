.class Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;
.super Ljava/lang/Thread;
.source "AbstractSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/client2/session/AbstractSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdleConnectionCloserThread"
.end annotation


# static fields
.field private static thread:Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;


# instance fields
.field private final checkIntervalMs:I

.field private final idleTimeoutSeconds:I

.field private final manager:Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x0

    sput-object v0, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;->thread:Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;II)V
    .locals 1
    .param p1, "manager"    # Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;
    .param p2, "idleTimeoutSeconds"    # I
    .param p3, "checkIntervalSeconds"    # I

    .prologue
    .line 507
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 508
    iput-object p1, p0, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;->manager:Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;

    .line 509
    iput p2, p0, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;->idleTimeoutSeconds:I

    .line 510
    mul-int/lit16 v0, p3, 0x3e8

    iput v0, p0, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;->checkIntervalMs:I

    .line 511
    return-void
.end method

.method public static declared-synchronized ensureRunning(Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;II)V
    .locals 2
    .param p0, "manager"    # Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;
    .param p1, "idleTimeoutSeconds"    # I
    .param p2, "checkIntervalSeconds"    # I

    .prologue
    .line 516
    const-class v1, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;->thread:Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;

    if-nez v0, :cond_0

    .line 517
    new-instance v0, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;-><init>(Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;II)V

    sput-object v0, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;->thread:Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;

    .line 519
    sget-object v0, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;->thread:Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;

    invoke-virtual {v0}, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    :cond_0
    monitor-exit v1

    return-void

    .line 516
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 527
    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :try_start_1
    iget v1, p0, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;->checkIntervalMs:I

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 529
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 530
    :try_start_2
    iget-object v1, p0, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;->manager:Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;

    invoke-virtual {v1}, Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;->closeExpiredConnections()V

    .line 531
    iget-object v1, p0, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;->manager:Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;

    iget v2, p0, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;->idleTimeoutSeconds:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    .line 532
    const-class v2, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 533
    :try_start_3
    iget-object v1, p0, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;->manager:Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;

    invoke-virtual {v1}, Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;->getConnectionsInPool()I

    move-result v1

    if-nez v1, :cond_0

    .line 534
    const/4 v1, 0x0

    sput-object v1, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;->thread:Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;

    .line 535
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 542
    :goto_1
    return-void

    .line 529
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Ljava/lang/InterruptedException;
    sput-object v5, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;->thread:Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;

    goto :goto_1

    .line 537
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_6
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
.end method
