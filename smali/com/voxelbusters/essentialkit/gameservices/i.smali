.class public final Lcom/voxelbusters/essentialkit/gameservices/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IViewListener;

.field public final synthetic b:Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/i;->b:Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/gameservices/i;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IViewListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/i;->b:Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;->access$000(Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/voxelbusters/essentialkit/gameservices/h;

    invoke-direct {v1, p0}, Lcom/voxelbusters/essentialkit/gameservices/h;-><init>(Lcom/voxelbusters/essentialkit/gameservices/i;)V

    invoke-static {p1, v0, v1}, Lcom/voxelbusters/essentialkit/utilities/common/ConnectorFragment;->launchIntent(Landroid/content/Intent;Landroid/app/Activity;Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IFragmentResultListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/i;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IViewListener;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    sget-object v1, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->Unknown:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    const-string v2, "Failed to launch view"

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IViewListener;->onClose(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    :cond_1
    :goto_0
    return-void
.end method
