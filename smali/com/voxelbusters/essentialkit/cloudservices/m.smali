.class public final Lcom/voxelbusters/essentialkit/cloudservices/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:[Ljava/lang/String;

.field public final synthetic b:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ILoadSnapshotsListener;


# direct methods
.method public constructor <init>([Ljava/lang/String;Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ILoadSnapshotsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/m;->a:[Ljava/lang/String;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/cloudservices/m;->b:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ILoadSnapshotsListener;

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

    check-cast p1, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {p1}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/m;->a:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    invoke-interface {v3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getUniqueName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Skipping the snapshotmeta as its ignored : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getUniqueName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->freeze()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/m;->b:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ILoadSnapshotsListener;

    invoke-interface {v0, v1}, Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ILoadSnapshotsListener;->onSuccess(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->close()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/m;->b:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ILoadSnapshotsListener;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ILoadSnapshotsListener;->onFailure(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
