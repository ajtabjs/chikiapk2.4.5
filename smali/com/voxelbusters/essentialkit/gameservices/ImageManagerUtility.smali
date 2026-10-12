.class public Lcom/voxelbusters/essentialkit/gameservices/ImageManagerUtility;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$loadImage$0(Landroid/app/Activity;Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ILoadAssetListener;Landroid/net/Uri;)V
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/images/ImageManager;->create(Landroid/content/Context;)Lcom/google/android/gms/common/images/ImageManager;

    move-result-object p0

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/d0;

    invoke-direct {v0, p1}, Lcom/voxelbusters/essentialkit/gameservices/d0;-><init>(Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ILoadAssetListener;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/common/images/ImageManager;->loadImage(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V

    return-void
.end method

.method public static loadImage(Landroid/app/Activity;Landroid/net/Uri;Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ILoadAssetListener;)V
    .locals 1

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/ImageManagerUtility$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lcom/voxelbusters/essentialkit/gameservices/ImageManagerUtility$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ILoadAssetListener;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
