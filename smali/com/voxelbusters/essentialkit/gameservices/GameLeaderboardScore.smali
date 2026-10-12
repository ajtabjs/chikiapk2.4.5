.class public Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore$Builder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private leaderboardId:Ljava/lang/String;

.field private score:Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

.field private tag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/games/leaderboard/LeaderboardScore;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore;->leaderboardId:Ljava/lang/String;

    iput-object p3, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore;->score:Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    iput-object p4, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore;->tag:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/games/leaderboard/LeaderboardScore;Ljava/lang/String;Lcom/voxelbusters/essentialkit/gameservices/p;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/games/leaderboard/LeaderboardScore;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLastReportedDate()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore;->score:Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    invoke-interface {v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getTimestampMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getLeaderboardId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore;->leaderboardId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayer()Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;
    .locals 2

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$Builder;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore;->score:Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    invoke-interface {v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolder()Lcom/google/android/gms/games/Player;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$Builder;->withPlayer(Lcom/google/android/gms/games/Player;)Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$Builder;->build()Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;

    move-result-object v0

    return-object v0
.end method

.method public getRank()J
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore;->score:Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    invoke-interface {v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRank()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRawScore()J
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore;->score:Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    invoke-interface {v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRawScore()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore;->tag:Ljava/lang/String;

    return-object v0
.end method
