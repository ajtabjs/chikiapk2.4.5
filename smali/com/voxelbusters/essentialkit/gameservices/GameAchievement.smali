.class public Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxelbusters/essentialkit/gameservices/GameAchievement$Builder;
    }
.end annotation


# instance fields
.field private achievement:Lcom/google/android/gms/games/achievement/Achievement;

.field private client:Lcom/google/android/gms/games/AchievementsClient;

.field private context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/games/achievement/Achievement;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->achievement:Lcom/google/android/gms/games/achievement/Achievement;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getAchievementsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object p1

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->client:Lcom/google/android/gms/games/AchievementsClient;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/games/achievement/Achievement;Lcom/voxelbusters/essentialkit/gameservices/a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;-><init>(Landroid/content/Context;Lcom/google/android/gms/games/achievement/Achievement;)V

    return-void
.end method


# virtual methods
.method public getCurrentSteps()I
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->achievement:Lcom/google/android/gms/games/achievement/Achievement;

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->achievement:Lcom/google/android/gms/games/achievement/Achievement;

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getCurrentSteps()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->achievement:Lcom/google/android/gms/games/achievement/Achievement;

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->achievement:Lcom/google/android/gms/games/achievement/Achievement;

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->achievement:Lcom/google/android/gms/games/achievement/Achievement;

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastReportedDate()Ljava/util/Date;
    .locals 4

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->achievement:Lcom/google/android/gms/games/achievement/Achievement;

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getLastUpdatedTimestamp()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->achievement:Lcom/google/android/gms/games/achievement/Achievement;

    invoke-interface {v1}, Lcom/google/android/gms/games/achievement/Achievement;->getLastUpdatedTimestamp()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->achievement:Lcom/google/android/gms/games/achievement/Achievement;

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalSteps()I
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->achievement:Lcom/google/android/gms/games/achievement/Achievement;

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->achievement:Lcom/google/android/gms/games/achievement/Achievement;

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getTotalSteps()I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public getType()I
    .locals 1
    .annotation runtime Lcom/voxelbusters/essentialkit/utilities/common/annotations/SkipInCodeGenerator;
    .end annotation

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->achievement:Lcom/google/android/gms/games/achievement/Achievement;

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v0

    return v0
.end method

.method public isHidden()Z
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->achievement:Lcom/google/android/gms/games/achievement/Achievement;

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRevealed()Z
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->achievement:Lcom/google/android/gms/games/achievement/Achievement;

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isUnlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->achievement:Lcom/google/android/gms/games/achievement/Achievement;

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadRevealedImage(Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ILoadAssetListener;)V
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->achievement:Lcom/google/android/gms/games/achievement/Achievement;

    invoke-interface {v1}, Lcom/google/android/gms/games/achievement/Achievement;->getRevealedImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/voxelbusters/essentialkit/gameservices/ImageManagerUtility;->loadImage(Landroid/app/Activity;Landroid/net/Uri;Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ILoadAssetListener;)V

    return-void
.end method

.method public loadUnlockedImage(Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ILoadAssetListener;)V
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->achievement:Lcom/google/android/gms/games/achievement/Achievement;

    invoke-interface {v1}, Lcom/google/android/gms/games/achievement/Achievement;->getUnlockedImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/voxelbusters/essentialkit/gameservices/ImageManagerUtility;->loadImage(Landroid/app/Activity;Landroid/net/Uri;Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ILoadAssetListener;)V

    return-void
.end method

.method public reportProgress(ILcom/voxelbusters/essentialkit/gameservices/IGameServices$IReportProgressListener;)V
    .locals 3

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->achievement:Lcom/google/android/gms/games/achievement/Achievement;

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->achievement:Lcom/google/android/gms/games/achievement/Achievement;

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "Reveal the achievement now!"

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->client:Lcom/google/android/gms/games/AchievementsClient;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->achievement:Lcom/google/android/gms/games/achievement/Achievement;

    invoke-interface {v1}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/AchievementsClient;->reveal(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->achievement:Lcom/google/android/gms/games/achievement/Achievement;

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getTotalSteps()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "totalSteps : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Steps to set : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IReportProgressListener;->onSuccess()V

    :cond_1
    const-string p1, "Reported 0 steps. So, returning success instantly!"

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->client:Lcom/google/android/gms/games/AchievementsClient;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->achievement:Lcom/google/android/gms/games/achievement/Achievement;

    invoke-interface {v1}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/games/AchievementsClient;->setStepsImmediate(Ljava/lang/String;I)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/a;

    invoke-direct {v0, p2}, Lcom/voxelbusters/essentialkit/gameservices/a;-><init>(Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IReportProgressListener;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/b;

    invoke-direct {v0, p2}, Lcom/voxelbusters/essentialkit/gameservices/b;-><init>(Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IReportProgressListener;)V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->client:Lcom/google/android/gms/games/AchievementsClient;

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->achievement:Lcom/google/android/gms/games/achievement/Achievement;

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/games/AchievementsClient;->setSteps(Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    if-gez p1, :cond_5

    if-eqz p2, :cond_8

    new-instance p1, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    sget-object v0, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->InvalidInput:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    const-string v1, "Reported wrong progress value. Cannot be negative!"

    invoke-direct {p1, v0, v1}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IReportProgressListener;->onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    goto :goto_1

    :cond_5
    if-nez p1, :cond_6

    const-string p1, "This is not an incremental achievement. So just trying to reveal it as 100% progress was not sent as progress."

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->client:Lcom/google/android/gms/games/AchievementsClient;

    iget-object p2, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->achievement:Lcom/google/android/gms/games/achievement/Achievement;

    invoke-interface {p2}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/games/AchievementsClient;->reveal(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string p1, "Unlocking Achievement"

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->client:Lcom/google/android/gms/games/AchievementsClient;

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->achievement:Lcom/google/android/gms/games/achievement/Achievement;

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/AchievementsClient;->unlockImmediate(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->client:Lcom/google/android/gms/games/AchievementsClient;

    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->achievement:Lcom/google/android/gms/games/achievement/Achievement;

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/AchievementsClient;->unlockImmediate(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/c;

    invoke-direct {v0, p2}, Lcom/voxelbusters/essentialkit/gameservices/c;-><init>(Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IReportProgressListener;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/d;

    invoke-direct {v0, p2}, Lcom/voxelbusters/essentialkit/gameservices/d;-><init>(Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IReportProgressListener;)V

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_1

    :cond_7
    iget-object p2, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->achievement:Lcom/google/android/gms/games/achievement/Achievement;

    invoke-interface {p2}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/games/AchievementsClient;->unlock(Ljava/lang/String;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/voxelbusters/essentialkit/utilities/common/annotations/SkipInCodeGenerator;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Name : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Type : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->getType()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Description : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Total Steps : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->getTotalSteps()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Current Steps : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->getCurrentSteps()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Last Reported Date : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->getLastReportedDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Is Hidden : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->isHidden()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Is Revealed : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->isRevealed()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Is Unlocked : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;->isUnlocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
