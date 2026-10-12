.class public final Lcom/voxelbusters/essentialkit/cloudservices/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IInitialiseListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/b;->a:Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailed(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/b;->a:Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to login to google play services : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->onSyncronizeFinished(Ljava/lang/String;)V

    return-void
.end method

.method public final onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/b;->a:Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->access$000(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/b;->a:Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;

    new-instance v1, Lcom/voxelbusters/essentialkit/cloudservices/a;

    invoke-direct {v1, p0}, Lcom/voxelbusters/essentialkit/cloudservices/a;-><init>(Lcom/voxelbusters/essentialkit/cloudservices/b;)V

    invoke-static {v0, v1}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->access$200(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IActionCompleteListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/b;->a:Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->access$100(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;)V

    :goto_0
    return-void
.end method
