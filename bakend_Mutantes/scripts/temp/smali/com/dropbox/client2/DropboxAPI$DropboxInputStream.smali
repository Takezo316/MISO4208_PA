.class public Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;
.super Ljava/io/FilterInputStream;
.source "DropboxAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/client2/DropboxAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DropboxInputStream"
.end annotation


# instance fields
.field private final info:Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;

.field private final request:Lorg/apache/http/client/methods/HttpUriRequest;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)V
    .locals 4
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 544
    invoke-direct {p0, v3}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 546
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 547
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-nez v1, :cond_0

    .line 548
    new-instance v2, Lcom/dropbox/client2/exception/DropboxException;

    const-string v3, "Didn\'t get entity from HttpResponse"

    invoke-direct {v2, v3}, Lcom/dropbox/client2/exception/DropboxException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 554
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    iput-object p1, p0, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 560
    new-instance v2, Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;

    invoke-direct {v2, p2, v3}, Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;-><init>(Lorg/apache/http/HttpResponse;Lcom/dropbox/client2/DropboxAPI$1;)V

    iput-object v2, p0, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->info:Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;

    .line 561
    return-void

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/dropbox/client2/exception/DropboxIOException;

    invoke-direct {v2, v0}, Lcom/dropbox/client2/exception/DropboxIOException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 573
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 577
    return-void

    .line 575
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    throw v0
.end method

.method public copyStreamToOutput(Ljava/io/OutputStream;Lcom/dropbox/client2/ProgressListener;)V
    .locals 19
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "listener"    # Lcom/dropbox/client2/ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxIOException;,
            Lcom/dropbox/client2/exception/DropboxPartialFileException;,
            Lcom/dropbox/client2/exception/DropboxLocalStorageFullException;
        }
    .end annotation

    .prologue
    .line 612
    const/4 v1, 0x0

    .line 613
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    const-wide/16 v13, 0x0

    .line 614
    .local v13, "totalRead":J
    const-wide/16 v5, 0x0

    .line 615
    .local v5, "lastListened":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->info:Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;

    invoke-virtual {v15}, Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;->getFileSize()J

    move-result-wide v7

    .line 618
    .local v7, "length":J
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    const/16 v15, 0x1000

    :try_start_1
    new-array v3, v15, [B

    .line 623
    .local v3, "buffer":[B
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->read([B)I

    move-result v12

    .line 624
    .local v12, "read":I
    if-gez v12, :cond_3

    .line 625
    const-wide/16 v15, 0x0

    cmp-long v15, v7, v15

    if-ltz v15, :cond_4

    cmp-long v15, v13, v7

    if-gez v15, :cond_4

    .line 627
    new-instance v15, Lcom/dropbox/client2/exception/DropboxPartialFileException;

    invoke-direct {v15, v13, v14}, Lcom/dropbox/client2/exception/DropboxPartialFileException;-><init>(J)V

    throw v15
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 656
    .end local v3    # "buffer":[B
    .end local v12    # "read":I
    :catch_0
    move-exception v4

    move-object v1, v2

    .line 657
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .local v4, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 658
    .local v9, "message":Ljava/lang/String;
    if-eqz v9, :cond_8

    const-string v15, "No space"

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 661
    new-instance v15, Lcom/dropbox/client2/exception/DropboxLocalStorageFullException;

    invoke-direct {v15}, Lcom/dropbox/client2/exception/DropboxLocalStorageFullException;-><init>()V

    throw v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 672
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "message":Ljava/lang/String;
    :catchall_0
    move-exception v15

    :goto_2
    if-eqz v1, :cond_1

    .line 674
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 677
    :cond_1
    :goto_3
    if-eqz p1, :cond_2

    .line 679
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 685
    :cond_2
    :goto_4
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 686
    :goto_5
    throw v15

    .line 633
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "buffer":[B
    .restart local v12    # "read":I
    :cond_3
    const/4 v15, 0x0

    :try_start_6
    invoke-virtual {v2, v3, v15, v12}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 635
    int-to-long v15, v12

    add-long/2addr v13, v15

    .line 637
    if-eqz p2, :cond_0

    .line 638
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 639
    .local v10, "now":J
    sub-long v15, v10, v5

    invoke-virtual/range {p2 .. p2}, Lcom/dropbox/client2/ProgressListener;->progressInterval()J

    move-result-wide v17

    cmp-long v15, v15, v17

    if-lez v15, :cond_0

    .line 640
    move-wide v5, v10

    .line 641
    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14, v7, v8}, Lcom/dropbox/client2/ProgressListener;->onProgress(JJ)V

    goto :goto_0

    .line 672
    .end local v3    # "buffer":[B
    .end local v10    # "now":J
    .end local v12    # "read":I
    :catchall_1
    move-exception v15

    move-object v1, v2

    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_2

    .line 646
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "buffer":[B
    .restart local v12    # "read":I
    :cond_4
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 647
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 650
    :try_start_7
    move-object/from16 v0, p1

    instance-of v15, v0, Ljava/io/FileOutputStream;

    if-eqz v15, :cond_5

    .line 651
    move-object/from16 v0, p1

    check-cast v0, Ljava/io/FileOutputStream;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/FileDescriptor;->sync()V
    :try_end_7
    .catch Ljava/io/SyncFailedException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 672
    :cond_5
    :goto_6
    if-eqz v2, :cond_6

    .line 674
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 677
    :cond_6
    :goto_7
    if-eqz p1, :cond_7

    .line 679
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 685
    :cond_7
    :goto_8
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 688
    :goto_9
    return-void

    .line 669
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "buffer":[B
    .end local v12    # "read":I
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "e":Ljava/io/IOException;
    .restart local v9    # "message":Ljava/lang/String;
    :cond_8
    :try_start_b
    new-instance v15, Lcom/dropbox/client2/exception/DropboxPartialFileException;

    invoke-direct {v15, v13, v14}, Lcom/dropbox/client2/exception/DropboxPartialFileException;-><init>(J)V

    throw v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 675
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "message":Ljava/lang/String;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "buffer":[B
    .restart local v12    # "read":I
    :catch_1
    move-exception v15

    goto :goto_7

    .line 680
    :catch_2
    move-exception v15

    goto :goto_8

    .line 686
    :catch_3
    move-exception v15

    goto :goto_9

    .line 675
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "buffer":[B
    .end local v12    # "read":I
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :catch_4
    move-exception v16

    goto :goto_3

    .line 680
    :catch_5
    move-exception v16

    goto :goto_4

    .line 686
    :catch_6
    move-exception v16

    goto :goto_5

    .line 656
    :catch_7
    move-exception v4

    goto :goto_1

    .line 653
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "buffer":[B
    .restart local v12    # "read":I
    :catch_8
    move-exception v15

    goto :goto_6
.end method

.method public getFileInfo()Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->info:Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;

    return-object v0
.end method
