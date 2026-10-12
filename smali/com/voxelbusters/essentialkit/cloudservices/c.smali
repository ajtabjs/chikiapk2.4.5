.class public final Lcom/voxelbusters/essentialkit/cloudservices/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ICloseSnapshotListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/cloudservices/d;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/cloudservices/d;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/c;->a:Lcom/voxelbusters/essentialkit/cloudservices/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/c;->a:Lcom/voxelbusters/essentialkit/cloudservices/d;

    iget-object v0, v0, Lcom/voxelbusters/essentialkit/cloudservices/d;->a:Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;

    invoke-virtual {v0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->onSyncronizeFinished(Ljava/lang/String;)V

    return-void
.end method

.method public final onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/c;->a:Lcom/voxelbusters/essentialkit/cloudservices/d;

    iget-object v0, v0, Lcom/voxelbusters/essentialkit/cloudservices/d;->a:Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->onSyncronizeFinished(Ljava/lang/String;)V

    return-void
.end method
