.class public final Lcom/voxelbusters/essentialkit/gameservices/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCanceledListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadLeaderboardsListener;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadLeaderboardsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/t;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadLeaderboardsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCanceled()V
    .locals 4

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/t;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadLeaderboardsListener;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    sget-object v2, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->Unknown:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    const-string v3, "Task cancelled."

    invoke-direct {v1, v2, v3}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadLeaderboardsListener;->onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    :cond_0
    return-void
.end method
