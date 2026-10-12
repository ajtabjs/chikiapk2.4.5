.class public final Lcom/voxelbusters/essentialkit/gameservices/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IFragmentResultListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadPlayersListener;

.field public final synthetic b:Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadPlayersListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/w;->b:Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/gameservices/w;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadPlayersListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ILandroid/content/Intent;Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Result : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " IntentLaunchedSuccessfully : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Data : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/voxelbusters/essentialkit/utilities/Logger;->error(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/w;->b:Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;

    iget-object p2, p0, Lcom/voxelbusters/essentialkit/gameservices/w;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadPlayersListener;

    invoke-virtual {p1, p2}, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;->loadFriends(Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadPlayersListener;)V

    goto :goto_2

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/w;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadPlayersListener;

    if-eqz p1, :cond_3

    new-instance p2, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    if-nez p3, :cond_2

    sget-object p3, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->Unknown:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    const-string v0, "Failed to present consent"

    invoke-direct {p2, p3, v0}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object p3, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->NotAllowed:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    const-string v0, "Friends permission denied"

    invoke-direct {p2, p3, v0}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    :goto_1
    invoke-interface {p1, p2}, Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadPlayersListener;->onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    :cond_3
    :goto_2
    return-void
.end method
