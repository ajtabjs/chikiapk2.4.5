.class public interface abstract Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOpenSnapshotListener"
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Lcom/google/android/gms/games/snapshot/Snapshot;)V
.end method
