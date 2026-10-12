.class public Lcom/voxelbusters/essentialkit/cloudservices/SnapshotLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotLoader;->context:Landroid/content/Context;

    return-void
.end method

.method private getSnapshotClient()Lcom/google/android/gms/games/SnapshotsClient;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotLoader;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/games/PlayGames;->getSnapshotsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/SnapshotsClient;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public commitSnapshot(Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;[BLcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ICloseSnapshotListener;)V
    .locals 2

    invoke-direct {p0}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotLoader;->getSnapshotClient()Lcom/google/android/gms/games/SnapshotsClient;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v1

    invoke-interface {v1, p3}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->writeBytes([B)Z

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/games/SnapshotsClient;->commitAndClose(Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance p3, Lcom/voxelbusters/essentialkit/cloudservices/q;

    invoke-direct {p3, p4, v0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/q;-><init>(Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ICloseSnapshotListener;Lcom/google/android/gms/games/SnapshotsClient;Lcom/google/android/gms/games/snapshot/Snapshot;)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public discardSnapshot(Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ICloseSnapshotListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotLoader;->getSnapshotClient()Lcom/google/android/gms/games/SnapshotsClient;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/games/SnapshotsClient;->discardAndClose(Lcom/google/android/gms/games/snapshot/Snapshot;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/voxelbusters/essentialkit/cloudservices/p;

    invoke-direct {v0, p2}, Lcom/voxelbusters/essentialkit/cloudservices/p;-><init>(Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ICloseSnapshotListener;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public loadSnapshots([Ljava/lang/String;Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ILoadSnapshotsListener;)V
    .locals 2

    invoke-direct {p0}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotLoader;->getSnapshotClient()Lcom/google/android/gms/games/SnapshotsClient;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/SnapshotsClient;->load(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/voxelbusters/essentialkit/cloudservices/m;

    invoke-direct {v1, p1, p2}, Lcom/voxelbusters/essentialkit/cloudservices/m;-><init>([Ljava/lang/String;Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ILoadSnapshotsListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public openSnapshot(Ljava/lang/String;ZILcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotLoader;->getSnapshotClient()Lcom/google/android/gms/games/SnapshotsClient;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/games/SnapshotsClient;->open(Ljava/lang/String;ZI)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/voxelbusters/essentialkit/cloudservices/o;

    invoke-direct {p2, v0, p4}, Lcom/voxelbusters/essentialkit/cloudservices/o;-><init>(Lcom/google/android/gms/games/SnapshotsClient;Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;->onFailure(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
