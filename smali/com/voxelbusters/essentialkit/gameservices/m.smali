.class public final Lcom/voxelbusters/essentialkit/gameservices/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadScoresListener;

.field public final synthetic b:Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadScoresListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/m;->b:Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/gameservices/m;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadScoresListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {p1}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;

    invoke-virtual {p1}, Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;->getScores()Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    move-result-object p1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/m;->b:Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->access$200(Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;)Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/m;->b:Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->access$200(Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;)Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->release()V

    :cond_0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/m;->b:Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;

    invoke-static {v0, p1}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->access$202(Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;)Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    new-instance v2, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore$Builder;

    iget-object v3, p0, Lcom/voxelbusters/essentialkit/gameservices/m;->b:Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;

    invoke-static {v3}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->access$000(Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/voxelbusters/essentialkit/gameservices/m;->b:Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;

    invoke-virtual {v4}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->freeze()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    invoke-virtual {v2, v3}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore$Builder;->withScore(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore$Builder;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore$Builder;->withTag(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore$Builder;->build()Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/m;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadScoresListener;

    if-eqz p1, :cond_3

    invoke-interface {p1, v0}, Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadScoresListener;->onSuccess(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/m;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadScoresListener;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    sget-object v2, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->Unknown:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    invoke-direct {v1, v2, p1}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadScoresListener;->onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/m;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadScoresListener;

    if-eqz v0, :cond_3

    const-string v0, "GameLeaderboard"

    const-string v1, "Failed to interate through scores. "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/m;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadScoresListener;

    new-instance v1, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    sget-object v2, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->Unknown:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadScoresListener;->onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    :cond_3
    :goto_1
    return-void
.end method
