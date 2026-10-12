.class public final Lcom/voxelbusters/essentialkit/appupdater/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/appupdater/IOnComplete;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/appupdater/IOnRequestUpdateInfoComplete;

.field public final synthetic b:Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;Lcom/voxelbusters/essentialkit/appupdater/IOnRequestUpdateInfoComplete;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/appupdater/a;->b:Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/appupdater/a;->a:Lcom/voxelbusters/essentialkit/appupdater/IOnRequestUpdateInfoComplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/Object;Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V
    .locals 3

    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I

    move-result p2

    new-instance v0, Lcom/voxelbusters/essentialkit/appupdater/UpdateInfo;

    invoke-direct {v0}, Lcom/voxelbusters/essentialkit/appupdater/UpdateInfo;-><init>()V

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/appupdater/a;->b:Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;

    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->installStatus()I

    move-result v2

    invoke-static {v1, p2, v2}, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;->access$000(Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;II)Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

    move-result-object p2

    iput-object p2, v0, Lcom/voxelbusters/essentialkit/appupdater/UpdateInfo;->status:Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

    sget-object v1, Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;->UpdateAvailable:Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

    if-ne p2, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->availableVersionCode()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, v0, Lcom/voxelbusters/essentialkit/appupdater/UpdateInfo;->buildTag:I

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/appupdater/a;->a:Lcom/voxelbusters/essentialkit/appupdater/IOnRequestUpdateInfoComplete;

    invoke-interface {p1, v0}, Lcom/voxelbusters/essentialkit/appupdater/IOnRequestUpdateInfoComplete;->onSuccess(Lcom/voxelbusters/essentialkit/appupdater/UpdateInfo;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/voxelbusters/essentialkit/appupdater/a;->a:Lcom/voxelbusters/essentialkit/appupdater/IOnRequestUpdateInfoComplete;

    invoke-interface {p1, p2}, Lcom/voxelbusters/essentialkit/appupdater/IOnRequestUpdateInfoComplete;->onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    :goto_1
    return-void
.end method
