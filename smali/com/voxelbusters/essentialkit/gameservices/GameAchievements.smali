.class public Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private achievements:[Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;

.field private auth:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

.field private client:Lcom/google/android/gms/games/AchievementsClient;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;->achievements:[Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;->auth:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getAchievementsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object p1

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;->client:Lcom/google/android/gms/games/AchievementsClient;

    return-void
.end method

.method public static synthetic access$000(Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;)[Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;->achievements:[Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;[Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;)[Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;->achievements:[Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;)Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;->auth:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    return-object p0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;->achievements:[Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Achievement details of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed fetching achievement info for ID : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public loadAchievements(Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadAchievementsListener;)V
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;->client:Lcom/google/android/gms/games/AchievementsClient;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/games/AchievementsClient;->load(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/voxelbusters/essentialkit/gameservices/e;

    invoke-direct {v1, p0, p1}, Lcom/voxelbusters/essentialkit/gameservices/e;-><init>(Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadAchievementsListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    new-instance v1, Lcom/voxelbusters/essentialkit/gameservices/f;

    invoke-direct {v1, p1}, Lcom/voxelbusters/essentialkit/gameservices/f;-><init>(Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadAchievementsListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    new-instance v1, Lcom/voxelbusters/essentialkit/gameservices/g;

    invoke-direct {v1, p1}, Lcom/voxelbusters/essentialkit/gameservices/g;-><init>(Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadAchievementsListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public show(Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IViewListener;)V
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;->client:Lcom/google/android/gms/games/AchievementsClient;

    invoke-interface {v0}, Lcom/google/android/gms/games/AchievementsClient;->getAchievementsIntent()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/voxelbusters/essentialkit/gameservices/i;

    invoke-direct {v1, p0, p1}, Lcom/voxelbusters/essentialkit/gameservices/i;-><init>(Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IViewListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
