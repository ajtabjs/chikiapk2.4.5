.class public final Lcom/voxelbusters/essentialkit/gameservices/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IFragmentResultListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/gameservices/k;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/gameservices/k;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/j;->a:Lcom/voxelbusters/essentialkit/gameservices/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ILandroid/content/Intent;Z)V
    .locals 2

    iget-object p2, p0, Lcom/voxelbusters/essentialkit/gameservices/j;->a:Lcom/voxelbusters/essentialkit/gameservices/k;

    iget-object p2, p2, Lcom/voxelbusters/essentialkit/gameservices/k;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IViewListener;

    new-instance p3, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    sget-object v0, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->Unknown:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    const-string v1, "Failed to launch view"

    invoke-direct {p3, v0, v1}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IViewListener;->onClose(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    const/16 p2, 0x2711

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/j;->a:Lcom/voxelbusters/essentialkit/gameservices/k;

    iget-object p1, p1, Lcom/voxelbusters/essentialkit/gameservices/k;->b:Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;->access$100(Lcom/voxelbusters/essentialkit/gameservices/GameLeaderboard;)Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->signOut()V

    :cond_0
    return-void
.end method
