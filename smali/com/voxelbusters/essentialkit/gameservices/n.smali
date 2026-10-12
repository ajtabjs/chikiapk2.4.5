.class public final Lcom/voxelbusters/essentialkit/gameservices/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadLocalPlayerScoreListener;

.field public final synthetic b:Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadLocalPlayerScoreListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/n;->b:Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/gameservices/n;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadLocalPlayerScoreListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {p1}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loaded local player score : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/n;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadLocalPlayerScoreListener;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore$Builder;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/gameservices/n;->b:Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;

    invoke-static {v1}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->access$000(Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/gameservices/n;->b:Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;

    invoke-virtual {v2}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore$Builder;->withScore(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore$Builder;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore$Builder;->withTag(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore$Builder;->build()Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore;

    move-result-object p1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/n;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadLocalPlayerScoreListener;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadLocalPlayerScoreListener;->onSuccess(Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/n;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadLocalPlayerScoreListener;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    sget-object v2, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->Unknown:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    invoke-direct {v1, v2, p1}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadLocalPlayerScoreListener;->onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    :cond_2
    :goto_1
    return-void
.end method
