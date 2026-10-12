.class public interface abstract Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadLeaderboardsListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/essentialkit/gameservices/IGameServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ILoadLeaderboardsListener"
.end annotation


# virtual methods
.method public abstract onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V
.end method

.method public abstract onSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;",
            ">;)V"
        }
    .end annotation
.end method
