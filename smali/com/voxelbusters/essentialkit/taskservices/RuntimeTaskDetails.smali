.class public Lcom/voxelbusters/essentialkit/taskservices/RuntimeTaskDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public listener:Lcom/voxelbusters/essentialkit/taskservices/ITaskListener;

.field public looper:Landroid/os/Looper;

.field public options:Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskOptions;

.field public task:Lcom/voxelbusters/essentialkit/taskservices/IRunningTask;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/voxelbusters/essentialkit/taskservices/IRunningTask;Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskOptions;Lcom/voxelbusters/essentialkit/taskservices/ITaskListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/taskservices/RuntimeTaskDetails;->looper:Landroid/os/Looper;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/taskservices/RuntimeTaskDetails;->task:Lcom/voxelbusters/essentialkit/taskservices/IRunningTask;

    iput-object p3, p0, Lcom/voxelbusters/essentialkit/taskservices/RuntimeTaskDetails;->options:Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskOptions;

    iput-object p4, p0, Lcom/voxelbusters/essentialkit/taskservices/RuntimeTaskDetails;->listener:Lcom/voxelbusters/essentialkit/taskservices/ITaskListener;

    return-void
.end method
