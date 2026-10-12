.class public Lcom/voxelbusters/essentialkit/taskservices/BackgroundProcessingTaskDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public listener:Lcom/voxelbusters/essentialkit/taskservices/IBackgroundProcessingListener;

.field public looper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/voxelbusters/essentialkit/taskservices/IBackgroundProcessingListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/taskservices/BackgroundProcessingTaskDetails;->looper:Landroid/os/Looper;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/taskservices/BackgroundProcessingTaskDetails;->listener:Lcom/voxelbusters/essentialkit/taskservices/IBackgroundProcessingListener;

    return-void
.end method
