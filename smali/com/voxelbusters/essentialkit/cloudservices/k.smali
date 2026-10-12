.class public final Lcom/voxelbusters/essentialkit/cloudservices/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ILoadSnapshotsListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IActionCompleteListener;

.field public final synthetic b:Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IActionCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/k;->b:Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/cloudservices/k;->a:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IActionCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed fetching backups with error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->error(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/k;->b:Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->access$002(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;Z)Z

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/k;->a:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IActionCompleteListener;

    invoke-interface {p1}, Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IActionCompleteListener;->onComplete()V

    return-void
.end method

.method public final onSuccess(Ljava/util/List;)V
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/cloudservices/k;->b:Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;

    new-instance v2, Lcom/voxelbusters/essentialkit/cloudservices/j;

    invoke-direct {v2, p0}, Lcom/voxelbusters/essentialkit/cloudservices/j;-><init>(Lcom/voxelbusters/essentialkit/cloudservices/k;)V

    invoke-static {v1, v0, p1, v2}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->access$900(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;Lorg/json/JSONObject;Ljava/util/List;Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ILoadSnapshotsContentsListener;)V

    return-void
.end method
