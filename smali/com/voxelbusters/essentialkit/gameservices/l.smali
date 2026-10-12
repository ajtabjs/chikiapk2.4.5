.class public final Lcom/voxelbusters/essentialkit/gameservices/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ISubmitScoreListener;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ISubmitScoreListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/l;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ISubmitScoreListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Score Submitted - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/l;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ISubmitScoreListener;

    invoke-interface {p1}, Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ISubmitScoreListener;->onSuccess()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error Submitting Score : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->error(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/l;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ISubmitScoreListener;

    new-instance v1, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    sget-object v2, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->Unknown:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    invoke-direct {v1, v2, p1}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ISubmitScoreListener;->onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    :goto_0
    return-void
.end method
