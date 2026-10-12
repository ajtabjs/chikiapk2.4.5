.class public Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$Builder;
    }
.end annotation


# static fields
.field private static final MAX_FRIENDS_TO_LOAD:I = 0xc8


# instance fields
.field private context:Landroid/content/Context;

.field private player:Lcom/google/android/gms/games/Player;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/games/Player;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;->player:Lcom/google/android/gms/games/Player;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/games/Player;Lcom/voxelbusters/essentialkit/gameservices/w;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;-><init>(Landroid/content/Context;Lcom/google/android/gms/games/Player;)V

    return-void
.end method

.method private RequestFriendsAccessIfResolvable(Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadPlayersListener;Ljava/lang/Exception;)V
    .locals 2

    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/google/android/gms/common/api/ResolvableApiException;

    if-eqz v0, :cond_0

    :try_start_0
    check-cast p2, Lcom/google/android/gms/common/api/ResolvableApiException;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/ResolvableApiException;->getResolution()Landroid/app/PendingIntent;

    move-result-object p2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p2

    new-instance v1, Lcom/voxelbusters/essentialkit/gameservices/w;

    invoke-direct {v1, p0, p1}, Lcom/voxelbusters/essentialkit/gameservices/w;-><init>(Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadPlayersListener;)V

    invoke-static {v0, p2, v1}, Lcom/voxelbusters/essentialkit/utilities/common/ConnectorFragment;->launchForResult(Landroid/app/Activity;Landroid/content/IntentSender;Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IFragmentResultListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p1, :cond_0

    new-instance p2, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    sget-object v0, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->Unknown:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    const-string v1, "Failed to load friends"

    invoke-direct {p2, v0, v1}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadPlayersListener;->onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic access$000(Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public LoadProfileImage(ZLcom/voxelbusters/essentialkit/utilities/common/interfaces/ILoadAssetListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;->player:Lcom/google/android/gms/games/Player;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getHiResImageUri()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;->player:Lcom/google/android/gms/games/Player;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/voxelbusters/essentialkit/gameservices/ImageManagerUtility;->loadImage(Landroid/app/Activity;Landroid/net/Uri;Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ILoadAssetListener;)V

    return-void
.end method

.method public SendFriendRequest(Ljava/lang/String;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IViewListener;)V
    .locals 1
    .annotation runtime Lcom/voxelbusters/essentialkit/utilities/common/annotations/RunOnUiThread;
    .end annotation

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/games/PlayGames;->getPlayersClient(Landroid/app/Activity;)Lcom/google/android/gms/games/PlayersClient;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/games/PlayersClient;->getCompareProfileIntent(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/y;

    invoke-direct {v0, p0, p2}, Lcom/voxelbusters/essentialkit/gameservices/y;-><init>(Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IViewListener;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;->player:Lcom/google/android/gms/games/Player;

    invoke-interface {v0}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;->player:Lcom/google/android/gms/games/Player;

    invoke-interface {v0}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayer()Lcom/google/android/gms/games/Player;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;->player:Lcom/google/android/gms/games/Player;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;->player:Lcom/google/android/gms/games/Player;

    invoke-interface {v0}, Lcom/google/android/gms/games/Player;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$loadFriends$0$com-voxelbusters-essentialkit-gameservices-GamePlayer(Ljava/lang/Exception;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadPlayersListener;Ljava/util/ArrayList;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 0
    if-eqz p1, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Error loading friends. Will try to resolve if resolvable : "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/voxelbusters/essentialkit/utilities/Logger;->warning(Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;->RequestFriendsAccessIfResolvable(Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadPlayersListener;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2, p3}, Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadPlayersListener;->onSuccess(Ljava/util/List;)V

    :cond_1
    :goto_0
    invoke-interface {p4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method synthetic lambda$loadFriends$1$com-voxelbusters-essentialkit-gameservices-GamePlayer(Landroid/os/Handler;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadPlayersListener;Ljava/util/concurrent/ExecutorService;)V
    .locals 7

    .line 0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/games/PlayGames;->getPlayersClient(Landroid/app/Activity;)Lcom/google/android/gms/games/PlayersClient;

    move-result-object v0

    const/16 v1, 0xc8

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/PlayersClient;->loadFriends(IZ)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {v1}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/PlayerBuffer;

    invoke-virtual {v1}, Lcom/google/android/gms/games/PlayerBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/Player;

    new-instance v5, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$Builder;

    iget-object v6, p0, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-interface {v3}, Lcom/google/android/gms/games/Player;->freeze()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/Player;

    invoke-virtual {v5, v3}, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$Builder;->withPlayer(Lcom/google/android/gms/games/Player;)Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$Builder;->build()Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/games/PlayerBuffer;->release()V

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v2

    new-instance v6, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$$ExternalSyntheticLambda0;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$$ExternalSyntheticLambda0;-><init>(Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;Ljava/lang/Exception;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadPlayersListener;Ljava/util/ArrayList;Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {p1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public loadFriends(Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadPlayersListener;)V
    .locals 3
    .annotation runtime Lcom/voxelbusters/essentialkit/utilities/common/annotations/RunOnUiThread;
    .end annotation

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$$ExternalSyntheticLambda1;-><init>(Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;Landroid/os/Handler;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadPlayersListener;Ljava/util/concurrent/ExecutorService;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
