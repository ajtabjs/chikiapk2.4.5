.class public final Lcom/voxelbusters/essentialkit/cloudservices/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ICloseSnapshotListener;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ICloseSnapshotListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/p;->a:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ICloseSnapshotListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/p;->a:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ICloseSnapshotListener;

    invoke-interface {p1}, Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ICloseSnapshotListener;->onSuccess()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/p;->a:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ICloseSnapshotListener;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ICloseSnapshotListener;->onFailure(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
