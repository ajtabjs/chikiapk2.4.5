.class public final Lcom/voxelbusters/essentialkit/cloudservices/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

.field public final synthetic b:Lorg/json/JSONObject;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ILoadSnapshotsContentsListener;

.field public final synthetic e:Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Lorg/json/JSONObject;Ljava/util/List;Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ILoadSnapshotsContentsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/l;->e:Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/cloudservices/l;->a:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    iput-object p3, p0, Lcom/voxelbusters/essentialkit/cloudservices/l;->b:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/voxelbusters/essentialkit/cloudservices/l;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/voxelbusters/essentialkit/cloudservices/l;->d:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ILoadSnapshotsContentsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 3

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/l;->e:Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/l;->b:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/cloudservices/l;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/cloudservices/l;->d:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ILoadSnapshotsContentsListener;

    invoke-static {p1, v0, v1, v2}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->access$900(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;Lorg/json/JSONObject;Ljava/util/List;Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ILoadSnapshotsContentsListener;)V

    return-void
.end method

.method public final onSuccess(Lcom/google/android/gms/games/snapshot/Snapshot;)V
    .locals 3

    const-string v0, "Contents of : "

    const-string v1, "Byte value : "

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->readFully()[B

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/l;->a:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getUniqueName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " => (Byte64 encoded : ) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/l;->b:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/cloudservices/l;->a:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    invoke-interface {v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getUniqueName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/l;->e:Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/l;->b:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/cloudservices/l;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/cloudservices/l;->d:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ILoadSnapshotsContentsListener;

    invoke-static {p1, v0, v1, v2}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->access$900(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;Lorg/json/JSONObject;Ljava/util/List;Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ILoadSnapshotsContentsListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
