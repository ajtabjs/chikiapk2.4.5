.class public final Lcom/voxelbusters/essentialkit/cloudservices/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/games/snapshot/Snapshot;

.field public final synthetic b:Lcom/voxelbusters/essentialkit/cloudservices/o;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/cloudservices/o;Lcom/google/android/gms/games/snapshot/Snapshot;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/n;->b:Lcom/voxelbusters/essentialkit/cloudservices/o;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/cloudservices/n;->a:Lcom/google/android/gms/games/snapshot/Snapshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/n;->b:Lcom/voxelbusters/essentialkit/cloudservices/o;

    iget-object p1, p1, Lcom/voxelbusters/essentialkit/cloudservices/o;->b:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/n;->a:Lcom/google/android/gms/games/snapshot/Snapshot;

    invoke-interface {p1, v0}, Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;->onSuccess(Lcom/google/android/gms/games/snapshot/Snapshot;)V

    return-void
.end method
