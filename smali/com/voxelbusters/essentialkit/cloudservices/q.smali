.class public final Lcom/voxelbusters/essentialkit/cloudservices/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ICloseSnapshotListener;

.field public final synthetic b:Lcom/google/android/gms/games/SnapshotsClient;

.field public final synthetic c:Lcom/google/android/gms/games/snapshot/Snapshot;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ICloseSnapshotListener;Lcom/google/android/gms/games/SnapshotsClient;Lcom/google/android/gms/games/snapshot/Snapshot;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/q;->a:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ICloseSnapshotListener;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/cloudservices/q;->b:Lcom/google/android/gms/games/SnapshotsClient;

    iput-object p3, p0, Lcom/voxelbusters/essentialkit/cloudservices/q;->c:Lcom/google/android/gms/games/snapshot/Snapshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    const-string v0, "Finished closing snapshot..."

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/q;->a:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ICloseSnapshotListener;

    invoke-interface {p1}, Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ICloseSnapshotListener;->onSuccess()V

    goto :goto_0

    :cond_0
    const-string v0, "Error committing to snapshot"

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/q;->b:Lcom/google/android/gms/games/SnapshotsClient;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/cloudservices/q;->c:Lcom/google/android/gms/games/snapshot/Snapshot;

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/SnapshotsClient;->discardAndClose(Lcom/google/android/gms/games/snapshot/Snapshot;)Lcom/google/android/gms/tasks/Task;

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/q;->a:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ICloseSnapshotListener;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ICloseSnapshotListener;->onFailure(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
