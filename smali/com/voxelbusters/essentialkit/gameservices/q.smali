.class public final Lcom/voxelbusters/essentialkit/gameservices/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadLeaderboardsListener;

.field public final synthetic b:Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadLeaderboardsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/q;->b:Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/gameservices/q;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadLeaderboardsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Lcom/google/android/gms/games/AnnotatedData;

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/games/leaderboard/Leaderboard;

    new-instance v3, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard$Builder;

    iget-object v4, p0, Lcom/voxelbusters/essentialkit/gameservices/q;->b:Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;

    invoke-static {v4}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;->access$000(Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/voxelbusters/essentialkit/gameservices/q;->b:Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;

    invoke-static {v5}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;->access$100(Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;)Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard$Builder;-><init>(Landroid/content/Context;Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;)V

    invoke-interface {v2}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->freeze()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/games/leaderboard/Leaderboard;

    invoke-virtual {v3, v2}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard$Builder;->withLeaderboard(Lcom/google/android/gms/games/leaderboard/Leaderboard;)Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard$Builder;->build()Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->release()V

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/q;->b:Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;

    invoke-static {p1, v0}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;->access$202(Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/q;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadLeaderboardsListener;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/q;->b:Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;->access$200(Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadLeaderboardsListener;->onSuccess(Ljava/util/List;)V

    :cond_1
    return-void
.end method
