.class public Lcom/voxelbusters/essentialkit/taskservices/RuntimeTaskWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# static fields
.field public static final TASK_ID:Ljava/lang/String; = "TASK_ID"


# instance fields
.field private taskFailed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/voxelbusters/essentialkit/taskservices/RuntimeTaskWorker;->taskFailed:Z

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 4

    invoke-virtual {p0}, Landroidx/work/Worker;->getInputData()Landroidx/work/Data;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/voxelbusters/essentialkit/taskservices/RuntimeTaskWorker;->taskFailed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "TASK_ID"

    invoke-virtual {v0, v2}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/taskservices/RuntimeTaskDetailsCache;->getTaskDetails(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/taskservices/RuntimeTaskDetails;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This is a runtime task and no details exist for the taskId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    :catch_0
    :cond_2
    :goto_1
    iget-object v2, v1, Lcom/voxelbusters/essentialkit/taskservices/RuntimeTaskDetails;->task:Lcom/voxelbusters/essentialkit/taskservices/IRunningTask;

    invoke-interface {v2}, Lcom/voxelbusters/essentialkit/taskservices/IRunningTask;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_3

    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/voxelbusters/essentialkit/taskservices/RuntimeTaskDetailsCache;->removeTask(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/voxelbusters/essentialkit/taskservices/RuntimeTaskWorker;->taskFailed:Z

    if-eqz v0, :cond_4

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    :goto_2
    return-object v0
.end method
