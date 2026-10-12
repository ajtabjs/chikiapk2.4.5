.class public Lcom/voxelbusters/essentialkit/taskservices/ProxyTaskWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# static fields
.field public static final TASK_ID:Ljava/lang/String; = "TASK_ID"


# instance fields
.field private taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 5

    invoke-virtual {p0}, Landroidx/work/Worker;->getInputData()Landroidx/work/Data;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "TASK_ID"

    invoke-virtual {v0, v1}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/taskservices/ProxyTaskWorker;->taskId:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/taskservices/ProxyTaskWorker;->taskId:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/taskservices/ProxyTaskDetailsCache;->getDetails(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/taskservices/BackgroundProcessingTaskDetails;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "This is a runtime task and no details exist for the taskId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/taskservices/ProxyTaskWorker;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". This can mean the runtime is not available anymore to execute this task as it requires runtime."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->error(Ljava/lang/String;)V

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v1, Landroid/os/Handler;

    iget-object v2, v0, Lcom/voxelbusters/essentialkit/taskservices/BackgroundProcessingTaskDetails;->looper:Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, v0, Lcom/voxelbusters/essentialkit/taskservices/BackgroundProcessingTaskDetails;->listener:Lcom/voxelbusters/essentialkit/taskservices/IBackgroundProcessingListener;

    invoke-interface {v0}, Lcom/voxelbusters/essentialkit/taskservices/IBackgroundProcessingListener;->onBegin()V

    new-instance v2, Lcom/voxelbusters/essentialkit/taskservices/a;

    invoke-direct {v2, v0}, Lcom/voxelbusters/essentialkit/taskservices/a;-><init>(Lcom/voxelbusters/essentialkit/taskservices/IBackgroundProcessingListener;)V

    :catch_0
    :goto_1
    invoke-virtual {p0}, Landroidx/work/Worker;->isStopped()Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method

.method public onStopped()V
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/taskservices/ProxyTaskWorker;->taskId:Ljava/lang/String;

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/taskservices/ProxyTaskDetailsCache;->getDetails(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/taskservices/BackgroundProcessingTaskDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/voxelbusters/essentialkit/taskservices/BackgroundProcessingTaskDetails;->listener:Lcom/voxelbusters/essentialkit/taskservices/IBackgroundProcessingListener;

    invoke-interface {v0}, Lcom/voxelbusters/essentialkit/taskservices/IBackgroundProcessingListener;->onExpiry()V

    :cond_0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/taskservices/ProxyTaskWorker;->taskId:Ljava/lang/String;

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/taskservices/ProxyTaskDetailsCache;->remove(Ljava/lang/String;)V

    return-void
.end method
