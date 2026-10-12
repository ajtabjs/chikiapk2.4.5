.class public Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final WorkerTag:Ljava/lang/String;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EssentialKit.BackgroundTaskManager"

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskManager;->WorkerTag:Ljava/lang/String;

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskManager;->context:Landroid/content/Context;

    return-void
.end method

.method private notifyTaskCancelAndCleanup(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/taskservices/ProxyTaskDetailsCache;->getDetails(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/taskservices/BackgroundProcessingTaskDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/voxelbusters/essentialkit/taskservices/BackgroundProcessingTaskDetails;->listener:Lcom/voxelbusters/essentialkit/taskservices/IBackgroundProcessingListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/voxelbusters/essentialkit/taskservices/IBackgroundProcessingListener;->onCancel()V

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/taskservices/ProxyTaskDetailsCache;->remove(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAllTasks()V
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v0

    const-string v1, "EssentialKit.BackgroundTaskManager"

    invoke-virtual {v0, v1}, Landroidx/work/WorkManager;->cancelAllWorkByTag(Ljava/lang/String;)Landroidx/work/Operation;

    return-void
.end method

.method public cancelTask(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskManager;->notifyTaskCancelAndCleanup(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/work/WorkManager;->cancelUniqueWork(Ljava/lang/String;)Landroidx/work/Operation;

    return-void
.end method

.method public queueProxyTask(Ljava/lang/String;Lcom/voxelbusters/essentialkit/taskservices/IBackgroundProcessingListener;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "queueProxyTask with Id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    new-instance v0, Lcom/voxelbusters/essentialkit/taskservices/BackgroundProcessingTaskDetails;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/voxelbusters/essentialkit/taskservices/BackgroundProcessingTaskDetails;-><init>(Landroid/os/Looper;Lcom/voxelbusters/essentialkit/taskservices/IBackgroundProcessingListener;)V

    invoke-static {p1, v0}, Lcom/voxelbusters/essentialkit/taskservices/ProxyTaskDetailsCache;->add(Ljava/lang/String;Lcom/voxelbusters/essentialkit/taskservices/BackgroundProcessingTaskDetails;)V

    new-instance p2, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v0, Lcom/voxelbusters/essentialkit/taskservices/ProxyTaskWorker;

    invoke-direct {p2, v0}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    new-instance v0, Landroidx/work/Data$Builder;

    invoke-direct {v0}, Landroidx/work/Data$Builder;-><init>()V

    const-string v1, "TASK_ID"

    invoke-virtual {v0, v1, p1}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/work/OneTimeWorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    move-result-object p2

    check-cast p2, Landroidx/work/OneTimeWorkRequest$Builder;

    sget-object v0, Landroidx/work/OutOfQuotaPolicy;->RUN_AS_NON_EXPEDITED_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    invoke-virtual {p2, v0}, Landroidx/work/OneTimeWorkRequest$Builder;->setExpedited(Landroidx/work/OutOfQuotaPolicy;)Landroidx/work/WorkRequest$Builder;

    move-result-object p2

    check-cast p2, Landroidx/work/OneTimeWorkRequest$Builder;

    const-string v0, "EssentialKit.BackgroundTaskManager"

    invoke-virtual {p2, v0}, Landroidx/work/OneTimeWorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object p2

    check-cast p2, Landroidx/work/OneTimeWorkRequest$Builder;

    invoke-virtual {p2}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object p2

    check-cast p2, Landroidx/work/OneTimeWorkRequest;

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v0

    sget-object v1, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    invoke-virtual {v0, p1, v1, p2}, Landroidx/work/WorkManager;->enqueueUniqueWork(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Landroidx/work/OneTimeWorkRequest;)Landroidx/work/Operation;

    return-void
.end method

.method public queueTask(Lcom/voxelbusters/essentialkit/taskservices/IRunningTask;)V
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/voxelbusters/essentialkit/taskservices/RuntimeTaskDetails;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2, v2}, Lcom/voxelbusters/essentialkit/taskservices/RuntimeTaskDetails;-><init>(Landroid/os/Looper;Lcom/voxelbusters/essentialkit/taskservices/IRunningTask;Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskOptions;Lcom/voxelbusters/essentialkit/taskservices/ITaskListener;)V

    invoke-static {v0, v1}, Lcom/voxelbusters/essentialkit/taskservices/RuntimeTaskDetailsCache;->AddTask(Ljava/lang/String;Lcom/voxelbusters/essentialkit/taskservices/RuntimeTaskDetails;)V

    new-instance p1, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v1, Lcom/voxelbusters/essentialkit/taskservices/RuntimeTaskWorker;

    invoke-direct {p1, v1}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    new-instance v1, Landroidx/work/Data$Builder;

    invoke-direct {v1}, Landroidx/work/Data$Builder;-><init>()V

    const-string v2, "TASK_ID"

    invoke-virtual {v1, v2, v0}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/work/OneTimeWorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    move-result-object p1

    check-cast p1, Landroidx/work/OneTimeWorkRequest$Builder;

    sget-object v1, Landroidx/work/OutOfQuotaPolicy;->RUN_AS_NON_EXPEDITED_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    invoke-virtual {p1, v1}, Landroidx/work/OneTimeWorkRequest$Builder;->setExpedited(Landroidx/work/OutOfQuotaPolicy;)Landroidx/work/WorkRequest$Builder;

    move-result-object p1

    check-cast p1, Landroidx/work/OneTimeWorkRequest$Builder;

    const-string v1, "EssentialKit.BackgroundTaskManager"

    invoke-virtual {p1, v1}, Landroidx/work/OneTimeWorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object p1

    check-cast p1, Landroidx/work/OneTimeWorkRequest$Builder;

    invoke-virtual {p1}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object p1

    check-cast p1, Landroidx/work/OneTimeWorkRequest;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskManager;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v1

    sget-object v2, Landroidx/work/ExistingWorkPolicy;->REPLACE:Landroidx/work/ExistingWorkPolicy;

    invoke-virtual {v1, v0, v2, p1}, Landroidx/work/WorkManager;->enqueueUniqueWork(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Landroidx/work/OneTimeWorkRequest;)Landroidx/work/Operation;

    return-void
.end method

.method public queueTask(Ljava/lang/String;Lcom/voxelbusters/essentialkit/taskservices/IRunningTask;Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskOptions;Lcom/voxelbusters/essentialkit/taskservices/ITaskListener;)V
    .locals 2

    .line 2
    iget-boolean v0, p3, Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskOptions;->executeOnCallingThread:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/voxelbusters/essentialkit/taskservices/RuntimeTaskDetails;

    invoke-direct {v1, v0, p2, p3, p4}, Lcom/voxelbusters/essentialkit/taskservices/RuntimeTaskDetails;-><init>(Landroid/os/Looper;Lcom/voxelbusters/essentialkit/taskservices/IRunningTask;Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskOptions;Lcom/voxelbusters/essentialkit/taskservices/ITaskListener;)V

    invoke-static {p1, v1}, Lcom/voxelbusters/essentialkit/taskservices/RuntimeTaskDetailsCache;->AddTask(Ljava/lang/String;Lcom/voxelbusters/essentialkit/taskservices/RuntimeTaskDetails;)V

    new-instance p2, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class p4, Lcom/voxelbusters/essentialkit/taskservices/RuntimeTaskWorker;

    invoke-direct {p2, p4}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    new-instance p4, Landroidx/work/Data$Builder;

    invoke-direct {p4}, Landroidx/work/Data$Builder;-><init>()V

    const-string v0, "TASK_ID"

    invoke-virtual {p4, v0, p1}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroidx/work/OneTimeWorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    move-result-object p2

    check-cast p2, Landroidx/work/OneTimeWorkRequest$Builder;

    iget p3, p3, Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskOptions;->delay:F

    const/high16 p4, 0x447a0000    # 1000.0f

    mul-float/2addr p3, p4

    float-to-long p3, p3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p3, p4, v0}, Landroidx/work/OneTimeWorkRequest$Builder;->setInitialDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    move-result-object p2

    check-cast p2, Landroidx/work/OneTimeWorkRequest$Builder;

    sget-object p3, Landroidx/work/OutOfQuotaPolicy;->RUN_AS_NON_EXPEDITED_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    invoke-virtual {p2, p3}, Landroidx/work/OneTimeWorkRequest$Builder;->setExpedited(Landroidx/work/OutOfQuotaPolicy;)Landroidx/work/WorkRequest$Builder;

    move-result-object p2

    check-cast p2, Landroidx/work/OneTimeWorkRequest$Builder;

    const-string p3, "EssentialKit.BackgroundTaskManager"

    invoke-virtual {p2, p3}, Landroidx/work/OneTimeWorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object p2

    check-cast p2, Landroidx/work/OneTimeWorkRequest$Builder;

    invoke-virtual {p2}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object p2

    check-cast p2, Landroidx/work/OneTimeWorkRequest;

    iget-object p3, p0, Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskManager;->context:Landroid/content/Context;

    invoke-static {p3}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p3

    sget-object p4, Landroidx/work/ExistingWorkPolicy;->REPLACE:Landroidx/work/ExistingWorkPolicy;

    invoke-virtual {p3, p1, p4, p2}, Landroidx/work/WorkManager;->enqueueUniqueWork(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Landroidx/work/OneTimeWorkRequest;)Landroidx/work/Operation;

    return-void
.end method
