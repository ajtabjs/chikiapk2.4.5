.class public final Lcom/voxelbusters/essentialkit/gameservices/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadLeaderboardsListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/gameservices/b0;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/gameservices/b0;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/a0;->a:Lcom/voxelbusters/essentialkit/gameservices/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error when loading leaderboards : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->error(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/a0;->a:Lcom/voxelbusters/essentialkit/gameservices/b0;

    iget-object v0, v0, Lcom/voxelbusters/essentialkit/gameservices/b0;->b:Lcom/voxelbusters/essentialkit/gameservices/GameServices;

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->access$100(Lcom/voxelbusters/essentialkit/gameservices/GameServices;)Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IPlayerAuthenticationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/a0;->a:Lcom/voxelbusters/essentialkit/gameservices/b0;

    iget-object v0, v0, Lcom/voxelbusters/essentialkit/gameservices/b0;->b:Lcom/voxelbusters/essentialkit/gameservices/GameServices;

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->access$100(Lcom/voxelbusters/essentialkit/gameservices/GameServices;)Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IPlayerAuthenticationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IPlayerAuthenticationListener;->onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/util/List;)V
    .locals 1

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/a0;->a:Lcom/voxelbusters/essentialkit/gameservices/b0;

    iget-object p1, p1, Lcom/voxelbusters/essentialkit/gameservices/b0;->b:Lcom/voxelbusters/essentialkit/gameservices/GameServices;

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->access$100(Lcom/voxelbusters/essentialkit/gameservices/GameServices;)Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IPlayerAuthenticationListener;

    move-result-object p1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/a0;->a:Lcom/voxelbusters/essentialkit/gameservices/b0;

    iget-object v0, v0, Lcom/voxelbusters/essentialkit/gameservices/b0;->a:Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;

    invoke-interface {p1, v0}, Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IPlayerAuthenticationListener;->onSuccess(Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;)V

    return-void
.end method
