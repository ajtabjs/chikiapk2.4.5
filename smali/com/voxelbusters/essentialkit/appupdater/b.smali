.class public final Lcom/voxelbusters/essentialkit/appupdater/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/appupdater/c;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/appupdater/c;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/appupdater/b;->a:Lcom/voxelbusters/essentialkit/appupdater/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Update flow completed with result : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/appupdater/b;->a:Lcom/voxelbusters/essentialkit/appupdater/c;

    iget-object v0, v0, Lcom/voxelbusters/essentialkit/appupdater/c;->b:Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;

    new-instance v1, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    sget-object v2, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;->Unknown:Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Installation failed due to unknown error : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;->onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/appupdater/b;->a:Lcom/voxelbusters/essentialkit/appupdater/c;

    iget-object p1, p1, Lcom/voxelbusters/essentialkit/appupdater/c;->b:Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;->onDownloadProgressUpdate(F)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/voxelbusters/essentialkit/appupdater/b;->a:Lcom/voxelbusters/essentialkit/appupdater/c;

    iget-object p1, p1, Lcom/voxelbusters/essentialkit/appupdater/c;->b:Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;

    new-instance v0, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    sget-object v1, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;->UpdateCancelled:Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    const-string v2, "User cancelled update."

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;->onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    :goto_0
    return-void
.end method
