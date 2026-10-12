.class public final Lcom/voxelbusters/essentialkit/cloudservices/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/i;->a:Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroid/content/Intent;

    .line 1
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/i;->a:Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->access$700(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/voxelbusters/essentialkit/cloudservices/h;

    invoke-direct {v1}, Lcom/voxelbusters/essentialkit/cloudservices/h;-><init>()V

    invoke-static {p1, v0, v1}, Lcom/voxelbusters/essentialkit/utilities/common/ConnectorFragment;->launchIntent(Landroid/content/Intent;Landroid/app/Activity;Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IFragmentResultListener;)V

    return-void
.end method
