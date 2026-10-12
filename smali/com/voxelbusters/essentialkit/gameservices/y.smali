.class public final Lcom/voxelbusters/essentialkit/gameservices/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IViewListener;

.field public final synthetic b:Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/y;->b:Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/gameservices/y;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IViewListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/y;->b:Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;->access$000(Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    new-instance v1, Lcom/voxelbusters/essentialkit/gameservices/x;

    invoke-direct {v1, p0}, Lcom/voxelbusters/essentialkit/gameservices/x;-><init>(Lcom/voxelbusters/essentialkit/gameservices/y;)V

    invoke-static {v0, p1, v1}, Lcom/voxelbusters/essentialkit/utilities/common/ConnectorFragment;->launchForResult(Landroid/app/Activity;Landroid/content/Intent;Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IFragmentResultListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/y;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IViewListener;

    new-instance v1, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    sget-object v2, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->Unknown:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IViewListener;->onClose(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    :goto_0
    return-void
.end method
