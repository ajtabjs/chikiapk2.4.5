.class public Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IFeature;


# instance fields
.field private context:Landroid/app/Activity;

.field private installStateUpdatedListener:Lcom/google/android/play/core/install/InstallStateUpdatedListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;->installStateUpdatedListener:Lcom/google/android/play/core/install/InstallStateUpdatedListener;

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;->context:Landroid/app/Activity;

    return-void
.end method

.method public static synthetic access$000(Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;II)Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;->getStatus(II)Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;->context:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;Ljava/lang/String;Lcom/voxelbusters/essentialkit/appupdater/PromptUpdateOptions;Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;->triggerWithAlert(Ljava/lang/String;Lcom/voxelbusters/essentialkit/appupdater/PromptUpdateOptions;Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;Lcom/google/android/play/core/appupdate/AppUpdateManager;ZLcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;->registerInstallListener(Lcom/google/android/play/core/appupdate/AppUpdateManager;ZLcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;I)Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;
    .locals 0

    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;->getErrorCodeForPromptUpdate(I)Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;)Lcom/google/android/play/core/install/InstallStateUpdatedListener;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;->installStateUpdatedListener:Lcom/google/android/play/core/install/InstallStateUpdatedListener;

    return-object p0
.end method

.method private getAppUpdateInfoTask()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/play/core/appupdate/AppUpdateInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;->context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/play/core/appupdate/AppUpdateManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->getAppUpdateInfo()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method private getErrorCodeForPromptUpdate(I)Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;->Unknown:Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    return-object p1

    :cond_0
    sget-object p1, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;->UpdateInProgress:Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    return-object p1

    :cond_1
    sget-object p1, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;->UpdateNotAvailable:Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    return-object p1
.end method

.method private getStatus(II)Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;
    .locals 1

    const/16 v0, 0xb

    if-ne p2, v0, :cond_0

    sget-object p1, Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;->UpdateDownloaded:Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

    return-object p1

    :cond_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    sget-object p1, Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;->Unknown:Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

    return-object p1

    :cond_1
    sget-object p1, Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;->UpdateInProgress:Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

    return-object p1

    :cond_2
    sget-object p1, Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;->UpdateAvailable:Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

    return-object p1

    :cond_3
    sget-object p1, Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;->UpdateNotAvailable:Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

    return-object p1
.end method

.method static synthetic lambda$requestUpdateInfoInternal$0(Lcom/voxelbusters/essentialkit/appupdater/IOnComplete;Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    invoke-interface {p0, p1, v1}, Lcom/voxelbusters/essentialkit/appupdater/IOnComplete;->onComplete(Ljava/lang/Object;Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    new-instance v0, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    sget-object v2, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;->UpdateInfoNotAvailable:Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "Failed fetching update info."

    :goto_0
    invoke-direct {v0, v2, p1}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {p0, v1, v0}, Lcom/voxelbusters/essentialkit/appupdater/IOnComplete;->onComplete(Ljava/lang/Object;Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    :goto_1
    return-void
.end method

.method static synthetic lambda$triggerWithAlert$2(Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance p1, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    sget-object p2, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;->UpdateCancelled:Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    const-string v0, "Update cancelled."

    invoke-direct {p1, p2, v0}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;->onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    return-void
.end method

.method private registerInstallListener(Lcom/google/android/play/core/appupdate/AppUpdateManager;ZLcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;)V
    .locals 1

    new-instance v0, Lcom/voxelbusters/essentialkit/appupdater/d;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/voxelbusters/essentialkit/appupdater/d;-><init>(Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;Lcom/google/android/play/core/appupdate/AppUpdateManager;ZLcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;)V

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;->installStateUpdatedListener:Lcom/google/android/play/core/install/InstallStateUpdatedListener;

    invoke-interface {p1, v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->registerListener(Lcom/google/android/play/core/install/InstallStateUpdatedListener;)V

    return-void
.end method

.method private requestUpdateInfoInternal(Lcom/voxelbusters/essentialkit/appupdater/IOnComplete;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxelbusters/essentialkit/appupdater/IOnComplete<",
            "Lcom/google/android/play/core/appupdate/AppUpdateInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;->getAppUpdateInfoTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater$$ExternalSyntheticLambda0;-><init>(Lcom/voxelbusters/essentialkit/appupdater/IOnComplete;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private triggerWithAlert(Ljava/lang/String;Lcom/voxelbusters/essentialkit/appupdater/PromptUpdateOptions;Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;->context:Landroid/app/Activity;

    const v3, 0x103006f

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p2, Lcom/voxelbusters/essentialkit/appupdater/PromptUpdateOptions;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p2, Lcom/voxelbusters/essentialkit/appupdater/PromptUpdateOptions;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-boolean v1, p2, Lcom/voxelbusters/essentialkit/appupdater/PromptUpdateOptions;->isForceUpdate:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater$$ExternalSyntheticLambda1;-><init>(Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;Lcom/voxelbusters/essentialkit/appupdater/PromptUpdateOptions;Ljava/lang/String;Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;)V

    const-string p1, "Update"

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-boolean p1, p2, Lcom/voxelbusters/essentialkit/appupdater/PromptUpdateOptions;->isForceUpdate:Z

    if-nez p1, :cond_0

    new-instance p1, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater$$ExternalSyntheticLambda2;

    invoke-direct {p1, p3}, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater$$ExternalSyntheticLambda2;-><init>(Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;)V

    const-string p2, "Cancel"

    invoke-virtual {v0, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public getFeatureName()Ljava/lang/String;
    .locals 1

    const-string v0, "In App Update"

    return-object v0
.end method

.method synthetic lambda$triggerWithAlert$1$com-voxelbusters-essentialkit-appupdater-AppUpdater(Lcom/voxelbusters/essentialkit/appupdater/PromptUpdateOptions;Ljava/lang/String;Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    iget-boolean p1, p1, Lcom/voxelbusters/essentialkit/appupdater/PromptUpdateOptions;->isForceUpdate:Z

    if-nez p1, :cond_0

    invoke-interface {p4}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    iget-object p1, p0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;->context:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/voxelbusters/essentialkit/utilities/ApplicationUtil;->openStorePage(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-interface {p3, p1}, Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;->onDownloadProgressUpdate(F)V

    return-void
.end method

.method public promptUpdate(Lcom/voxelbusters/essentialkit/appupdater/PromptUpdateOptions;Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;)V
    .locals 1

    new-instance v0, Lcom/voxelbusters/essentialkit/appupdater/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/voxelbusters/essentialkit/appupdater/c;-><init>(Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;Lcom/voxelbusters/essentialkit/appupdater/PromptUpdateOptions;Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;)V

    invoke-direct {p0, v0}, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;->requestUpdateInfoInternal(Lcom/voxelbusters/essentialkit/appupdater/IOnComplete;)V

    return-void
.end method

.method public requestUpdateInfo(Lcom/voxelbusters/essentialkit/appupdater/IOnRequestUpdateInfoComplete;)V
    .locals 1

    new-instance v0, Lcom/voxelbusters/essentialkit/appupdater/a;

    invoke-direct {v0, p0, p1}, Lcom/voxelbusters/essentialkit/appupdater/a;-><init>(Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;Lcom/voxelbusters/essentialkit/appupdater/IOnRequestUpdateInfoComplete;)V

    invoke-direct {p0, v0}, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;->requestUpdateInfoInternal(Lcom/voxelbusters/essentialkit/appupdater/IOnComplete;)V

    return-void
.end method
