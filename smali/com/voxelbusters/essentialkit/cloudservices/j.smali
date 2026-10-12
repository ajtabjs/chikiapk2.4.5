.class public final Lcom/voxelbusters/essentialkit/cloudservices/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ILoadSnapshotsContentsListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/cloudservices/k;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/cloudservices/k;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/j;->a:Lcom/voxelbusters/essentialkit/cloudservices/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Lorg/json/JSONObject;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting ESSENTIAL_KIT_CLOUD_SERVICES_OTHER_SNAPSHOTS_BACKUP to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/j;->a:Lcom/voxelbusters/essentialkit/cloudservices/k;

    iget-object v0, v0, Lcom/voxelbusters/essentialkit/cloudservices/k;->b:Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->access$802(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/j;->a:Lcom/voxelbusters/essentialkit/cloudservices/k;

    iget-object p1, p1, Lcom/voxelbusters/essentialkit/cloudservices/k;->b:Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->access$002(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;Z)Z

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/j;->a:Lcom/voxelbusters/essentialkit/cloudservices/k;

    iget-object p1, p1, Lcom/voxelbusters/essentialkit/cloudservices/k;->a:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IActionCompleteListener;

    invoke-interface {p1}, Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IActionCompleteListener;->onComplete()V

    return-void
.end method
