.class public Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard$Builder;
    }
.end annotation


# instance fields
.field private auth:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

.field private client:Lcom/google/android/gms/games/LeaderboardsClient;

.field private context:Landroid/content/Context;

.field private leaderboard:Lcom/google/android/gms/games/leaderboard/Leaderboard;

.field private leaderboardId:Ljava/lang/String;

.field private leaderboardScoreBufferCache:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/games/leaderboard/Leaderboard;Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->leaderboard:Lcom/google/android/gms/games/leaderboard/Leaderboard;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getLeaderboardsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/LeaderboardsClient;

    move-result-object p1

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->client:Lcom/google/android/gms/games/LeaderboardsClient;

    iput-object p3, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->auth:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/games/leaderboard/Leaderboard;Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;Lcom/voxelbusters/essentialkit/gameservices/k;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;-><init>(Landroid/content/Context;Lcom/google/android/gms/games/leaderboard/Leaderboard;Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->leaderboardId:Ljava/lang/String;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getLeaderboardsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/LeaderboardsClient;

    move-result-object p1

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->client:Lcom/google/android/gms/games/LeaderboardsClient;

    iput-object p3, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->auth:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;Lcom/voxelbusters/essentialkit/gameservices/k;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;)Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->auth:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;)Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->leaderboardScoreBufferCache:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;)Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->leaderboardScoreBufferCache:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    return-object p1
.end method

.method private getCollectionVariant(Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;)I
    .locals 1

    sget-object v0, Lcom/voxelbusters/essentialkit/gameservices/o;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x3

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private getTimeVariant(Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;)I
    .locals 2

    sget-object v0, Lcom/voxelbusters/essentialkit/gameservices/o;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private processScoresTask(Lcom/google/android/gms/tasks/Task;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadScoresListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;",
            ">;>;",
            "Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadScoresListener;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/m;

    invoke-direct {v0, p0, p2}, Lcom/voxelbusters/essentialkit/gameservices/m;-><init>(Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadScoresListener;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->leaderboard:Lcom/google/android/gms/games/leaderboard/Leaderboard;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getLeaderboardId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->leaderboardId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->leaderboard:Lcom/google/android/gms/games/leaderboard/Leaderboard;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadImage(Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ILoadAssetListener;)V
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->leaderboard:Lcom/google/android/gms/games/leaderboard/Leaderboard;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-interface {v0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getIconImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/voxelbusters/essentialkit/gameservices/ImageManagerUtility;->loadImage(Landroid/app/Activity;Landroid/net/Uri;Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ILoadAssetListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "Unable to load as no leaderboard instance available"

    invoke-interface {p1, v0}, Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ILoadAssetListener;->onFailure(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public loadLocalPlayerScore(Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadLocalPlayerScoreListener;)V
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->client:Lcom/google/android/gms/games/LeaderboardsClient;

    invoke-virtual {p0}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->getTimeVariant(Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->getCollectionVariant(Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;)I

    move-result p2

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/games/LeaderboardsClient;->loadCurrentPlayerLeaderboardScore(Ljava/lang/String;II)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/voxelbusters/essentialkit/gameservices/n;

    invoke-direct {p2, p0, p3}, Lcom/voxelbusters/essentialkit/gameservices/n;-><init>(Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadLocalPlayerScoreListener;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public loadMoreScores(IILcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadScoresListener;)V
    .locals 6

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->leaderboardScoreBufferCache:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    if-nez v0, :cond_0

    const-string p2, "No previous scores buffer found. So loading top scores by default. Make sure you call either loadTopScores or loadPlayerCenteredScores before calling this method."

    invoke-static {p2}, Lcom/voxelbusters/essentialkit/utilities/Logger;->warning(Ljava/lang/String;)V

    sget-object v1, Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;->AllTime:Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;

    sget-object v2, Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;->Public:Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;

    const/4 v4, 0x1

    move-object v0, p0

    move v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->loadTopScores(Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;IZLcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadScoresListener;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->client:Lcom/google/android/gms/games/LeaderboardsClient;

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-interface {v1, v0, p1, v2}, Lcom/google/android/gms/games/LeaderboardsClient;->loadMoreScores(Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->processScoresTask(Lcom/google/android/gms/tasks/Task;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadScoresListener;)V

    :goto_0
    return-void
.end method

.method public loadPlayerCenteredScores(Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;IZLcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadScoresListener;)V
    .locals 6

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->client:Lcom/google/android/gms/games/LeaderboardsClient;

    invoke-virtual {p0}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->getTimeVariant(Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;)I

    move-result v2

    invoke-direct {p0, p2}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->getCollectionVariant(Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;)I

    move-result v3

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/LeaderboardsClient;->loadPlayerCenteredScores(Ljava/lang/String;IIIZ)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-direct {p0, p1, p5}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->processScoresTask(Lcom/google/android/gms/tasks/Task;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadScoresListener;)V

    return-void
.end method

.method public loadTopScores(Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;IZLcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadScoresListener;)V
    .locals 6

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->client:Lcom/google/android/gms/games/LeaderboardsClient;

    invoke-virtual {p0}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->getTimeVariant(Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;)I

    move-result v2

    invoke-direct {p0, p2}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->getCollectionVariant(Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;)I

    move-result v3

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/LeaderboardsClient;->loadTopScores(Ljava/lang/String;IIIZ)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-direct {p0, p1, p5}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->processScoresTask(Lcom/google/android/gms/tasks/Task;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadScoresListener;)V

    return-void
.end method

.method public reportScore(JLcom/voxelbusters/essentialkit/gameservices/IGameServices$ISubmitScoreListener;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/games/PlayGames;->getLeaderboardsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/LeaderboardsClient;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    new-instance p1, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    sget-object p2, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->Unknown:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    const-string p4, "Google play client unavailable."

    invoke-direct {p1, p2, p4}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ISubmitScoreListener;->onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    :cond_0
    return-void

    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {p0}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3, p1, p2, p4}, Lcom/google/android/gms/games/LeaderboardsClient;->submitScore(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p4}, Lcom/google/android/gms/games/LeaderboardsClient;->submitScoreImmediate(Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object p2, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->context:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    new-instance p4, Lcom/voxelbusters/essentialkit/gameservices/l;

    invoke-direct {p4, p3}, Lcom/voxelbusters/essentialkit/gameservices/l;-><init>(Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ISubmitScoreListener;)V

    invoke-virtual {p1, p2, p4}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    :goto_0
    return-void
.end method

.method public show(Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IViewListener;)V
    .locals 2
    .annotation runtime Lcom/voxelbusters/essentialkit/utilities/common/annotations/RunOnUiThread;
    .end annotation

    invoke-virtual {p0}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->client:Lcom/google/android/gms/games/LeaderboardsClient;

    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->getTimeVariant(Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;)I

    move-result p1

    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/games/LeaderboardsClient;->getLeaderboardIntent(Ljava/lang/String;I)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/k;

    invoke-direct {v0, p0, p2}, Lcom/voxelbusters/essentialkit/gameservices/k;-><init>(Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IViewListener;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
