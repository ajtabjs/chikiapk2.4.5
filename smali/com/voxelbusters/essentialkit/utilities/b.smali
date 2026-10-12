.class public final Lcom/voxelbusters/essentialkit/utilities/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IMonitorFileResultListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IMonitorFileResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/utilities/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/utilities/b;->b:Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IMonitorFileResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/utilities/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0xa

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/voxelbusters/essentialkit/utilities/b;->b:Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IMonitorFileResultListener;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "monitorFile : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/utilities/b;->b:Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IMonitorFileResultListener;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1, v2, v0}, Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IMonitorFileResultListener;->onResult(ZLjava/io/File;)V

    :cond_2
    return-void
.end method
