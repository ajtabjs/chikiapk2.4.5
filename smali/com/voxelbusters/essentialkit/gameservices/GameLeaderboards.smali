.class public Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private auth:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

.field private client:Lcom/google/android/gms/games/LeaderboardsClient;

.field private context:Landroid/content/Context;

.field private leaderboards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;->leaderboards:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;->auth:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getLeaderboardsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/LeaderboardsClient;

    move-result-object p1

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;->client:Lcom/google/android/gms/games/LeaderboardsClient;

    return-void
.end method

.method public static synthetic access$000(Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;)Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;->auth:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;->leaderboards:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;->leaderboards:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;->leaderboards:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;

    invoke-virtual {v1}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard$Builder;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;->auth:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard$Builder;-><init>(Landroid/content/Context;Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;)V

    invoke-virtual {v0, p1}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard$Builder;->withLeaderboardId(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard$Builder;->build()Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;

    move-result-object p1

    return-object p1
.end method

.method public load(Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadLeaderboardsListener;)V
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;->client:Lcom/google/android/gms/games/LeaderboardsClient;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/games/LeaderboardsClient;->loadLeaderboardMetadata(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/voxelbusters/essentialkit/gameservices/q;

    invoke-direct {v1, p0, p1}, Lcom/voxelbusters/essentialkit/gameservices/q;-><init>(Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadLeaderboardsListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    new-instance v1, Lcom/voxelbusters/essentialkit/gameservices/s;

    invoke-direct {v1, p1}, Lcom/voxelbusters/essentialkit/gameservices/s;-><init>(Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadLeaderboardsListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    new-instance v1, Lcom/voxelbusters/essentialkit/gameservices/t;

    invoke-direct {v1, p1}, Lcom/voxelbusters/essentialkit/gameservices/t;-><init>(Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadLeaderboardsListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public show(Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IViewListener;)V
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;->client:Lcom/google/android/gms/games/LeaderboardsClient;

    invoke-interface {v0}, Lcom/google/android/gms/games/LeaderboardsClient;->getAllLeaderboardsIntent()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/voxelbusters/essentialkit/gameservices/v;

    invoke-direct {v1, p0, p1}, Lcom/voxelbusters/essentialkit/gameservices/v;-><init>(Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IViewListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
