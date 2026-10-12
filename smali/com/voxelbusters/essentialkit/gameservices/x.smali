.class public final Lcom/voxelbusters/essentialkit/gameservices/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IFragmentResultListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/gameservices/y;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/gameservices/y;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/x;->a:Lcom/voxelbusters/essentialkit/gameservices/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ILandroid/content/Intent;Z)V
    .locals 1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/x;->a:Lcom/voxelbusters/essentialkit/gameservices/y;

    iget-object p1, p1, Lcom/voxelbusters/essentialkit/gameservices/y;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IViewListener;

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/x;->a:Lcom/voxelbusters/essentialkit/gameservices/y;

    iget-object p1, p1, Lcom/voxelbusters/essentialkit/gameservices/y;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IViewListener;

    new-instance p2, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    sget-object p3, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->Unknown:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    const-string v0, "Failed presenting friend request view"

    invoke-direct {p2, p3, v0}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1, p2}, Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IViewListener;->onClose(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    return-void
.end method
