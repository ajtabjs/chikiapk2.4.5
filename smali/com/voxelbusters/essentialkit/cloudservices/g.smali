.class public final Lcom/voxelbusters/essentialkit/cloudservices/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/games/SnapshotsClient;

.field public final synthetic b:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;

.field public final synthetic c:Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;Lcom/google/android/gms/games/SnapshotsClient;Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/g;->c:Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/cloudservices/g;->a:Lcom/google/android/gms/games/SnapshotsClient;

    iput-object p3, p0, Lcom/voxelbusters/essentialkit/cloudservices/g;->b:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 7

    const-string v0, "SnapshotConflict :"

    const-string v1, "SnapshotB :"

    const-string v2, "SnapshotA :"

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;

    invoke-virtual {p1}, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;->isConflict()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;->getConflict()Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;->getConflictingSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;->getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v4

    :try_start_0
    new-instance v5, Ljava/lang/String;

    invoke-interface {v3}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->readFully()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-interface {v4}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->readFully()[B

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;->getResolutionSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->readFully()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-interface {v3}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getPlayedTime()J

    move-result-wide v0

    invoke-interface {v4}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getPlayedTime()J

    move-result-wide v5

    cmp-long v0, v0, v5

    if-lez v0, :cond_0

    goto :goto_1

    :cond_0
    move-object v3, v4

    :goto_1
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/g;->a:Lcom/google/android/gms/games/SnapshotsClient;

    invoke-virtual {p1}, Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;->getConflictId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v3}, Lcom/google/android/gms/games/SnapshotsClient;->resolveConflict(Ljava/lang/String;Lcom/google/android/gms/games/snapshot/Snapshot;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/voxelbusters/essentialkit/cloudservices/f;

    invoke-direct {v0, p0, v3}, Lcom/voxelbusters/essentialkit/cloudservices/f;-><init>(Lcom/voxelbusters/essentialkit/cloudservices/g;Lcom/google/android/gms/games/snapshot/Snapshot;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/snapshot/Snapshot;

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/g;->c:Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/cloudservices/g;->b:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;

    invoke-static {v0, p1, v1}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->access$600(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;)V

    goto :goto_2

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

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/g;->b:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;->onFailure(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
