.class public Lcom/voxelbusters/essentialkit/gameservices/GameServices;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IFeature;
.implements Lcom/voxelbusters/essentialkit/socialauth/IAuthenticationListener;


# static fields
.field private static final MAX_FRIENDS_TO_LOAD:I = 0xc8


# instance fields
.field private final TAG:Ljava/lang/String;

.field private achievements:Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;

.field private auth:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

.field private context:Landroid/content/Context;

.field private leaderboards:Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;

.field private listener:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IPlayerAuthenticationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GameServices"

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$000(Lcom/voxelbusters/essentialkit/gameservices/GameServices;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->getServerCredentialAdditionalScopes(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/voxelbusters/essentialkit/gameservices/GameServices;)Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IPlayerAuthenticationListener;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->listener:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IPlayerAuthenticationListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/voxelbusters/essentialkit/gameservices/GameServices;)Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->leaderboards:Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;

    return-object p0
.end method

.method private getAuthScope(Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;)Lcom/google/android/gms/games/gamessignin/AuthScope;
    .locals 1

    sget-object v0, Lcom/voxelbusters/essentialkit/gameservices/c0;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, "Specified additionalScope is not handled. Report to the publisher of this plugin. Returning PROFILE scope by default"

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->error(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/games/gamessignin/AuthScope;->PROFILE:Lcom/google/android/gms/games/gamessignin/AuthScope;

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/android/gms/games/gamessignin/AuthScope;->PROFILE:Lcom/google/android/gms/games/gamessignin/AuthScope;

    return-object p1

    :cond_1
    sget-object p1, Lcom/google/android/gms/games/gamessignin/AuthScope;->OPEN_ID:Lcom/google/android/gms/games/gamessignin/AuthScope;

    return-object p1

    :cond_2
    sget-object p1, Lcom/google/android/gms/games/gamessignin/AuthScope;->EMAIL:Lcom/google/android/gms/games/gamessignin/AuthScope;

    return-object p1
.end method

.method private getAuthScopes(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/games/gamessignin/AuthScope;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;

    sget-object v2, Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;->None:Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->getAuthScope(Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;)Lcom/google/android/gms/games/gamessignin/AuthScope;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getServerCredentialAdditionalScope(Lcom/google/android/gms/games/gamessignin/AuthScope;)Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;
    .locals 1

    sget-object v0, Lcom/voxelbusters/essentialkit/gameservices/c0;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, "Specified auth scope is not handled. Report to the publisher of this plugin. Returning None scope by default"

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->error(Ljava/lang/String;)V

    sget-object p1, Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;->None:Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;

    return-object p1

    :cond_0
    sget-object p1, Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;->Profile:Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;

    return-object p1

    :cond_1
    sget-object p1, Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;->OpenId:Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;

    return-object p1

    :cond_2
    sget-object p1, Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;->Email:Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;

    return-object p1
.end method

.method private getServerCredentialAdditionalScopes(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/games/gamessignin/AuthScope;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/gamessignin/AuthScope;

    invoke-direct {p0, v1}, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->getServerCredentialAdditionalScope(Lcom/google/android/gms/games/gamessignin/AuthScope;)Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic lambda$loadPlayers$0(Ljava/util/ArrayList;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadPlayersListener;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Error loading user friend details."

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->warning(Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadPlayersListener;->onSuccess(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private loadServerCredentials(Ljava/lang/String;ZLjava/util/List;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadServerCredentials;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;",
            ">;",
            "Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadServerCredentials;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->auth:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    invoke-direct {p0, p3}, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->getAuthScopes(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    new-instance v1, Lcom/voxelbusters/essentialkit/gameservices/z;

    invoke-direct {v1, p0, p4}, Lcom/voxelbusters/essentialkit/gameservices/z;-><init>(Lcom/voxelbusters/essentialkit/gameservices/GameServices;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadServerCredentials;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->fetchServerAuthCode(Ljava/lang/String;ZLjava/util/List;Lcom/voxelbusters/essentialkit/socialauth/ISocialAuth$IFetchServerCredentials;)V

    return-void
.end method


# virtual methods
.method public authenticate(ZLcom/voxelbusters/essentialkit/gameservices/IGameServices$IPlayerAuthenticationListener;)V
    .locals 0
    .annotation runtime Lcom/voxelbusters/essentialkit/utilities/common/annotations/RunOnUiThread;
    .end annotation

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->listener:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IPlayerAuthenticationListener;

    iget-object p2, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->getInstance(Landroid/content/Context;)Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    move-result-object p2

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->auth:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    invoke-virtual {p2, p0}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->AddListener(Lcom/voxelbusters/essentialkit/socialauth/IAuthenticationListener;)V

    iget-object p2, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->auth:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    invoke-virtual {p2, p1}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->Authenticate(Z)V

    return-void
.end method

.method public createAchievement(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->achievements:Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;

    invoke-virtual {v0, p1}, Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;->get(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;

    move-result-object p1

    return-object p1
.end method

.method public createLeaderboard(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->leaderboards:Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;

    invoke-virtual {v0, p1}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;->get(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;

    move-result-object p1

    return-object p1
.end method

.method public createScore(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore;
    .locals 2

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore$Builder;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore$Builder;->build()Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboardScore;

    move-result-object p1

    return-object p1
.end method

.method public getAchievement(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->achievements:Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;

    invoke-virtual {v0, p1}, Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;->get(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;

    move-result-object p1

    return-object p1
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 1

    const-string v0, "Game Services"

    return-object v0
.end method

.method synthetic lambda$loadPlayers$1$com-voxelbusters-essentialkit-gameservices-GameServices([Ljava/lang/String;Landroid/os/Handler;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadPlayersListener;)V
    .locals 7

    .line 0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/gms/games/PlayGames;->getPlayersClient(Landroid/app/Activity;)Lcom/google/android/gms/games/PlayersClient;

    move-result-object v1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    invoke-interface {v1, v4}, Lcom/google/android/gms/games/PlayersClient;->loadPlayer(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    :goto_1
    invoke-virtual {v4}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v5

    if-nez v5, :cond_0

    const-wide/16 v5, 0x1

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {v4}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/games/Player;

    new-instance v5, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$Builder;

    iget-object v6, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$Builder;->withPlayer(Lcom/google/android/gms/games/Player;)Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$Builder;->build()Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/voxelbusters/essentialkit/gameservices/GameServices$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0, p3}, Lcom/voxelbusters/essentialkit/gameservices/GameServices$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadPlayersListener;)V

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public loadAchievements(Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadAchievementsListener;)V
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->achievements:Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;

    invoke-virtual {v0, p1}, Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;->loadAchievements(Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadAchievementsListener;)V

    return-void
.end method

.method public loadLeaderboards(Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadLeaderboardsListener;)V
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->leaderboards:Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;

    invoke-virtual {v0, p1}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;->load(Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadLeaderboardsListener;)V

    return-void
.end method

.method public loadPlayer(Ljava/lang/String;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadPlayersListener;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2}, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->loadPlayers([Ljava/lang/String;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadPlayersListener;)V

    return-void
.end method

.method public loadPlayers([Ljava/lang/String;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadPlayersListener;)V
    .locals 3

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->auth:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    invoke-virtual {v0}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/voxelbusters/essentialkit/gameservices/GameServices$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/voxelbusters/essentialkit/gameservices/GameServices$$ExternalSyntheticLambda1;-><init>(Lcom/voxelbusters/essentialkit/gameservices/GameServices;[Ljava/lang/String;Landroid/os/Handler;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadPlayersListener;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    new-instance p1, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    sget-object v0, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->NotAuthenticated:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    const-string v1, "Player not authenticated."

    invoke-direct {p1, v0, v1}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadPlayersListener;->onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public loadServerCredentials(Ljava/lang/String;Z[ILcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadServerCredentials;)V
    .locals 4
    .annotation runtime Lcom/voxelbusters/essentialkit/utilities/common/annotations/RunOnUiThread;
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    invoke-static {}, Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;->values()[Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;

    move-result-object v2

    aget v3, p3, v1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->loadServerCredentials(Ljava/lang/String;ZLjava/util/List;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadServerCredentials;)V

    return-void
.end method

.method public onSigninFailed(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/voxelbusters/essentialkit/utilities/common/annotations/SkipInCodeGenerator;
    .end annotation

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->listener:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IPlayerAuthenticationListener;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailure :  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->error(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->listener:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IPlayerAuthenticationListener;

    new-instance v1, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    sget-object v2, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->Unknown:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    invoke-direct {v1, v2, p1}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IPlayerAuthenticationListener;->onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    :cond_0
    return-void
.end method

.method public onSigninSuccessful(Lcom/google/android/gms/games/Player;)V
    .locals 3
    .annotation runtime Lcom/voxelbusters/essentialkit/utilities/common/annotations/SkipInCodeGenerator;
    .end annotation

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->auth:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;-><init>(Landroid/content/Context;Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;)V

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->achievements:Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->auth:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;-><init>(Landroid/content/Context;Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;)V

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->leaderboards:Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$Builder;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$Builder;->withPlayer(Lcom/google/android/gms/games/Player;)Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$Builder;->build()Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;

    move-result-object p1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->achievements:Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;

    new-instance v1, Lcom/voxelbusters/essentialkit/gameservices/b0;

    invoke-direct {v1, p0, p1}, Lcom/voxelbusters/essentialkit/gameservices/b0;-><init>(Lcom/voxelbusters/essentialkit/gameservices/GameServices;Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;)V

    invoke-virtual {v0, v1}, Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;->loadAchievements(Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadAchievementsListener;)V

    return-void
.end method

.method public onSignoutSuccessful()V
    .locals 2
    .annotation runtime Lcom/voxelbusters/essentialkit/utilities/common/annotations/SkipInCodeGenerator;
    .end annotation

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->listener:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IPlayerAuthenticationListener;

    if-eqz v0, :cond_0

    const-string v0, "signed out forcefully."

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->listener:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IPlayerAuthenticationListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IPlayerAuthenticationListener;->onSuccess(Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;)V

    :cond_0
    return-void
.end method

.method public showAchievements(Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IViewListener;)V
    .locals 1
    .annotation runtime Lcom/voxelbusters/essentialkit/utilities/common/annotations/RunOnUiThread;
    .end annotation

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->achievements:Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;

    invoke-virtual {v0, p1}, Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;->show(Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IViewListener;)V

    return-void
.end method

.method public showLeaderboards(Ljava/lang/String;Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IViewListener;)V
    .locals 1
    .annotation runtime Lcom/voxelbusters/essentialkit/utilities/common/annotations/RunOnUiThread;
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->leaderboards:Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;

    invoke-virtual {p1, p3}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;->show(Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IViewListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->leaderboards:Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;

    invoke-virtual {v0, p1}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;->get(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->show(Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IViewListener;)V

    :goto_0
    return-void
.end method

.method public signout()V
    .locals 1
    .annotation runtime Lcom/voxelbusters/essentialkit/utilities/common/annotations/RunOnUiThread;
    .end annotation

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->auth:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    invoke-virtual {v0}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->signOut()V

    return-void
.end method
