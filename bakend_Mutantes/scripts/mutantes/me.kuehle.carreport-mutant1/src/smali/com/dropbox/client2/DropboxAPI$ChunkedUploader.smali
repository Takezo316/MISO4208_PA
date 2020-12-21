.class public Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;
.super Ljava/lang/Object;
.source "DropboxAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/client2/DropboxAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChunkedUploader"
.end annotation


# static fields
.field private static final DEFAULT_CHUNK_SIZE:I = 0x400000


# instance fields
.field private active:Z

.field private chunkSize:I

.field private lastChunk:[B

.field private lastRequest:Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;

.field private offset:J

.field private stream:Ljava/io/InputStream;

.field private targetLength:J

.field final synthetic this$0:Lcom/dropbox/client2/DropboxAPI;

.field private uploadId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dropbox/client2/DropboxAPI;Ljava/io/InputStream;J)V
    .locals 6
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "length"    # J

    .prologue
    .line 796
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>.ChunkedUploader;"
    const/high16 v5, 0x400000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;-><init>(Lcom/dropbox/client2/DropboxAPI;Ljava/io/InputStream;JI)V

    .line 797
    return-void
.end method

.method constructor <init>(Lcom/dropbox/client2/DropboxAPI;Ljava/io/InputStream;JI)V
    .locals 3
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .param p5, "chunkSize"    # I

    .prologue
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>.ChunkedUploader;"
    const/4 v2, 0x0

    .line 790
    iput-object p1, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->this$0:Lcom/dropbox/client2/DropboxAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 777
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    .line 781
    iput-object v2, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->lastChunk:[B

    .line 785
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->active:Z

    .line 786
    iput-object v2, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->lastRequest:Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;

    .line 791
    iput-object p2, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->stream:Ljava/io/InputStream;

    .line 792
    iput-wide p3, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->targetLength:J

    .line 793
    iput p5, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->chunkSize:I

    .line 794
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 834
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>.ChunkedUploader;"
    monitor-enter p0

    .line 835
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->lastRequest:Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->lastRequest:Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;

    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;->abort()V

    .line 838
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->active:Z

    .line 839
    monitor-exit p0

    .line 840
    return-void

    .line 839
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public finish(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/client2/DropboxAPI$Entry;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "parentRev"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 939
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>.ChunkedUploader;"
    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->this$0:Lcom/dropbox/client2/DropboxAPI;

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->uploadId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2, p2}, Lcom/dropbox/client2/DropboxAPI;->access$100(Lcom/dropbox/client2/DropboxAPI;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/dropbox/client2/DropboxAPI$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getActive()Z
    .locals 1

    .prologue
    .line 824
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>.ChunkedUploader;"
    iget-boolean v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->active:Z

    return v0
.end method

.method public getOffset()J
    .locals 2

    .prologue
    .line 808
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>.ChunkedUploader;"
    iget-wide v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    return-wide v0
.end method

.method public isComplete()Z
    .locals 4

    .prologue
    .line 816
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>.ChunkedUploader;"
    iget-wide v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    iget-wide v2, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->targetLength:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public upload()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 851
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>.ChunkedUploader;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->upload(Lcom/dropbox/client2/ProgressListener;)V

    .line 852
    return-void
.end method

.method public upload(Lcom/dropbox/client2/ProgressListener;)V
    .locals 15
    .param p1, "listener"    # Lcom/dropbox/client2/ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 872
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>.ChunkedUploader;"
    :goto_0
    iget-wide v1, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    iget-wide v3, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->targetLength:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_5

    .line 874
    iget v1, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->chunkSize:I

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->targetLength:J

    iget-wide v5, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v13, v1

    .line 876
    .local v13, "nextChunkSize":I
    const/4 v0, 0x0

    .line 877
    .local v0, "adjustedListener":Lcom/dropbox/client2/ProgressListener;
    if-eqz p1, :cond_0

    .line 878
    new-instance v0, Lcom/dropbox/client2/ProgressListener$Adjusted;

    .end local v0    # "adjustedListener":Lcom/dropbox/client2/ProgressListener;
    iget-wide v2, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    iget-wide v4, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->targetLength:J

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/client2/ProgressListener$Adjusted;-><init>(Lcom/dropbox/client2/ProgressListener;JJ)V

    .line 881
    .restart local v0    # "adjustedListener":Lcom/dropbox/client2/ProgressListener;
    :cond_0
    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->lastChunk:[B

    if-nez v1, :cond_1

    .line 882
    new-array v1, v13, [B

    iput-object v1, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->lastChunk:[B

    .line 883
    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->stream:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->lastChunk:[B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .line 884
    .local v9, "bytesRead":I
    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->lastChunk:[B

    array-length v1, v1

    if-ge v9, v1, :cond_1

    .line 885
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InputStream ended after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    int-to-long v5, v9

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, expecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->targetLength:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 889
    .end local v9    # "bytesRead":I
    :cond_1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Lcom/dropbox/client2/exception/DropboxServerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    :try_start_1
    iget-boolean v1, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->active:Z

    if-nez v1, :cond_2

    .line 891
    new-instance v1, Lcom/dropbox/client2/exception/DropboxPartialFileException;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lcom/dropbox/client2/exception/DropboxPartialFileException;-><init>(J)V

    throw v1

    .line 894
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Lcom/dropbox/client2/exception/DropboxServerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 901
    :catch_0
    move-exception v10

    .line 902
    .local v10, "e":Lcom/dropbox/client2/exception/DropboxServerException;
    iget-object v1, v10, Lcom/dropbox/client2/exception/DropboxServerException;->body:Lcom/dropbox/client2/exception/DropboxServerException$Error;

    iget-object v1, v1, Lcom/dropbox/client2/exception/DropboxServerException$Error;->fields:Ljava/util/Map;

    const-string v2, "offset"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 903
    iget-object v1, v10, Lcom/dropbox/client2/exception/DropboxServerException;->body:Lcom/dropbox/client2/exception/DropboxServerException$Error;

    iget-object v1, v1, Lcom/dropbox/client2/exception/DropboxServerException$Error;->fields:Ljava/util/Map;

    const-string v2, "offset"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 904
    .local v11, "newOffset":J
    iget-wide v1, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    cmp-long v1, v11, v1

    if-lez v1, :cond_3

    .line 905
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->lastChunk:[B

    .line 906
    iput-wide v11, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    goto/16 :goto_0

    .line 893
    .end local v10    # "e":Lcom/dropbox/client2/exception/DropboxServerException;
    .end local v11    # "newOffset":J
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->this$0:Lcom/dropbox/client2/DropboxAPI;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->lastChunk:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v3, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->lastChunk:[B

    array-length v3, v3

    int-to-long v3, v3

    iget-wide v6, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    iget-object v8, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->uploadId:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual/range {v1 .. v8}, Lcom/dropbox/client2/DropboxAPI;->chunkedUploadRequest(Ljava/io/InputStream;JLcom/dropbox/client2/ProgressListener;JLjava/lang/String;)Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->lastRequest:Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;

    .line 894
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 896
    :try_start_4
    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->lastRequest:Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;

    invoke-virtual {v1}, Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;->upload()Lcom/dropbox/client2/DropboxAPI$ChunkedUploadResponse;

    move-result-object v14

    .line 898
    .local v14, "resp":Lcom/dropbox/client2/DropboxAPI$ChunkedUploadResponse;
    invoke-virtual {v14}, Lcom/dropbox/client2/DropboxAPI$ChunkedUploadResponse;->getOffset()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    .line 899
    invoke-virtual {v14}, Lcom/dropbox/client2/DropboxAPI$ChunkedUploadResponse;->getUploadId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->uploadId:Ljava/lang/String;

    .line 900
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->lastChunk:[B
    :try_end_4
    .catch Lcom/dropbox/client2/exception/DropboxServerException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 908
    .end local v14    # "resp":Lcom/dropbox/client2/DropboxAPI$ChunkedUploadResponse;
    .restart local v10    # "e":Lcom/dropbox/client2/exception/DropboxServerException;
    .restart local v11    # "newOffset":J
    :cond_3
    throw v10

    .line 911
    .end local v11    # "newOffset":J
    :cond_4
    throw v10

    .line 918
    .end local v0    # "adjustedListener":Lcom/dropbox/client2/ProgressListener;
    .end local v10    # "e":Lcom/dropbox/client2/exception/DropboxServerException;
    .end local v13    # "nextChunkSize":I
    :cond_5
    return-void
.end method
