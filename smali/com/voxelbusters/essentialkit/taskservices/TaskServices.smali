.class public Lcom/voxelbusters/essentialkit/taskservices/TaskServices;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IFeature;


# instance fields
.field private taskManager:Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskManager;

    invoke-direct {v0, p1}, Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/taskservices/TaskServices;->taskManager:Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskManager;

    return-void
.end method


# virtual methods
.method public cancelAllTasks()V
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/taskservices/TaskServices;->taskManager:Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskManager;

    invoke-virtual {v0}, Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskManager;->cancelAllTasks()V

    return-void
.end method

.method public cancelTask(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/taskservices/TaskServices;->taskManager:Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskManager;

    invoke-virtual {v0, p1}, Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskManager;->cancelTask(Ljava/lang/String;)V

    return-void
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 1

    const-string v0, "Task Services"

    return-object v0
.end method

.method public startTaskWithoutInterruption(Ljava/lang/String;Lcom/voxelbusters/essentialkit/taskservices/IBackgroundProcessingListener;)V
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/taskservices/TaskServices;->taskManager:Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskManager;

    invoke-virtual {v0, p1, p2}, Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskManager;->queueProxyTask(Ljava/lang/String;Lcom/voxelbusters/essentialkit/taskservices/IBackgroundProcessingListener;)V

    return-void
.end method
