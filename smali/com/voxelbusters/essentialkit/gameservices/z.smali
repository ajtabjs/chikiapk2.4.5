.class public final Lcom/voxelbusters/essentialkit/gameservices/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/socialauth/ISocialAuth$IFetchServerCredentials;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadServerCredentials;

.field public final synthetic b:Lcom/voxelbusters/essentialkit/gameservices/GameServices;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/gameservices/GameServices;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadServerCredentials;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/z;->b:Lcom/voxelbusters/essentialkit/gameservices/GameServices;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/gameservices/z;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadServerCredentials;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/z;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadServerCredentials;

    new-instance v1, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    invoke-virtual {p1}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;->getCode()I

    move-result v2

    sget-object v3, Lcom/voxelbusters/essentialkit/socialauth/GameAuthErrorCode;->ServerClientIdConfigurationMissing:Lcom/voxelbusters/essentialkit/socialauth/GameAuthErrorCode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->ConfigurationError:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->Unknown:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    :goto_0
    invoke-virtual {p1}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadServerCredentials;->onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/z;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadServerCredentials;

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/StringUtil;->getNonNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/gameservices/z;->b:Lcom/voxelbusters/essentialkit/gameservices/GameServices;

    invoke-static {v1, p2}, Lcom/voxelbusters/essentialkit/gameservices/GameServices;->access$000(Lcom/voxelbusters/essentialkit/gameservices/GameServices;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadServerCredentials;->onSuccess(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
