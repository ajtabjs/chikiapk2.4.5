.class public Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sharedInstance:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;


# instance fields
.field private authConnectionInProgress:Z

.field private context:Landroid/content/Context;

.field private currentPlayer:Lcom/google/android/gms/games/Player;

.field private isInitialised:Z

.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxelbusters/essentialkit/socialauth/IAuthenticationListener;",
            ">;"
        }
    .end annotation
.end field

.field private signedIn:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->isInitialised:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->listeners:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$000(Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;)V
    .locals 0

    invoke-direct {p0}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->onConnectionSuccess()V

    return-void
.end method

.method public static synthetic access$100(Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->reportFailureAndAlertIfRequired(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->onConnectionFailure(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;)Lcom/google/android/gms/games/Player;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->currentPlayer:Lcom/google/android/gms/games/Player;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;Lcom/google/android/gms/games/Player;)Lcom/google/android/gms/games/Player;
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->currentPlayer:Lcom/google/android/gms/games/Player;

    return-object p1
.end method

.method public static synthetic access$502(Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->signedIn:Z

    return p1
.end method

.method public static synthetic access$600(Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;Lcom/google/android/gms/games/Player;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->notifySigninSuccessful(Lcom/google/android/gms/games/Player;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->notifySigninFailed(Ljava/lang/String;)V

    return-void
.end method

.method private cleanupAuthentication()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->signedIn:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->currentPlayer:Lcom/google/android/gms/games/Player;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;
    .locals 1

    sget-object v0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->sharedInstance:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    if-nez v0, :cond_0

    new-instance v0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    invoke-direct {v0, p0}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->sharedInstance:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    :cond_0
    sget-object p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->sharedInstance:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    return-object p0
.end method

.method static synthetic lambda$fetchServerAuthCode$1(Lcom/voxelbusters/essentialkit/socialauth/ISocialAuth$IFetchServerCredentials;Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/gamessignin/AuthResponse;

    invoke-virtual {p1}, Lcom/google/android/gms/games/gamessignin/AuthResponse;->getAuthCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/games/gamessignin/AuthResponse;->getGrantedScopes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/voxelbusters/essentialkit/socialauth/ISocialAuth$IFetchServerCredentials;->onSuccess(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed getting server auth code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->error(Ljava/lang/String;)V

    new-instance v0, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    sget-object v1, Lcom/voxelbusters/essentialkit/socialauth/GameAuthErrorCode;->Unknown:Lcom/voxelbusters/essentialkit/socialauth/GameAuthErrorCode;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/voxelbusters/essentialkit/socialauth/ISocialAuth$IFetchServerCredentials;->onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$fetchServerAuthCode$2(Lcom/google/android/gms/games/GamesSignInClient;Ljava/lang/String;ZLjava/util/List;Lcom/voxelbusters/essentialkit/socialauth/ISocialAuth$IFetchServerCredentials;)V
    .locals 0

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/gms/games/GamesSignInClient;->requestServerSideAccess(Ljava/lang/String;ZLjava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance p1, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth$$ExternalSyntheticLambda0;

    invoke-direct {p1, p4}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth$$ExternalSyntheticLambda0;-><init>(Lcom/voxelbusters/essentialkit/socialauth/ISocialAuth$IFetchServerCredentials;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private notifySigninFailed(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxelbusters/essentialkit/socialauth/IAuthenticationListener;

    invoke-interface {v1, p1}, Lcom/voxelbusters/essentialkit/socialauth/IAuthenticationListener;->onSigninFailed(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifySigninSuccessful(Lcom/google/android/gms/games/Player;)V
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxelbusters/essentialkit/socialauth/IAuthenticationListener;

    invoke-interface {v1, p1}, Lcom/voxelbusters/essentialkit/socialauth/IAuthenticationListener;->onSigninSuccessful(Lcom/google/android/gms/games/Player;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifySignoutSuccessful()V
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxelbusters/essentialkit/socialauth/IAuthenticationListener;

    invoke-interface {v1}, Lcom/voxelbusters/essentialkit/socialauth/IAuthenticationListener;->onSignoutSuccessful()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onConnectionFailure(Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->authConnectionInProgress:Z

    iput-boolean v0, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->signedIn:Z

    if-nez p1, :cond_0

    const-string p1, "Unknown error"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->notifySigninFailed(Ljava/lang/String;)V

    return-void
.end method

.method private onConnectionSuccess()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->authConnectionInProgress:Z

    const-string v0, "Authentication successful. Now fetching player info..."

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/games/PlayGames;->getPlayersClient(Landroid/app/Activity;)Lcom/google/android/gms/games/PlayersClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/games/PlayersClient;->getCurrentPlayer()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/voxelbusters/essentialkit/socialauth/d;

    invoke-direct {v1, p0}, Lcom/voxelbusters/essentialkit/socialauth/d;-><init>(Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private promptSignIn(Lcom/google/android/gms/games/GamesSignInClient;)V
    .locals 1

    invoke-interface {p1}, Lcom/google/android/gms/games/GamesSignInClient;->signIn()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/voxelbusters/essentialkit/socialauth/a;

    invoke-direct {v0, p0}, Lcom/voxelbusters/essentialkit/socialauth/a;-><init>(Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private reportFailureAndAlertIfRequired(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->context:Landroid/content/Context;

    const-string v1, "GAME_SERVICES_SHOW_ERROR_DIALOGS"

    invoke-static {v0, v1}, Lcom/voxelbusters/essentialkit/utilities/ResourcesUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/voxelbusters/essentialkit/socialauth/c;

    invoke-direct {v1, p0, p1}, Lcom/voxelbusters/essentialkit/socialauth/c;-><init>(Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->onConnectionFailure(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public AddListener(Lcom/voxelbusters/essentialkit/socialauth/IAuthenticationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized Authenticate(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->isInitialised:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/games/PlayGamesSdk;->initialize(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->isInitialised:Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->signedIn:Z

    iget-boolean v0, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->authConnectionInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/games/PlayGames;->getGamesSignInClient(Landroid/app/Activity;)Lcom/google/android/gms/games/GamesSignInClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/games/GamesSignInClient;->isAuthenticated()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, v0}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth$$ExternalSyntheticLambda2;-><init>(Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;ZLcom/google/android/gms/games/GamesSignInClient;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public RemoveListener(Lcom/voxelbusters/essentialkit/socialauth/IAuthenticationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public fetchServerAuthCode(Ljava/lang/String;ZLjava/util/List;Lcom/voxelbusters/essentialkit/socialauth/ISocialAuth$IFetchServerCredentials;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lcom/google/android/gms/games/gamessignin/AuthScope;",
            ">;",
            "Lcom/voxelbusters/essentialkit/socialauth/ISocialAuth$IFetchServerCredentials;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    sget-object p2, Lcom/voxelbusters/essentialkit/socialauth/GameAuthErrorCode;->ServerClientIdConfigurationMissing:Lcom/voxelbusters/essentialkit/socialauth/GameAuthErrorCode;

    const-string p3, "Server client id needs to be provided in the settings."

    invoke-direct {p1, p2, p3}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {p4, p1}, Lcom/voxelbusters/essentialkit/socialauth/ISocialAuth$IFetchServerCredentials;->onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/games/PlayGames;->getGamesSignInClient(Landroid/app/Activity;)Lcom/google/android/gms/games/GamesSignInClient;

    move-result-object v2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v7, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/gms/games/GamesSignInClient;Ljava/lang/String;ZLjava/util/List;Lcom/voxelbusters/essentialkit/socialauth/ISocialAuth$IFetchServerCredentials;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public getPlayerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->currentPlayer:Lcom/google/android/gms/games/Player;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSignedIn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->signedIn:Z

    return v0
.end method

.method synthetic lambda$Authenticate$0$com-voxelbusters-essentialkit-socialauth-GoogleAuth(ZLcom/google/android/gms/games/GamesSignInClient;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 0
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/AuthenticationResult;

    invoke-virtual {v0}, Lcom/google/android/gms/games/AuthenticationResult;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->onConnectionSuccess()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->promptSignIn(Lcom/google/android/gms/games/GamesSignInClient;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->onConnectionFailure(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public signOut()V
    .locals 1

    const-string v0, "Signing out..."

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->cleanupAuthentication()V

    invoke-direct {p0}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->notifySignoutSuccessful()V

    return-void
.end method
