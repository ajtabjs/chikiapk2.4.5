.class public interface abstract Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IPlayerAuthenticationListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/essentialkit/gameservices/IGameServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPlayerAuthenticationListener"
.end annotation


# virtual methods
.method public abstract onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V
.end method

.method public abstract onSuccess(Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;)V
.end method
