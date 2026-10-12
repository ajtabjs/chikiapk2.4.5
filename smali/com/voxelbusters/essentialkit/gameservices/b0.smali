.class public final Lcom/voxelbusters/essentialkit/gameservices/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadAchievementsListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;

.field public final synthetic b:Lcom/voxelbusters/essentialkit/gameservices/GameServices;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/gameservices/GameServices;Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/b0;->b:Lcom/voxelbusters/essentialkit/gameservices/GameServices;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/gameservices/b0;->a:Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error when loading achievements : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->error(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/b0;->b:Lcom/voxelbusters/essentialkit/gameservices/GameServices;

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->access$100(Lcom/voxelbusters/essentialkit/gameservices/GameServices;)Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IPlayerAuthenticationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/b0;->b:Lcom/voxelbusters/essentialkit/gameservices/GameServices;

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->access$100(Lcom/voxelbusters/essentialkit/gameservices/GameServices;)Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IPlayerAuthenticationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IPlayerAuthenticationListener;->onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    :cond_0
    return-void
.end method

.method public final onSuccess(Lcom/voxelbusters/essentialkit/utilities/common/ArrayBuffer;)V
    .locals 1

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/b0;->b:Lcom/voxelbusters/essentialkit/gameservices/GameServices;

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->access$200(Lcom/voxelbusters/essentialkit/gameservices/GameServices;)Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;

    move-result-object p1

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/a0;

    invoke-direct {v0, p0}, Lcom/voxelbusters/essentialkit/gameservices/a0;-><init>(Lcom/voxelbusters/essentialkit/gameservices/b0;)V

    invoke-virtual {p1, v0}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;->load(Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadLeaderboardsListener;)V

    return-void
.end method
