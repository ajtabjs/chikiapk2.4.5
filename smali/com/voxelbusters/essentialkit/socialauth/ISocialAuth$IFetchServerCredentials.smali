.class public interface abstract Lcom/voxelbusters/essentialkit/socialauth/ISocialAuth$IFetchServerCredentials;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/essentialkit/socialauth/ISocialAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IFetchServerCredentials"
.end annotation


# virtual methods
.method public abstract onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V
.end method

.method public abstract onSuccess(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/games/gamessignin/AuthScope;",
            ">;)V"
        }
    .end annotation
.end method
