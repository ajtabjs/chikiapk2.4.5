.class public final Lcom/voxelbusters/essentialkit/cloudservices/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/games/snapshot/Snapshot;

.field public final synthetic b:Lcom/voxelbusters/essentialkit/cloudservices/g;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/cloudservices/g;Lcom/google/android/gms/games/snapshot/Snapshot;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/f;->b:Lcom/voxelbusters/essentialkit/cloudservices/g;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/cloudservices/f;->a:Lcom/google/android/gms/games/snapshot/Snapshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/f;->b:Lcom/voxelbusters/essentialkit/cloudservices/g;

    iget-object v0, p1, Lcom/voxelbusters/essentialkit/cloudservices/g;->c:Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/cloudservices/f;->a:Lcom/google/android/gms/games/snapshot/Snapshot;

    iget-object p1, p1, Lcom/voxelbusters/essentialkit/cloudservices/g;->b:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;

    invoke-static {v0, v1, p1}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->access$600(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;)V

    return-void
.end method
