.class public final Lcom/voxelbusters/essentialkit/gameservices/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IReportProgressListener;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IReportProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/b;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IReportProgressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->error(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/b;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IReportProgressListener;

    new-instance v0, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    sget-object v1, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->Unknown:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    const-string v2, "Unable to report progress! Try again later."

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IReportProgressListener;->onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    return-void
.end method
