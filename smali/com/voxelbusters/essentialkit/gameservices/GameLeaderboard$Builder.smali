.class public Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private auth:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

.field private context:Landroid/content/Context;

.field private leaderboard:Lcom/google/android/gms/games/leaderboard/Leaderboard;

.field private leaderboardId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard$Builder;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard$Builder;->auth:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    return-void
.end method


# virtual methods
.method public build()Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;
    .locals 5

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard$Builder;->leaderboard:Lcom/google/android/gms/games/leaderboard/Leaderboard;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;

    iget-object v3, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard$Builder;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard$Builder;->auth:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    invoke-direct {v2, v3, v0, v4, v1}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;-><init>(Landroid/content/Context;Lcom/google/android/gms/games/leaderboard/Leaderboard;Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;Lcom/voxelbusters/essentialkit/gameservices/k;)V

    return-object v2

    :cond_0
    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard$Builder;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard$Builder;->leaderboardId:Ljava/lang/String;

    iget-object v4, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard$Builder;->auth:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;Lcom/voxelbusters/essentialkit/gameservices/k;)V

    return-object v0
.end method

.method public withLeaderboard(Lcom/google/android/gms/games/leaderboard/Leaderboard;)Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard$Builder;
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard$Builder;->leaderboard:Lcom/google/android/gms/games/leaderboard/Leaderboard;

    return-object p0
.end method

.method public withLeaderboardId(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard$Builder;
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard$Builder;->leaderboardId:Ljava/lang/String;

    return-object p0
.end method
