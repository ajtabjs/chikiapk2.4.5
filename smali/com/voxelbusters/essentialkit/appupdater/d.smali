.class public final Lcom/voxelbusters/essentialkit/appupdater/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/install/InstallStateUpdatedListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;

.field public final synthetic b:Lcom/google/android/play/core/appupdate/AppUpdateManager;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;Lcom/google/android/play/core/appupdate/AppUpdateManager;ZLcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/appupdater/d;->d:Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;

    iput-object p4, p0, Lcom/voxelbusters/essentialkit/appupdater/d;->a:Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/appupdater/d;->b:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    iput-boolean p3, p0, Lcom/voxelbusters/essentialkit/appupdater/d;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateUpdate(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/google/android/play/core/install/InstallState;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->installStatus()I

    move-result v0

    const/16 v1, 0xb

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_0

    const-string p1, "Successfully downloaded the install and ready for restart!"

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/appupdater/d;->a:Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;

    invoke-interface {p1, v2}, Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;->onDownloadProgressUpdate(F)V

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/appupdater/d;->b:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/appupdater/d;->d:Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;->access$500(Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;)Lcom/google/android/play/core/install/InstallStateUpdatedListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->unregisterListener(Lcom/google/android/play/core/install/InstallStateUpdatedListener;)V

    iget-boolean p1, p0, Lcom/voxelbusters/essentialkit/appupdater/d;->c:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/appupdater/d;->b:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    invoke-interface {p1}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->completeUpdate()Lcom/google/android/gms/tasks/Task;

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Download progress "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->bytesDownloaded()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->totalBytesToDownload()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->totalBytesToDownload()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->bytesDownloaded()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->totalBytesToDownload()J

    move-result-wide v1

    long-to-float p1, v1

    div-float/2addr v0, p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object p1, p0, Lcom/voxelbusters/essentialkit/appupdater/d;->a:Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;

    invoke-interface {p1, v0}, Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;->onDownloadProgressUpdate(F)V

    goto :goto_2

    :cond_2
    const/4 p1, 0x5

    if-ne v0, p1, :cond_3

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/appupdater/d;->a:Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;

    new-instance v0, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    sget-object v1, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;->Unknown:Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    const-string v2, "Installation failed due to unknown error."

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    :goto_1
    invoke-interface {p1, v0}, Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;->onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/appupdater/d;->b:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/appupdater/d;->d:Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;->access$500(Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;)Lcom/google/android/play/core/install/InstallStateUpdatedListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->unregisterListener(Lcom/google/android/play/core/install/InstallStateUpdatedListener;)V

    goto :goto_2

    :cond_3
    const/4 p1, 0x6

    if-ne v0, p1, :cond_4

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/appupdater/d;->a:Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;

    new-instance v0, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    sget-object v1, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;->UpdateCancelled:Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    const-string v2, "Installation cancelled by the user."

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unhandled install status : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method
