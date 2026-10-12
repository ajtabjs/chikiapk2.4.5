.class public final Lcom/voxelbusters/essentialkit/cloudservices/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/d;->a:Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/d;->a:Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;

    invoke-virtual {v0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->onSyncronizeFinished(Ljava/lang/String;)V

    return-void
.end method

.method public final onSuccess(Lcom/google/android/gms/games/snapshot/Snapshot;)V
    .locals 4

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/d;->a:Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/cloudservices/d;->a:Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;

    invoke-static {v2}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->access$300(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    new-instance v2, Lcom/voxelbusters/essentialkit/cloudservices/c;

    invoke-direct {v2, p0}, Lcom/voxelbusters/essentialkit/cloudservices/c;-><init>(Lcom/voxelbusters/essentialkit/cloudservices/d;)V

    invoke-static {p1, v0, v1, v2}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->access$400(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;JLcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ICloseSnapshotListener;)V

    return-void
.end method
