.class Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity$CountingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ProgressListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountingOutputStream"
.end annotation


# instance fields
.field private intervalMs:J

.field private lastListened:J

.field final synthetic this$0:Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity;

.field private transferred:J


# direct methods
.method public constructor <init>(Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity;Ljava/io/OutputStream;)V
    .locals 2
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    const-wide/16 v0, 0x0

    .line 86
    iput-object p1, p0, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity$CountingOutputStream;->this$0:Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity;

    .line 87
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 82
    iput-wide v0, p0, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity$CountingOutputStream;->lastListened:J

    .line 83
    iput-wide v0, p0, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity$CountingOutputStream;->intervalMs:J

    .line 84
    iput-wide v0, p0, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity$CountingOutputStream;->transferred:J

    .line 88
    invoke-static {p1}, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity;->access$000(Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity;)Lcom/dropbox/client2/ProgressListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/client2/ProgressListener;->progressInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity$CountingOutputStream;->intervalMs:J

    .line 89
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 7
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 107
    iget-wide v2, p0, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity$CountingOutputStream;->transferred:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity$CountingOutputStream;->transferred:J

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 109
    .local v0, "now":J
    iget-wide v2, p0, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity$CountingOutputStream;->lastListened:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity$CountingOutputStream;->intervalMs:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 110
    iput-wide v0, p0, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity$CountingOutputStream;->lastListened:J

    .line 111
    iget-object v2, p0, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity$CountingOutputStream;->this$0:Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity;

    invoke-static {v2}, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity;->access$000(Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity;)Lcom/dropbox/client2/ProgressListener;

    move-result-object v2

    iget-wide v3, p0, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity$CountingOutputStream;->transferred:J

    iget-object v5, p0, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity$CountingOutputStream;->this$0:Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity;

    invoke-static {v5}, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity;->access$100(Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity;)J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/dropbox/client2/ProgressListener;->onProgress(JJ)V

    .line 113
    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v2, p0, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 96
    iget-wide v2, p0, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity$CountingOutputStream;->transferred:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity$CountingOutputStream;->transferred:J

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 98
    .local v0, "now":J
    iget-wide v2, p0, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity$CountingOutputStream;->lastListened:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity$CountingOutputStream;->intervalMs:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 99
    iput-wide v0, p0, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity$CountingOutputStream;->lastListened:J

    .line 100
    iget-object v2, p0, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity$CountingOutputStream;->this$0:Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity;

    invoke-static {v2}, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity;->access$000(Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity;)Lcom/dropbox/client2/ProgressListener;

    move-result-object v2

    iget-wide v3, p0, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity$CountingOutputStream;->transferred:J

    iget-object v5, p0, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity$CountingOutputStream;->this$0:Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity;

    invoke-static {v5}, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity;->access$100(Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity;)J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/dropbox/client2/ProgressListener;->onProgress(JJ)V

    .line 102
    :cond_0
    return-void
.end method