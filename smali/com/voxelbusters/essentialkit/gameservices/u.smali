.class public final Lcom/voxelbusters/essentialkit/gameservices/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IFragmentResultListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/gameservices/v;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/gameservices/v;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/u;->a:Lcom/voxelbusters/essentialkit/gameservices/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ILandroid/content/Intent;Z)V
    .locals 2

    iget-object p2, p0, Lcom/voxelbusters/essentialkit/gameservices/u;->a:Lcom/voxelbusters/essentialkit/gameservices/v;

    iget-object p2, p2, Lcom/voxelbusters/essentialkit/gameservices/v;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IViewListener;

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    sget-object v0, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->Unknown:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    const-string v1, "Failed to launch view"

    invoke-direct {p3, v0, v1}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    :goto_0
    invoke-interface {p2, p3}, Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IViewListener;->onClose(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    const/16 p2, 0x2711

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/u;->a:Lcom/voxelbusters/essentialkit/gameservices/v;

    iget-object p1, p1, Lcom/voxelbusters/essentialkit/gameservices/v;->b:Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;->access$100(Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboards;)Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->signOut()V

    :cond_1
    return-void
.end method
