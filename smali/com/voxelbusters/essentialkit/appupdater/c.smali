.class public final Lcom/voxelbusters/essentialkit/appupdater/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/appupdater/IOnComplete;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/appupdater/PromptUpdateOptions;

.field public final synthetic b:Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;

.field public final synthetic c:Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;Lcom/voxelbusters/essentialkit/appupdater/PromptUpdateOptions;Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/appupdater/c;->c:Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/appupdater/c;->a:Lcom/voxelbusters/essentialkit/appupdater/PromptUpdateOptions;

    iput-object p3, p0, Lcom/voxelbusters/essentialkit/appupdater/c;->b:Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/Object;Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V
    .locals 3

    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    if-eqz p1, :cond_8

    .line 1
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/voxelbusters/essentialkit/appupdater/c;->c:Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;

    invoke-static {p1, p2}, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;->access$400(Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;I)Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    move-result-object p1

    iget-object p2, p0, Lcom/voxelbusters/essentialkit/appupdater/c;->b:Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;

    new-instance v0, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    const-string v1, "No update available"

    invoke-direct {v0, p1, v1}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;->onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    goto/16 :goto_3

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/voxelbusters/essentialkit/appupdater/c;->c:Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;

    invoke-static {p2}, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;->access$100(Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/play/core/appupdate/AppUpdateManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object p2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/appupdater/c;->a:Lcom/voxelbusters/essentialkit/appupdater/PromptUpdateOptions;

    iget-boolean v0, v0, Lcom/voxelbusters/essentialkit/appupdater/PromptUpdateOptions;->isForceUpdate:Z

    invoke-static {v0}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;->newBuilder(I)Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;->build()Lcom/google/android/play/core/appupdate/AppUpdateOptions;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->installStatus()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_4

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/appupdater/c;->a:Lcom/voxelbusters/essentialkit/appupdater/PromptUpdateOptions;

    iget-boolean v0, p1, Lcom/voxelbusters/essentialkit/appupdater/PromptUpdateOptions;->isForceUpdate:Z

    if-nez v0, :cond_2

    iget-boolean p1, p1, Lcom/voxelbusters/essentialkit/appupdater/PromptUpdateOptions;->allowInstallationIfDownloaded:Z

    if-eqz p1, :cond_3

    :cond_2
    invoke-interface {p2}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->completeUpdate()Lcom/google/android/gms/tasks/Task;

    :cond_3
    iget-object p1, p0, Lcom/voxelbusters/essentialkit/appupdater/c;->b:Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-interface {p1, p2}, Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;->onDownloadProgressUpdate(F)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->isUpdateTypeAllowed(Lcom/google/android/play/core/appupdate/AppUpdateOptions;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string p2, "Update type not allowed, alert fallback is being used instead of in-app update."

    invoke-static {p2}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/voxelbusters/essentialkit/appupdater/c;->c:Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;

    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->packageName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/appupdater/c;->a:Lcom/voxelbusters/essentialkit/appupdater/PromptUpdateOptions;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/appupdater/c;->b:Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;

    invoke-static {p2, p1, v0, v1}, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;->access$200(Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;Ljava/lang/String;Lcom/voxelbusters/essentialkit/appupdater/PromptUpdateOptions;Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;)V

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/voxelbusters/essentialkit/appupdater/c;->c:Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;

    invoke-static {v1}, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;->access$100(Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;)Landroid/app/Activity;

    move-result-object v1

    invoke-interface {p2, p1, v1, v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->startUpdateFlow(Lcom/google/android/play/core/appupdate/AppUpdateInfo;Landroid/app/Activity;Lcom/google/android/play/core/appupdate/AppUpdateOptions;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/appupdater/c;->c:Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/appupdater/c;->a:Lcom/voxelbusters/essentialkit/appupdater/PromptUpdateOptions;

    iget-boolean v2, v1, Lcom/voxelbusters/essentialkit/appupdater/PromptUpdateOptions;->allowInstallationIfDownloaded:Z

    if-nez v2, :cond_7

    iget-boolean v1, v1, Lcom/voxelbusters/essentialkit/appupdater/PromptUpdateOptions;->isForceUpdate:Z

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v1, 0x1

    :goto_2
    iget-object v2, p0, Lcom/voxelbusters/essentialkit/appupdater/c;->b:Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;

    invoke-static {v0, p2, v1, v2}, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;->access$300(Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;Lcom/google/android/play/core/appupdate/AppUpdateManager;ZLcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;)V

    new-instance p2, Lcom/voxelbusters/essentialkit/appupdater/b;

    invoke-direct {p2, p0}, Lcom/voxelbusters/essentialkit/appupdater/b;-><init>(Lcom/voxelbusters/essentialkit/appupdater/c;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/voxelbusters/essentialkit/appupdater/c;->b:Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;

    invoke-interface {p1, p2}, Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;->onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    :goto_3
    return-void
.end method
