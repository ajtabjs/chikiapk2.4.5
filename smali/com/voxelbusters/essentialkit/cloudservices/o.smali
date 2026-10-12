.class public final Lcom/voxelbusters/essentialkit/cloudservices/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/games/SnapshotsClient;

.field public final synthetic b:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/games/SnapshotsClient;Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/o;->a:Lcom/google/android/gms/games/SnapshotsClient;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/cloudservices/o;->b:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 6

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;

    invoke-virtual {p1}, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;->isConflict()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;->getConflict()Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;->getConflictingSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;->getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getPlayedTime()J

    move-result-wide v2

    invoke-interface {v1}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getPlayedTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/voxelbusters/essentialkit/cloudservices/o;->a:Lcom/google/android/gms/games/SnapshotsClient;

    invoke-virtual {p1}, Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;->getConflictId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/games/SnapshotsClient;->resolveConflict(Ljava/lang/String;Lcom/google/android/gms/games/snapshot/Snapshot;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v1, Lcom/voxelbusters/essentialkit/cloudservices/n;

    invoke-direct {v1, p0, v0}, Lcom/voxelbusters/essentialkit/cloudservices/n;-><init>(Lcom/voxelbusters/essentialkit/cloudservices/o;Lcom/google/android/gms/games/snapshot/Snapshot;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/snapshot/Snapshot;

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/o;->b:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;

    invoke-interface {v0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;->onSuccess(Lcom/google/android/gms/games/snapshot/Snapshot;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while loading: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->error(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/o;->b:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;->onFailure(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
