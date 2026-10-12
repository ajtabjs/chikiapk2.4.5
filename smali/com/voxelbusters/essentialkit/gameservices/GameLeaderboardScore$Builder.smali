.class public Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private leaderboardId:Ljava/lang/String;

.field private score:Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore$Builder;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore$Builder;->leaderboardId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore;
    .locals 7

    new-instance v6, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore$Builder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore$Builder;->leaderboardId:Ljava/lang/String;

    iget-object v3, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore$Builder;->score:Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    iget-object v4, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore$Builder;->tag:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/games/leaderboard/LeaderboardScore;Ljava/lang/String;Lcom/voxelbusters/essentialkit/gameservices/p;)V

    return-object v6
.end method

.method public withScore(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore$Builder;
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore$Builder;->score:Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    return-object p0
.end method

.method public withTag(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore$Builder;
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore$Builder;->tag:Ljava/lang/String;

    return-object p0
.end method
